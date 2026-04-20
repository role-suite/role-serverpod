# 7. Deployment

## Local Infrastructure (Compose)

From repository root (`role-serverpod`):

```bash
docker compose up --build --detach
```

This starts Postgres and Redis for local/serverpod runtime usage.

## Server Startup

From `relay_server_server/`:

```bash
cp config/development.yaml.example config/development.yaml
cp config/passwords.yaml.example config/passwords.yaml
serverpod generate
dart bin/main.dart --apply-migrations
```

Then run normally:

```bash
dart bin/main.dart
```

## Docker Image

Build server image from `relay_server_server/`:

```bash
docker build -t relay-serverpod .
```

Run example:

```bash
docker run -p 8080:8080 -e runmode=production --env-file .env relay-serverpod
```

## Migrations

After table model changes:

```bash
cd relay_server_server
serverpod generate
serverpod create-migration
dart bin/main.dart --apply-migrations
```

## Production Checklist

- [ ] `config/production.yaml` has correct host/port/scheme.
- [ ] Secrets are injected securely (`passwords.yaml`, env vars).
- [ ] `RELAY_AUTH_TOKEN_SECRET` is set to a strong random value.
- [ ] `RELAY_RUNNER_ALLOW_PRIVATE_NETWORK` remains disabled unless explicitly required.
- [ ] Migrations are applied as part of deployment.
- [ ] Container runs as non-root user where possible.
- [ ] HTTPS is enforced at edge/reverse-proxy level.

## GitHub CI/CD

This repository includes two GitHub Actions workflows:

- `.github/workflows/ci.yml`: runs on pull requests and pushes to `main`; verifies formatting, analysis, tests, Serverpod code generation drift, and Docker build health.
- `.github/workflows/cd.yml`: runs on pushes to `main`, version tags (`v*.*.*`), or manual trigger; builds and publishes Docker images to GitHub Container Registry (`ghcr.io`).

Published image name:

```text
ghcr.io/<github-org-or-user>/role-serverpod
```

Tag strategy:

- `latest` on default branch pushes
- branch name tags (for branch pushes)
- semantic version tags when pushing `v*.*.*`
- commit SHA tag for traceability

### Required Repository Permissions

- Actions must be enabled.
- `GITHUB_TOKEN` needs package write access (default in workflow permissions).

### Pulling a Published Image

```bash
docker pull ghcr.io/<github-org-or-user>/role-serverpod:latest
```
