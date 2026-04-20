# Contributing to role-serverpod

Thanks for your interest in contributing.

## Development setup

1. Fork and clone the repository.
2. Start local services from repo root:

```bash
docker compose up --build --detach
```

3. Enter the server package:

```bash
cd relay_server_server
```

4. Install dependencies and run checks:

```bash
dart pub get
dart format lib test bin
dart analyze
dart test
```

## Contribution workflow

1. Create a branch from `main`.
2. Keep changes focused and include tests when behavior changes.
3. Update docs when APIs, env vars, or deployment behavior changes.
4. Open a pull request using the provided PR template.

## Pull request expectations

- CI must pass.
- Code should be formatted with `dart format`.
- New behavior should include tests where reasonable.
- Breaking changes should be clearly called out in the PR description.

## Commit style

Use concise, descriptive commit messages that explain intent.

Examples:

- `fix docker build for missing web directory`
- `add semver tag-based release versioning`

## Security

Do not open public issues for sensitive security reports. See `SECURITY.md`.
