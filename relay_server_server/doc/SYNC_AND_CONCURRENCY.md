# Sync Modes and Concurrency (Offline, Single-User, Teams)

This document describes how the Röle client and Relay Server support **offline-first** local file I/O, **single-user** backend sync, and future **team** usage without deadlocks on files or the database.

---

## 1. Three usage modes

| Mode | Who | Where data lives | Sync |
|------|-----|-------------------|------|
| **Offline** | User, no account or no network | Local device files only | None |
| **Single-user** | One user, one or more devices | Local files + backend (per user) | User’s devices ↔ server |
| **Team (future)** | Multiple users sharing the same workspace | Local files + backend (shared workspace) | All members ↔ server |

- **Offline**: Keep your current **file I/O** on the client. Read/write workspace (collections, requests, environments) from/to local files. No backend required. This stays a core feature.
- **Single-user**: User signs in; backend stores data **per userId**. Sync is “my devices ↔ server.” No sharing with other users; no risk of two users editing the same workspace at once.
- **Team (future)**: Multiple users share a workspace (e.g. same `workspaceId` or team id). Several users can update the same data; we need a clear strategy so **files and DB never deadlock** and conflicts are handled predictably.

---

## 2. Keeping local file I/O as a feature

- **Local files remain the source of truth when offline.** The app continues to read/write from device storage (e.g. one workspace file or a folder of files). No change required to that behavior.
- **When sync is enabled:**  
  - **Save to backend**: Serialize current in-memory state (or read from local files), call `pushWorkspace` (or granular endpoints). Optionally keep local files in sync after a successful push.  
  - **Load from backend**: Call `pullWorkspace` (or granular), merge or replace in-memory state, then **optionally write back to local files** so the next offline session has the latest data.  
- **Single-user**: One userId; one logical workspace per user on the server. No cross-user conflicts. Local file I/O and backend are two stores for the same user; you can treat local as cache or peer.

So: **offline = file I/O only; single-user = file I/O + backend, with local still usable when offline.**

---

## 3. Single-user backend (no deadlock)

- **Server**: All storage is keyed by **userId** (from `SessionHelper.getUserId(session)`). Each request runs in its own transaction; no long-lived locks across users. Single user ⇒ single writer per resource in practice.
- **Client**: Only one user’s data is synced. No shared workspace with another user.  
- **Files**: On a single device, only this app process should write the workspace files. Use **one writer at a time** (e.g. serialize all file writes on a single isolate or use a simple lock before write). Avoid opening the same file for write from multiple threads without coordination.  
- **DB**: Standard Serverpod/PostgreSQL: short transactions, no explicit cross-row locking. No deadlock risk for single-user usage.

So single-user stays simple: **local file I/O for offline; backend for sync; single writer on files; DB used normally.**

---

## 4. Future: teams and avoiding deadlocks

When more than one user can update the **same** workspace (team), we need to avoid deadlocks and define how conflicts are resolved.

### 4.1 Client (files)

- **Per-device**: Each user’s device has its **own** local files. There is no shared filesystem between users. So “file deadlock” is only about **one device** (e.g. multiple app instances or tabs writing the same file).
- **Recommendation**:  
  - **Single writer per file**: All writes to workspace files go through one layer that queues or serializes writes (e.g. one lock per file or per workspace).  
  - **Optional**: Use a small **lock file** (e.g. `.workspace.lock`) or advisory file lock: acquire before any write, release after. This prevents two processes/tabs from writing the same workspace at once and avoids corrupt state; no deadlock if you never hold multiple such locks at the same time (or use a single lock for the whole workspace).

So: **no shared files across users; on each device, single-writer or one lock per workspace to avoid file-level deadlock.**

### 4.2 Server (database)

- **Avoid DB deadlocks** by:  
  - **Short transactions**: Each endpoint does a small, quick transaction (read or write a few rows, then commit). No long-held locks.  
  - **Stable lock ordering**: If you ever need to lock multiple rows (e.g. in a future team feature), always lock in a **fixed order** (e.g. by (workspaceId, userId, resourceId) lexicographically). That prevents A→B and B→A lock ordering that causes deadlocks.  
  - **Optimistic concurrency**: Store a **version** or **updatedAt** on entities. On update, `WHERE id = ? AND version = ?` (or `updatedAt = ?`). If no row is updated, someone else changed it; return a conflict and let the client merge or refresh. This avoids long-held pessimistic locks and is the usual approach for multi-user editing.
- **Current backend**: All tables are keyed by **userId**. For teams you would introduce a **workspaceId** (or team id) and scope rows by (workspaceId, …). Same rules: short transactions, stable lock order if you lock multiple rows, optimistic concurrency for updates.

So: **short transactions, optional version/updatedAt checks, and consistent lock order in the future keep the DB free of deadlocks.**

### 4.3 Conflict resolution (teams)

- **Last-write-wins (LWW)**: Server stores `updatedAt`; the latest write wins. Simple but overwrites concurrent edits.  
- **Optimistic + refresh**: On conflict (version mismatch), client refetches, then reapplies user’s change or shows a conflict UI and lets the user choose.  
- **Merge / CRDT (later)**: For advanced team editing, you could store deltas or use CRDTs so concurrent edits merge without losing work. That’s a larger design; not required for the first team version.

Recommendation: **start with LWW or version-based optimistic updates** so teams can collaborate without deadlocks; refine to merge/CRDT later if needed.

---

## 5. Summary

| Concern | Offline | Single-user | Team (future) |
|---------|---------|-------------|---------------|
| **Local file I/O** | Yes, primary | Yes, + optional sync | Yes, per device |
| **Backend** | Not used | Per userId, one logical workspace | Per workspaceId, shared |
| **File deadlock** | Single writer per file/workspace on device | Same | Same (no shared files across users) |
| **DB deadlock** | N/A | Short transactions, per user | Short transactions, version/updatedAt, stable lock order |
| **Conflicts** | N/A | None (single user) | LWW or optimistic + refresh (then merge if needed) |

- **Keep** local file I/O for offline and as a feature for all users.  
- **Single-user** backend: keep data per userId; no special deadlock risk.  
- **Teams**: introduce workspace/team scoping, optimistic concurrency (version/updatedAt), and single-writer or one-lock-per-workspace for local files so that neither files nor the DB deadlock.

---

## 6. Backend changes for teams (when you add them)

- Add **workspaceId** (or team id) to tables; scope all reads/writes by (workspaceId, …).  
- Add **version** or **updatedAt** to entities used in team updates; in update endpoints, check version/updatedAt and return a conflict if it changed.  
- Keep transactions **short** and avoid locking multiple rows in different order across requests.  
- Optionally add **permissions** (e.g. who can edit which workspace) so only allowed users write; this doesn’t remove the need for optimistic concurrency.

The current API (workspace pull/push, collections/requests/environments CRUD) can stay; you’ll add workspace/team scoping and version checks when you implement team mode.
