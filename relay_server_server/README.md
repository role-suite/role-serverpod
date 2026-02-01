# relay_server_server

Serverpod backend for Röle (relay) API client. Provides workspace sync (pull/push) with persistence in PostgreSQL.

**Quick start (after clone):**

1. Generate code: `serverpod generate`
2. Copy config: `cp config/development.yaml.example config/development.yaml` and `cp config/passwords.yaml.example config/passwords.yaml` (set DB password)
3. From repo root: `docker compose up --build --detach`
4. Run server: `dart bin/main.dart --apply-migrations`

See [doc/RUNNING.md](doc/RUNNING.md) for full instructions and [doc/BACKEND_STRUCTURE_AND_API.md](doc/BACKEND_STRUCTURE_AND_API.md) for structure and API.
