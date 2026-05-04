# Migrating from v1 to v2

If you cloned the v1 quickstart (`claude-code-gtm-quickstart`), this doc explains what changed and how to port your work.

> **TL;DR:** v1 organized the workspace by lifecycle category (`marketing/{brand,content,demand-gen,product-marketing,swipe-file}/`). v2 organizes by knowledge type (Pattern A: `marketing/{icp,positioning,messaging,competitors,brand,goals,content/...}/`). Same outputs, different folder structure. Plus the `.claude/` runtime got a major overhaul.

---

## What changed

### Repo identity

| | v1 | v2 |
|---|---|---|
| GitHub repo | `claude-code-gtm-quickstart` | `claude-code-marketing-quickstart` (renamed; old URL auto-redirects ~1 year) |
| Positioning | "GTM context system" | "Marketing Quick Start — lean starter pack" |
| Audience framing | Marketing operator (generic) | In-house marketing team |

### Workspace folder shape

**v1 layout** (organized by lifecycle category):

```
marketing/
├── brand/
├── content/
├── demand-gen/
│   ├── paid-marketing/
│   └── lifecycle-marketing/
├── product-marketing/
└── swipe-file/
```

**v2 layout** (Pattern A — organized by knowledge type):

```
marketing/
├── CLAUDE.md           ← workspace context (NEW; personalized via /quickstart)
├── latest.md           ← delta cache (NEW)
├── history.md          ← ops log (NEW)
├── docs/               ← briefs, transcripts, source material
├── icp/                ← /icp-research output
├── positioning/        ← /positioning output
├── messaging/          ← /messaging output
├── competitors/        ← /competitor-research output
├── brand/              ← /brand-guidelines + /tov-guidelines
├── goals/              ← KPIs (manual)
└── content/
    ├── audit/          ← /content-audit
    ├── strategy/       ← /content-strategy + /content-ops
    └── execution/      ← /thought-leadership
```

### Skills, agents, commands

| | v1 | v2 |
|---|---|---|
| Skills | 9 (flat: `positioning/`, `icp-research/`, etc.) | 14 (nested: `research/...`, `primitives/product-marketing/...`) |
| Agents | 2 specialists (`competitor-researcher`, `market-researcher`) | 12 (3 role-agents + 9 specialists) |
| Commands | 5 (`/quickstart`, `/context-loop`, `/health-check`, `/learn`, `/next-steps`) | 15 (`/quickstart` + 14 skill-aligned) |
| Hooks | 0 | 0 (gated for paid tier) |
| Rules | 0 | 0 (Pattern A taught inline in CLAUDE.md) |

**Removed in v2:**
- `/context-loop` — was a sequential skill chain. Now you run skills individually (or use `/orchestrator` in the paid tier).
- `/health-check` — was a setup verification. Replaced by `/quickstart`'s built-in verification phase.
- `/learn` — was a meta skill for absorbing new sources. Gated for paid tier.
- `/next-steps` — was a session-end suggester. Replaced by the "Suggested first chain" in README + CLAUDE.md.
- `marketing/{brand,content,demand-gen,product-marketing,swipe-file}/` — replaced by Pattern A.
- Skills at flat paths (`.claude/skills/{positioning,icp-research,...}/`) — replaced by nested research/ + primitives/ structure.

**Added in v2:**
- `/quickstart` rewritten — now personalizes `marketing/CLAUDE.md` AND scaffolds Pattern A folders in one step.
- `marketing/CLAUDE.md` — your personalized workspace context (the file `/quickstart` writes to).
- `marketing/latest.md` and `history.md` — operational ops trail (manual updates).
- 9 new skills: `tov-guidelines`, `brand-kit`, `messaging` (was `product-messaging`), `product-launch`, `case-study`, `webinar`, `content-strategy`, `content-ops`, `content-audit`, `thought-leadership`.
- 12 agents (3 role-agents + 9 specialists) replacing the 2 v1 specialists.
- `INSTALL.md` — multi-runtime install guide for Cowork + claude.ai paths (in addition to Claude Code).

---

## Porting your v1 outputs

If you ran skills in v1 and want to keep their outputs in v2, here's the mapping:

| v1 path | v2 path |
|---|---|
| `marketing/product-marketing/0XYY-positioning.md` | `marketing/positioning/0XYY-positioning.md` |
| `marketing/product-marketing/0XYY-product-messaging.md` | `marketing/messaging/0XYY-messaging.md` |
| `context/0XYY-icp-research.md` | `marketing/icp/0XYY-icp-research.md` |
| `context/0XYY-competitor-{name}.md` | `marketing/competitors/0XYY-{name}.md` |
| `context/0XYY-company-context.md` | `marketing/docs/0XYY-company-context.md` |
| `marketing/brand/0XYY-tov-guidelines.md` | `marketing/brand/0XYY-tov-guidelines.md` (no change) |
| `marketing/brand/0XYY-brand-kit.md` | `marketing/brand/0XYY-brand-kit.md` (no change) |
| `marketing/content/0XYY-content-strategy.md` | `marketing/content/strategy/0XYY-content-strategy.md` |
| `marketing/swipe-file/0XYY-{source}-{pattern}.md` | (no v2 home — `/steal` is gated; archive locally if you want) |

### Suggested port flow

If you have a meaningful body of v1 outputs:

1. Clone v2 fresh into a new folder: `git clone https://github.com/matteotitta/claude-code-marketing-quickstart.git my-marketing-v2`
2. Run `/quickstart` in v2 to set up `marketing/CLAUDE.md`
3. Manually move your v1 outputs into the v2 Pattern A folders per the table above
4. Update `marketing/CLAUDE.md`'s "Canonical references" table to point at your ported files
5. Optionally: append a v1 → v2 entry to `marketing/history.md` documenting the migration date

If you only ran a few skills in v1 (e.g., just `/positioning` and `/icp-research`), it's faster to re-run them in v2 against your current company state — the v2 prompts have iterated since v1 and outputs will be sharper.

---

## Staying on v1

If you don't want to migrate:

```bash
git checkout v1.x  # if a v1.x tag exists; otherwise checkout the last v1 commit
```

The v1 layout still works as long as you don't `git pull`. The repo's `main` branch is now v2.

To pin yourself permanently to v1, fork the repo at the v1 commit and pull from your fork instead.

---

## Why the change

v1 organized by **lifecycle category** (brand, content, demand-gen, product-marketing) — the way agencies often organize work. v2 organizes by **knowledge type** (icp, positioning, messaging, competitors) — the way in-house marketing teams reference their canonical facts.

Pattern A turned out to be more useful in practice because:
1. **Skill outputs map 1:1 to folders** — easier for both humans and Claude to find them
2. **No category overlap confusion** — "is a webinar brief 'product-marketing' or 'demand-gen'?" goes away
3. **Goals + KPIs get a first-class home** — `marketing/goals/` is the file every skill should read first
4. **Explicit canonical references in CLAUDE.md** — the workspace's "what state are we in" is one read away
5. **Operational ops trail (latest.md + history.md)** — multi-session continuity that v1 lacked

The trade-off: v2 has more folders (10 vs 5), so the cognitive surface is slightly larger at first glance. But each folder maps cleanly to one skill, so you only need the folder when you need the skill.

---

## Questions or issues with the migration

Open an issue on [GitHub](https://github.com/matteotitta/claude-code-marketing-quickstart/issues) or reach out via [genesysgrowth.com](https://genesysgrowth.com).
