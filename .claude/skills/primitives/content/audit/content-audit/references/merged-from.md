---
name: merged-from
description: Audit log of skills merged into content-audit during Phase 2 refactor
---

# Merged-from log — content-audit

This log records skills absorbed into `content-audit` per Phase 2 of the skill refactor. Each entry preserves the loser's full body in `references/` and notes what was kept vs. dropped.

## Merge: content-check → content-audit (2026-04-29)

- **Loser:** `content-skills/content-strategy-skills/content-check/SKILL.md`
- **Audit row:** 10
- **Verdict:** MERGE → content-audit
- **Reasoning:** content-check is a pre-production BOFU signal validator (10 strategic intent signals → PASS/REVISE/REJECT verdict). content-audit handles published-content auditing. Same job-to-be-done — quality-check content — at different lifecycle stages. Consolidating eliminates the artificial pre-vs-post split.

### What was preserved

- Full content-check body retained at `references/content-check-merged-2026-04-29.md` (255 lines, 1597 words). Includes the 10 BOFU signals, scoring rubric, PASS/REVISE/REJECT verdict logic, examples.

### What was deliberately dropped

- Nothing dropped. Strict-superset preservation.

### Parameter-conditional graft

When invoking content-audit with `mode=pre_production`, the runner should apply the 10-signal BOFU validator from `references/content-check-merged-2026-04-29.md` instead of the published-content rubric in the main SKILL.md.

### Word-count parity

| | Pre-merge (words) | Post-merge (words) |
|---|---|---|
| Survivor body + own references | 15553 | 15553 |
| Loser body | 1597 | 1597 (in references/) |
| Merged-from log | — | ~150 |
| **Total** | **17150** | **17300+** |

Strict superset preserved.
