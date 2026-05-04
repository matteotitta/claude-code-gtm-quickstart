# Marketing Quick Start v2 — repo context

Welcome. This is the repo-level context loaded into every Claude Code session running in this Quick Start. It explains how the repo is laid out, where to look for what, and where the personalized workspace context lives (spoiler: not here — it lives at [`marketing/CLAUDE.md`](./marketing/CLAUDE.md)).

If this is your first session, run `/quickstart` to personalize the workspace.

If you don't use Claude Code, see [INSTALL.md](./INSTALL.md) for Cowork and claude.ai install paths.

---

## Two CLAUDE.md files — what's the difference

| File | Loaded into every session | Purpose |
|---|---|---|
| `/CLAUDE.md` (this file) | yes (always) | Repo-level meta — what's shipped, where things live, the marketing/ folder convention explained |
| `/marketing/CLAUDE.md` | yes (when working under `marketing/`) | **Your personalized workspace context** — your company, voice, ICP, canonical references to your skill outputs |

The `/quickstart` command personalizes `marketing/CLAUDE.md` (not this file). This file is the same for every user.

---

## What ships in this Quick Start

A lean starter pack — 14 skills + 12 agents + 15 commands. No hooks, no rules, no meta/orchestration. The full taxonomy stays gated for the paid/advanced tier (see [genesysgrowth.com](https://genesysgrowth.com)).

### Skills (14)

| Category | Skills |
|---|---|
| Research (5) | `company-context`, `competitor-research`, `icp-research`, `tov-guidelines`, `brand-kit` |
| PMM strategy + execution (5) | `positioning`, `messaging`, `product-launch`, `case-study`, `webinar` |
| Content (4) | `content-strategy`, `content-ops`, `content-audit`, `thought-leadership` |

Each skill lives at a path under `.claude/skills/` (research/ and primitives/ subfolders). The skill folder contains a `SKILL.md` (the prompt) and often a `references/` subfolder (templates, output formats, examples).

### Agents (12)

Three role-agents (`researcher`, `pmm`, `content`) + nine specialists (`market-researcher`, `competitor-researcher`, `brand-researcher`, `content-researcher`, `positioning-strategist`, `product-marketer`, `content-strategist`, `content-marketer`, `content-writer`).

Role-agents are dispatch routers. Specialists are tuned executors invoked when narrow expertise is needed.

### Commands (15)

`/quickstart` (onboarding) + one slash command per shipped skill. Type `/` in the Claude Code chat to see them all.

---

## The marketing/ folder convention

`marketing/` is a single workspace organized by knowledge type, not by lifecycle stage. Every skill output routes to a specific subfolder.

```
marketing/
├── CLAUDE.md           ← workspace context (personalized via /quickstart)
├── latest.md           ← ≤500-word delta cache (manual update)
├── history.md          ← append-only ops record (manual update)
├── docs/               ← briefs, transcripts, source material, misc skill outputs
├── icp/                ← /icp-research output
├── positioning/        ← /positioning output
├── messaging/          ← /messaging output
├── competitors/        ← /competitor-research output (one file per competitor + aggregate)
├── brand/              ← /brand-guidelines + /tov-guidelines outputs
├── goals/              ← KPIs (manual; read FIRST before producing any output)
└── content/            ← content lane with audit/strategy/execution sub-pattern
    ├── audit/          ← /content-audit output
    ├── strategy/       ← /content-strategy + /content-ops outputs
    └── execution/      ← /thought-leadership output (and other content drafts)
```

**Naming convention:** `MMYY-topic.md` for all skill outputs (e.g., `0526-icp-research.md` for May 2026 ICP research). System files (`CLAUDE.md`, `latest.md`, `history.md`, `README.md`) are exempt.

**Versioning:** when iterating within the same month, append `-v2`, `-v3` (e.g., `0526-positioning-v2.md`). New month = new MMYY prefix.

---

## How a session should run

1. **Open the repo in Claude Code** — `claude` in the terminal from the repo root
2. **Run `/quickstart` once on first install** — personalizes `marketing/CLAUDE.md`, scaffolds marketing/ folders if missing, runs a verification test
3. **Run skills as needed** — `/company-context`, `/positioning`, etc. Each saves output to the right `marketing/` subfolder
4. **Update `marketing/latest.md` after non-trivial work** — manual; the file is a 500-word delta cache so future sessions know "what state are we in"
5. **Append to `marketing/history.md` after non-trivial work** — manual; append-only audit trail

There is no auto-orchestration in the Quick Start. Skills run when you invoke them. Outputs save where you (or the skill's prompt) tell Claude to save them.

---

## Voice + quality conventions (apply to all outputs)

These are the conventions baked into shipped skill prompts and agent prose. They're loaded automatically because they appear in many skill SKILL.md files — but documenting them here for visibility:

### DO

- Pull context from `marketing/CLAUDE.md` and relevant skill outputs (the canonical references table) before producing any deliverable
- Use confidence levels on research: `[VERIFIED: source]`, `[INFERRED: from X + Y]`, `[ESTIMATED: reasoning]`, `[UNAVAILABLE]`
- Include source citations with URLs and access dates
- Mark missing data as `[UNAVAILABLE]` rather than inventing content
- Save outputs to the correct folder per the marketing/ folder convention

### DON'T

- Use corporate buzzwords: "innovative", "leverage", "synergy", "cutting-edge", "best-in-class", "next-generation", "disrupt", "empower", bare "solutions"
- Invent testimonials, metrics, or quotes — mark as `[UNAVAILABLE]` if missing
- Fabricate financial data, revenue figures, or funding amounts
- Skip source attribution on research claims
- Add excessive preamble or postamble to outputs

### Formatting

- Sentence case for all titles and bullets (never Title Case)
- Em dashes with spaces (` — `) used sparingly
- Short, punchy sentences with occasional longer explanatory ones
- Contractions used freely ("I'm", "you're", "it's")

---

## What's NOT here

The following capabilities stay gated:

- All `primitives/clients/` (discovery, onboarding, proposal, sales-call-playbook)
- All `primitives/social/` (18 LinkedIn/YouTube/newsletter skills)
- All `primitives/sales-enablement/` (battlecards, sales-deck, demo-script, one-pager, sales-tracks)
- All `primitives/lifecycle/` (email-nurture, lifecycle campaigns)
- All `primitives/outbound/` (cold email, ABM, lead scoring, list building, enrichment)
- All `primitives/paid-marketing/` (Google Ads, LinkedIn Ads, ad creative, paid strategy/audit)
- All `primitives/seo-aeo/` (AEO content/strategy, programmatic SEO, local SEO)
- All `primitives/website/` (wireframe, copy, full builds, audits, scoring)
- All `primitives/design/` (vibe coding, dashboards, Figma → React)
- All `meta/*` (orchestration, learning, session, catalog, infra — including `/orchestrator`, `/recall`, `/today`, `/wiki`, `/weekly-audit`, `/new-client`)
- All hooks (no automated catalog regen, output routing, naming enforcement, session indexing)
- All rules (the marketing/ folder convention is documented inline in this CLAUDE.md instead of auto-loaded from a rule file)

If you want any of those, see the advanced tier at [genesysgrowth.com](https://genesysgrowth.com).

---

## File map (top of repo)

| Path | Purpose |
|---|---|
| `CLAUDE.md` (this file) | Repo-level always-loaded context |
| `README.md` | First-time install + setup walkthrough |
| `INSTALL.md` | Multi-runtime install guide (Claude Code, Cowork, claude.ai) |
| `MIGRATION.md` | v1 → v2 port instructions (for users on the old `marketing/{brand,content,demand-gen,...}/` layout) |
| `marketing/` | The marketing/ workspace |
| `.claude/skills/` | 14 shipped skills (research/ + primitives/) |
| `.claude/agents/` | 12 shipped agents (3 role-agents + 9 specialists) |
| `.claude/commands/` | 15 shipped slash commands |
| `scripts/` | Sync script (re-pull from upstream master) + sanitize-check |
| `templates/` | CLAUDE.md and SKILL.md templates if you want to author your own |
| `docs/`, `examples/`, `context/` | v1 leftovers — being cleaned up; safe to delete if empty |
| `FAQ.md`, `SETUP-GUIDE.md` | v1 documentation — kept until v2 README absorbs them |
