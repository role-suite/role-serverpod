# Serverpod: A Senior Developer’s Guide

This guide explains **how Serverpod works** and **how to use it** from first principles, so you can design and evolve your backend with confidence.

---

## 1. What Serverpod Is (and When to Use It)

**Serverpod** is a **Dart-first backend framework** for building APIs and services. It gives you:

- **Typed RPC** – Clients call server methods like Dart functions; parameters and return types are shared and checked at compile time.
- **Code generation** – You define models and endpoints; Serverpod generates server code, client code, and serialization so you don’t hand-write HTTP or JSON.
- **Optional ORM** – Models can be backed by PostgreSQL tables with migrations and relations.
- **Session & auth** – Every call has a `Session` (DB, auth, secrets, logging) so you write business logic, not plumbing.

**Use Serverpod when:** You have a Dart/Flutter app (or any client that can speak HTTP + your protocol) and want a backend with shared types, generated client, and optional database. **Skip it when:** You need a different language on the server, or you prefer REST/OpenAPI and hand-written clients.

---

## 2. Architecture: The Three Pieces

| Piece | What it is | Where it lives |
|-------|------------|----------------|
| **Server** | Dart app that runs your endpoints and (optionally) talks to PostgreSQL/Redis. | `relay_server_server/` |
| **Protocol** | Shared “contract”: serializable models and the list of endpoints/methods. | Defined on server; **generated** in server + client. |
| **Client** | Dart package that exposes a `Client` and typed endpoint stubs. | `relay_server_client/` (generated from server) |

Flow:

1. You **define** models (YAML) and endpoints (Dart classes) on the **server**.
2. You run **`serverpod generate`** – it generates protocol code (server + client) and endpoint wiring.
3. Any Dart/Flutter app **depends on the client package** and calls e.g. `client.workspace.pullWorkspace()`.

The client does **not** implement business logic; it serializes arguments, sends HTTP to the server, deserializes the response. All logic lives on the server.

---

## 3. Core Concepts

### 3.1 Endpoints

**Endpoints** are the public API of your server. Each endpoint is a **Dart class** that extends `Endpoint`. The **name** of the endpoint is the class name with the `Endpoint` suffix removed (e.g. `GreetingEndpoint` → `greeting`).

Rules that matter:

- **First parameter must be `Session session`.** You get DB, auth, and logging from it.
- **Return type must be `Future<T>` or `Stream<T>`.** Serverpod generates client code from these signatures.
- **Parameter and return types** must be supported: primitives, `DateTime`, `UuidValue`, `ByteData`, `Uri`, `BigInt`, and **generated protocol types** (from your YAML models). You can also use `List<T>`, `Map<K,V>`, `Record`, `Set<T>` with supported element types.
- **Only public instance methods** are exposed. Private or static methods are not RPCs. If a method is public, it becomes a callable endpoint method.

Example (from this project):

```dart
class GreetingEndpoint extends Endpoint {
  Future<Greeting> hello(Session session, String name) async {
    return Greeting(message: 'Hello $name', author: 'Serverpod', timestamp: DateTime.now());
  }
}
```

On the client you get: `client.greeting.hello('World')` → `Future<Greeting>`.

**Best practice:** One endpoint per “domain” (e.g. `WorkspaceEndpoint`, `UserEndpoint`). Keep endpoints thin: delegate to services in `lib/src/features/<feature>/services/` so business logic is testable and reusable.

---

### 3.2 Session

`Session` is the **context of a single request**. Every endpoint method receives it as the first argument. It provides:

- **Database** – `session.db` (PostgreSQL) when the database is configured. Use it (or generated `*.db` on table rows) for queries and transactions.
- **Auth** – When using Serverpod auth modules, `session.auth` gives you the signed-in user (e.g. `userId`). Use it to scope data and enforce permissions.
- **Secrets** – `session.passwords` (from `config/passwords.yaml` or `SERVERPOD_PASSWORD_*` env vars). Use for API keys, DB passwords, etc.
- **Logging** – Logging helpers so you can correlate logs with the request.
- **Caches** – In-memory caches scoped to the request if you need them.

You do **not** create `Session` yourself; the framework creates it per call. Use it read-only for config/auth; use `session.db` and your domain code for side effects.

---

### 3.3 Protocol (Models and Serialization)

The **protocol** is the set of types that can be sent between client and server: primitives + **your serializable models**. Those models are defined in **YAML** (`.spy.yaml`), and Serverpod **generates** the Dart classes (and serialization) for both server and client.

- **Without `table:`** – Pure DTOs: used only for RPC arguments/return values. Example: `Greeting`, `WorkspaceBundle`.
- **With `table:`** – Same class is also a **database row**; you get a generated `*.db` API (e.g. `User.db.insertRow(session, user)`). Example: `class: User` with `table: user`.

Supported field types: `bool`, `int`, `double`, `String`, `DateTime`, `Duration`, `ByteData`, `UuidValue`, `Uri`, `BigInt`, and other protocol classes. You can use `List<T>`, `Map<String,T>`, `Set<T>`, and nullable (`?`). For enums, use the `enum:` definition in YAML; for “enum-like” values you can also use `String` and keep meaning in your app.

Example (from this project):

```yaml
# workspace/models/collection_model.spy.yaml
class: CollectionModel
fields:
  id: String
  name: String
  description: String
  createdAt: DateTime
  updatedAt: DateTime
```

After `serverpod generate`, you get a Dart class `CollectionModel` with `toJson`/`fromJson` and (if you add `table: collection`) DB helpers. The **same** class exists on the client so that `client.workspace.pullWorkspace()` returns a `WorkspaceBundle?` that contains `CollectionModel` instances.

**Best practice:** Use a feature-based layout: `lib/src/features/<feature>/models/` for YAML and `lib/src/features/<feature>/services/` for business logic; keep endpoints thin. Put shared helpers in `lib/src/core/`. Order models so that dependencies (e.g. `CollectionModel`) are defined before types that reference them (e.g. `CollectionBundle`). Run `serverpod generate` after any change to YAML or endpoint signatures.

---

## 4. The Workflow (Define → Generate → Use)

1. **Define models** – Add or edit `.spy.yaml` files under the server’s `lib/`. Use `class:`, `fields:`, and optionally `table:`.
2. **Define endpoints** – Add or edit Dart classes that extend `Endpoint` under the server’s `lib/`. Use `Session` as first parameter and protocol types (or supported built-ins) for args and return types.
3. **Generate** – From the **server** project root run:
   ```bash
   serverpod generate
   ```
   This updates:
   - Server: `lib/src/generated/protocol.dart`, `endpoints.dart`, and generated model files.
   - Client: client package’s protocol and `Client` + endpoint stubs (e.g. `client.workspace`).
4. **Use on the client** – In your Flutter/Dart app, add the client package as a dependency, then:
   ```dart
   final client = Client('https://your-server.com/');
   final bundle = await client.workspace.pullWorkspace();
   ```

Never edit generated files by hand; change YAML or endpoint code and regenerate.

---

## 5. Database (Tables, CRUD, Migrations)

When you add **`table: table_name`** to a model in YAML, Serverpod generates:

- A table with columns derived from the fields (and relations if you define them).
- A static `db` object on the class with methods like:
  - `insertRow(session, row)`, `insert(session, rows)`
  - `findById(session, id)`, `findFirstRow(session, where: ...)`, `find(session, where: ..., orderBy: ..., limit: ...)`
  - `updateRow(session, row)`, `deleteRow(session, row)`

You run **migrations** so the DB schema matches your models:

1. After changing table models, run:
   ```bash
   serverpod generate
   serverpod create-migration
   ```
2. Apply migrations when starting the server:
   ```bash
   dart bin/main.dart --apply-migrations
   ```

Migrations are generated from the diff between your current table definitions and the last migration. Never edit migration files by hand unless you know what you’re doing; prefer changing the YAML and creating a new migration.

**Best practice:** Use tables for persistent, queryable data (users, workspaces, etc.). Use non-table protocol classes for request/response DTOs (e.g. `WorkspaceBundle` for sync payloads).

---

## 6. Configuration and Secrets

- **Run mode** – Server runs in a **mode**: `development`, `staging`, `production`, or `test`. It picks the config file by name: `config/development.yaml`, etc. Set via `--mode` or `SERVERPOD_RUN_MODE`.
- **Config files** – In `config/<mode>.yaml` you set:
  - `apiServer`: port, `publicHost`, `publicPort`, `publicScheme` (so clients know the base URL).
  - `database`: host, port, name, user (and optionally Redis).
  - Other options (logging, web server, etc.) as needed.
- **Secrets** – In `config/passwords.yaml` (do **not** commit real secrets; use env in CI/production) you set per-mode secrets, e.g. `database` password. You can also use environment variables: `SERVERPOD_PASSWORD_<key>`. Access in code via `session.passwords['key']`.

**Best practice:** Keep `config/passwords.yaml` out of version control (e.g. in `.gitignore`). Use `config/development.yaml` for local overrides and document required keys in a `config/development.yaml.example` or in RUNNING.md.

---

## 7. Auth, Streaming, Files (Pointers)

- **Auth** – Use an auth module (e.g. `serverpod_auth_email`, `serverpod_auth_google`). It attaches user identity to the session; you then use `session.auth` in endpoints to get `userId` and enforce permissions. Your workspace endpoint’s `_getUserId(session)` is the place to plug this in.
- **Streaming** – Endpoint methods can return `Stream<T>`; Serverpod supports streaming RPC. Use when you need server push or large/continuous data.
- **Files** – For large binaries use the file upload/upload API (documented on serverpod.dev) instead of putting huge blobs in protocol types.

---

## 8. Best Practices and Gotchas

- **Endpoint method signature** – First parameter must be `Session`; return type must be `Future<T>` or `Stream<T>`. Otherwise the method is not generated on the client.
- **Naming** – Endpoint class `XxxEndpoint` becomes endpoint name `xxx`. Method names become the RPC method names (e.g. `pullWorkspace` → `client.workspace.pullWorkspace()`).
- **Don’t expose helpers as RPCs** – Use private or static methods for internal helpers so they don’t become endpoint methods.
- **Protocol types only** – Endpoint parameters and return types must be protocol types or built-in supported types. No arbitrary Dart classes unless they’re in the protocol (via YAML or `extraClasses` in generator config).
- **Regenerate after changes** – Any change to `.spy.yaml` or to public endpoint method signatures requires `serverpod generate` so server and client stay in sync.
- **Client package path** – By default the client is expected at `../<server_name>_client` (e.g. `../relay_server_client`). You can override this in `config/generator.yaml` with `client_package_path`.
- **Versioning** – When you add or remove fields or endpoints, consider backward compatibility: optional fields, nullable returns, and not deleting existing endpoint methods until clients are updated.

---

## 9. Quick Reference

| Task | Command or location |
|------|----------------------|
| Generate protocol + client | `serverpod generate` (from server root) |
| Create DB migration | `serverpod create-migration` |
| Run server with migrations | `dart bin/main.dart --apply-migrations` |
| Run mode | `--mode development` (default) or set in config |
| Define a model | Add/edit `.spy.yaml` under `lib/`, then generate |
| Define an endpoint | Dart class extending `Endpoint` under `lib/`, then generate |
| Use on client | `Client('https://host/')` then e.g. `client.workspace.pullWorkspace()` |
| Secrets | `config/passwords.yaml` or `SERVERPOD_PASSWORD_*`; use `session.passwords['key']` |

---

## 10. Learn More

- **Official docs:** [docs.serverpod.dev](https://docs.serverpod.dev) – concepts, database, auth, deployment.
- **This project:** See [BACKEND_STRUCTURE_AND_API.md](BACKEND_STRUCTURE_AND_API.md) for this server’s structure and API, and [RUNNING.md](RUNNING.md) for how to run it.

Once you internalize “define in YAML + Dart → generate → use from client,” the rest is details and conventions. This guide gives you that mental model and the main levers so you can use Serverpod like a senior developer.
