# Marketing — operations history

Append-only audit trail. Add entries at the top (newest first). Never modify existing entries — corrections go as new entries that reference the prior date.

**Format:** `## [YYYY-MM-DD] {operation} | {subject}` then 1-3 sentence summary + file path.

**Operations vocabulary:**
- `ingest` — new source material absorbed (transcript, deck, brief)
- `run` — scheduled skill or agent completed
- `lock` — output moved to canonical/locked state (team-approved)
- `unlock` — previously locked output opened for revision
- `review` — gate review attempted (record pass/fail)
- `decision` — non-trivial direction change

**What NOT to log:** trivial edits, typo fixes, file renames. Only operations that would matter to future-you or a future session trying to understand the engagement.

---

## [YYYY-MM-DD] {operation} | {subject}

[1-3 sentence summary. File: path/to/file.md]

## [YYYY-MM-DD] {operation} | {subject}

[1-3 sentence summary. File: path/to/file.md]

---

> **How to use this file:** every non-trivial skill run, lock, or decision gets an entry. Append at the top. Once entries scroll off the bottom of `latest.md` (which trims to 500 words), they live here permanently as the audit trail. Use `grep` to find specific operations: `grep "## \[2026-05" history.md` finds all May 2026 entries.
