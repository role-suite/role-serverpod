# Relay Server – Backend Structure & API Design

This document describes the structure and API of the Serverpod backend that serves the **Röle** (relay) Flutter API client. The backend enables **workspace sync**, **multi-device access**, and (optionally) **sharing/collaboration**.

---

## 1. Project Folder Structure (feature-based / clean architecture)

```
relay_server_server/
├── bin/
│   └── main.dart
├── lib/
│   ├── server.dart
│   └── src/
│       ├── core/                       # Shared across features
│       │   └── session_helper.dart      # Auth/session helpers (e.g. getUserId)
│       ├── features/
│       │   ├── collections/             # Collections feature (all in one folder)
│       │   │   ├── models/
│       │   │   │   ├── collection_model.spy.yaml
│       │   │   │   └── stored_collection.spy.yaml
│       │   │   ├── data/
│       │   │   │   └── collection_repository.dart
│       │   │   └── collections_endpoint.dart
│       │   ├── environments/            # Environments feature (all in one folder)
│       │   │   ├── models/
│       │   │   │   ├── environment_model.spy.yaml
│       │   │   │   └── stored_environment.spy.yaml
│       │   │   ├── data/
│       │   │   │   └── environment_repository.dart
│       │   │   └── environments_endpoint.dart
│       │   ├── greetings/               # Greeting domain (example)
│       │   │   ├── greeting_endpoint.dart
│       │   │   └── greeting.spy.yaml
│       │   ├── requests/                # Requests feature (all in one folder)
│       │   │   ├── models/
│       │   │   │   ├── api_request_model.spy.yaml
│       │   │   │   └── stored_request.spy.yaml
│       │   │   ├── data/
│       │   │   │   └── request_repository.dart
│       │   │   └── requests_endpoint.dart
│       │   └── workspace/               # Workspace sync (full bundle)
│       │       ├── models/             # Workspace-specific: bundle + stored bundle
│       │       │   ├── workspace_bundle.spy.yaml
│       │       │   ├── collection_bundle.spy.yaml
│       │       │   └── stored_workspace.spy.yaml
│       │       ├── data/
│       │       │   └── workspace_repository.dart
│       │       └── workspace_endpoint.dart
│       └── generated/                  # Auto-generated, not in Git (see below)
│           ├── endpoints.dart
│           ├── protocol.dart
│           ├── protocol.yaml
│           └── features/
│               ├── greetings/
│               │   └── greeting.dart
│               └── workspace/
│                   └── models/
│                       ├── workspace_bundle.dart
│                       ├── collection_bundle.dart
│                       ├── collection_model.dart
│                       ├── api_request_model.dart
│                       └── environment_model.dart
├── config/                             # Optional: development.yaml, passwords.yaml
├── test/
│   └── integration/
│       └── greeting_endpoint_test.dart
└── doc/
    └── BACKEND_STRUCTURE_AND_API.md
```

**Conventions:**

- **Feature-based layout** under `lib/src/features/<feature>/`: one folder per feature; **everything for that feature** (models, data/repository, endpoint) lives inside that folder (e.g. `environments/models/`, `environments/data/`, `environments_endpoint.dart`).
- **Core** under `lib/src/core/`: shared helpers (e.g. `SessionHelper.getUserId`) used by multiple features.
- **Per feature:** `models/` (`.spy.yaml`), optional `data/` (repositories), and a thin `*_endpoint.dart` that delegates to the feature’s repository.
- **Endpoint** = one class per feature (e.g. `WorkspaceEndpoint`) in `*_endpoint.dart`; keep endpoints thin and move logic into services.
- **Protocol models** = one `.spy.yaml` per class; Serverpod generates Dart under `generated/`.
- **Protocol (endpoints)** = `protocol.yaml` in `generated/` lists endpoint methods (updated by `serverpod generate`).

**Generated code and Git**

- `lib/src/generated/` is in **`.gitignore`** and is **not committed**. It is recreated by running `serverpod generate` from the server project root.
- After cloning the repo, run `cd relay_server_server && serverpod generate` so the server has `generated/` and (if configured) the `relay_server_client` package gets its generated `lib/src/protocol/` code.
- See [RUNNING.md](RUNNING.md) for full setup and “After clone” steps.

---

## 2. API Endpoints

### 2.1 Workspace endpoint (`workspace`)

Purpose: sync the full Röle workspace (collections + requests + environments) per user.

| Method | Description | Parameters | Returns |
|--------|-------------|------------|--------|
| `pullWorkspace` | Get the user's workspace from the server. | (session) | `WorkspaceBundle?` |
| `pushWorkspace` | Save the user's workspace to the server. | (session, `WorkspaceBundle`) | `void` or `bool` (success) |

- **Auth:** Use Serverpod’s built-in auth (e.g. email) so `session` is tied to a user. Unauthenticated calls can return `null` or reject.
- **Idempotency:** `pushWorkspace` overwrites the server state for that user with the provided bundle (full replace).
- **Workspace vs granular:** Full sync uses the `workspace` endpoint (StoredWorkspace table). Granular CRUD uses `collections`, `requests`, and `environments` (StoredCollection, StoredRequest, StoredEnvironment tables). The two stores are independent; the client can use either full sync or granular endpoints (or both, if it keeps them in sync).

### 2.2 Collections endpoint (`collections`)

CRUD for collections per user. Data is stored in `stored_collection` (userId, collectionId, name, description, createdAt, updatedAt).

| Method | Description | Parameters | Returns |
|--------|-------------|------------|--------|
| `list` | List all collections for the user. | (session) | `List<CollectionModel>` |
| `get` | Get one collection by id. | (session, `collectionId`) | `CollectionModel?` |
| `create` | Create a collection. | (session, `CollectionModel`) | `void` |
| `update` | Update a collection. | (session, `CollectionModel`) | `void` |
| `delete` | Delete a collection by id. | (session, `collectionId`) | `void` |

### 2.3 Requests endpoint (`requests`)

CRUD for requests per user, scoped by collection. Data is stored in `stored_request` (userId, collectionId, requestId, data as ApiRequestModel JSON).

| Method | Description | Parameters | Returns |
|--------|-------------|------------|--------|
| `list` | List all requests in a collection. | (session, `collectionId`) | `List<ApiRequestModel>` |
| `get` | Get one request by id. | (session, `requestId`) | `ApiRequestModel?` |
| `create` | Create a request. | (session, `ApiRequestModel`) | `void` |
| `update` | Update a request. | (session, `ApiRequestModel`) | `void` |
| `delete` | Delete a request by id. | (session, `requestId`) | `void` |

### 2.4 Environments endpoint (`environments`)

CRUD for environments per user. Data is stored in `stored_environment` (userId, name, variables).

| Method | Description | Parameters | Returns |
|--------|-------------|------------|--------|
| `list` | List all environments for the user. | (session) | `List<EnvironmentModel>` |
| `get` | Get one environment by name. | (session, `name`) | `EnvironmentModel?` |
| `create` | Create an environment. | (session, `EnvironmentModel`) | `void` |
| `update` | Update an environment. | (session, `EnvironmentModel`) | `void` |
| `delete` | Delete an environment by name. | (session, `name`) | `void` |

### 2.5 Auth (recommended)

- Use Serverpod’s **auth** module (e.g. `serverpod_auth_email`) so every request has a `userId` in the session.
- User id is centralized in **`SessionHelper.getUserId(session)`** (`lib/src/core/session_helper.dart`). Replace the placeholder implementation with `session.auth?.userId` when auth is enabled; `pullWorkspace` / `pushWorkspace` key storage by that id.

---

## 3. Protocol Models (aligned with Röle)

These mirror the Röle client models so the Flutter app can reuse the same shapes (or map easily).

| Model | Purpose |
|-------|--------|
| `WorkspaceBundle` | Root: `version`, `exportedAt`, `collections`, `environments`, `source?` |
| `CollectionBundle` | One collection + its requests: `collection`, `requests` |
| `CollectionModel` | `id`, `name`, `description`, `createdAt`, `updatedAt` |
| `ApiRequestModel` | Request: `id`, `name`, `method`, `urlTemplate`, `headers`, `queryParams`, `body`, `bodyType`, `formDataFields`, `authType`, `authConfig`, `description`, `filePath`, `collectionId`, `environmentName`, `createdAt`, `updatedAt`. Enums as `String` (e.g. `get`, `post`, `raw`, `bearer`). |
| `EnvironmentModel` | `name`, `variables` (Map<String, String>) |

- **Enums:** In `.spy.yaml` use `String` for `method`, `bodyType`, `authType`; Röle and server agree on values (e.g. `get`, `post`, `raw`, `bearer`).

---

## 4. Data Flow (high level)

```
Röle (Flutter)                relay_server_server (Serverpod)
─────────────────────────────────────────────────────────────
Local storage  ←── sync ──→   WorkspaceEndpoint
     │                              │
     │                        WorkspaceRepository
     │                        → StoredWorkspace table (PostgreSQL)
     │                        keyed by userId
     └── optional: merge on pull (e.g. last-write-wins)
```

- **Push:** Client sends `WorkspaceBundle`; server replaces stored workspace for that user.
- **Pull:** Server returns stored `WorkspaceBundle` for that user (or `null` if none).
- Röle keeps using local storage as source of truth; sync is an optional layer that calls `pullWorkspace` / `pushWorkspace` when the user enables “Sync with account”.

---

## 5. Implementation Order

1. **Protocol models** – Add or edit `.spy.yaml` under `lib/src/features/<feature>/models/`; run `serverpod generate` (creates `lib/src/generated/`; not committed).
2. **Endpoint + repository** – Add `*_endpoint.dart` (thin: delegate to a repository) and optional `data/*.dart` (e.g. `WorkspaceRepository`). Run `serverpod generate` so the endpoint is registered.
3. **Storage** – Implement get/set by userId in a repository (e.g. `WorkspaceRepository`) using the `StoredWorkspace` table; run `serverpod create-migration` and apply migrations on startup (`--apply-migrations`).
4. **Auth** – Wire Serverpod auth; in `SessionHelper.getUserId(session)` return `session.auth?.userId` so workspace methods are keyed by user.
5. **Röle client** – In the Röle app, add `relay_server_client` (after running `serverpod generate` so the client has generated code if it’s gitignored), then call `pushWorkspace` / `pullWorkspace` and map to Röle’s local models.

---

## 6. Röle Client Integration (implementation)

### 6.1 Add the client package to Röle

In the Röle (relay) Flutter project, add `relay_server_client` as a dependency:

```yaml
# relay/pubspec.yaml
dependencies:
  relay_server_client:
    path: ../role-server/relay_server_client   # or absolute path to relay_server_client
```

- If **generated code is gitignored** (server `lib/src/generated/` and optionally client `lib/src/protocol/`), run **`serverpod generate`** from `relay_server_server/` first so the client package has its generated code, then run `flutter pub get` in the relay project.
- Otherwise run `flutter pub get` in the relay project.

### 6.2 Create a sync service in Röle

- **New service** (e.g. `lib/core/services/workspace_sync_service.dart`) that:
  - Instantiates `Client('https://your-server.com')` (or `http://localhost:8080` for dev).
  - **Push:** Builds a `WorkspaceBundle` from current local data (collections, requests, environments) using the same shape as `WorkspaceBundle` / `CollectionBundle` / `ApiRequestModel` / `EnvironmentModel` from `relay_server_client`. Calls `client.workspace.pushWorkspace(bundle)`.
  - **Pull:** Calls `client.workspace.pullWorkspace()`, then overwrites (or merges) local storage with the returned bundle.
- **Mapping:** The server protocol types (`relay_server_client`’s `WorkspaceBundle`, `ApiRequestModel`, etc.) use the same field names as Röle’s models, but the server uses `String` for `method`, `bodyType`, and `authType` (Röle uses enums). Add a thin mapper in Röle that:
  - **Push:** Builds protocol `WorkspaceBundle` from Röle’s local data (e.g. `method: request.method.name`, `bodyType: request.bodyType.name`).
  - **Pull:** Converts protocol `WorkspaceBundle` back to Röle’s models (e.g. `HttpMethodX.fromString(protocolRequest.method)`).
  - You can centralize this in a `WorkspaceSyncMapper` or similar in the Röle app.

### 6.3 When to call sync

- **Push:** On “Save to cloud” button, or on a timer / after edits when “Auto-sync” is on.
- **Pull:** On app start (if user is “signed in” to sync), or on “Load from cloud” button.
- Keep **local storage as source of truth** when offline; sync when online.

### 6.4 Auth (later)

- When you add Serverpod auth (e.g. `serverpod_auth_email`), the session will have a user id; `pullWorkspace` / `pushWorkspace` will then be per user.
- In Röle, sign in via the same auth flow and pass the session (or auth headers) so the client uses the authenticated session for `client.workspace` calls.

---

This gives you a clear structure, a minimal API (workspace pull/push), and a path to implement the backend and integrate it into Röle.

**See also:** [SYNC_AND_CONCURRENCY.md](SYNC_AND_CONCURRENCY.md) for offline file I/O, single-user sync, future team usage, and how to avoid deadlocks on files and the database.
