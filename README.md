# Genesys Claude Code Marketing Quickstart

A lean, opinionated starter pack for marketing teams running their GTM in Claude Code or Cowork.

**11 skills · 12 agents · 13 commands · single `marketing/` workspace.**

Built by [Matteo Tittarelli](https://www.linkedin.com/in/matteotittarelli/) (Genesys Growth) for in-house marketing teams who want a working starting point — not a 100-skill kitchen sink.

---

## What this is

Two derivatives, one source of truth:

| Runtime | What you install | Where the install guide lives |
|---|---|---|
| **Claude Code** | This repo (`git clone`) | This README + [`CLAUDE.md`](./CLAUDE.md) |
| **Cowork** | Plugin via marketplace OR drag-zip | [`INSTALL.md`](./INSTALL.md) → Path B |

If you don't know which to pick, see the decision tree at the top of [`INSTALL.md`](./INSTALL.md).

---

## How it fits together

```
                ┌─────────────────────────────────────────────────────────────┐
                │  marketing/  (the workspace folder — your knowledge base)   │
                │  ├── icp/  positioning/  messaging/  competitors/  brand/   │
                │  ├── docs/  goals/  history.md  latest.md  CLAUDE.md        │
                │  └── content/{audit, strategy, execution}/                  │
                └────────────────────────┬────────────────────────────────────┘
                                         │ feeds context into
                                         ▼
                ┌─────────────────────────────────────────────────────────────┐
                │  context  (CLAUDE.md + skill outputs already on disk)       │
                │  → loaded automatically when you start a session            │
                └────────────────────────┬────────────────────────────────────┘
                                         │ informs
                                         ▼
                ┌─────────────────────────────────────────────────────────────┐
                │  skills  (11 prompts in .claude/skills/)                    │
                │  invoked via slash commands → /icp-research, /positioning…  │
                └────────────────────────┬────────────────────────────────────┘
                                         │ produces
                                         ▼
                ┌─────────────────────────────────────────────────────────────┐
                │  artifacts / outputs  (saved as MMYY-topic.md back into     │
                │  marketing/{folder}/ — closing the loop)                    │
                └─────────────────────────────────────────────────────────────┘
```

**The loop:** your `marketing/` folder holds your work. Every Claude Code session loads it as context. You invoke skills via slash commands. Skill outputs save back into `marketing/{folder}/` — building up the context for the next run.

---

## Quick install (Claude Code)

```bash
git clone https://github.com/matteotitta/claude-code-marketing-quickstart.git my-marketing-workspace
cd my-marketing-workspace
claude
```

Then in the Claude Code chat:

```
/quickstart
```

This personalizes `marketing/CLAUDE.md` with your company name, voice, and ICP, then verifies the `marketing/` folder scaffold. Five minutes.

For Cowork, see [`INSTALL.md`](./INSTALL.md).

---

## The marketing/ folder convention

Your skill outputs land in `marketing/` — a single workspace organized by knowledge type, not by lifecycle stage.

```
marketing/
├── CLAUDE.md           ← workspace context (personalized via /quickstart)
├── latest.md           ← ≤500-word delta cache
├── history.md          ← append-only ops record
├── docs/               ← briefs, transcripts, source material
├── icp/                ← /icp-research output
├── positioning/        ← /positioning output
├── messaging/          ← /messaging output
├── competitors/        ← /competitor-research output
├── brand/              ← /brand-kit + /tov-guidelines
├── goals/              ← KPIs (manual)
└── content/
    ├── audit/          ← /content-audit
    ├── strategy/       ← /content-strategy
    └── execution/      ← /thought-leadership
```

**Naming:** `MMYY-topic.md` (e.g., `0526-icp-research.md`). System files (`CLAUDE.md`, `latest.md`, `history.md`, `README.md`) are exempt.

Full folder convention docs live in [`CLAUDE.md`](./CLAUDE.md). Each `marketing/{folder}/` ships with its own `README.md` explaining what goes inside.

---

## What's inside

### 11 skills

| Category | Skills |
|---|---|
| **Research** (5) | `company-context` · `competitor-research` · `icp-research` · `tov-guidelines` · `brand-kit` |
| **PMM strategy** (3) | `positioning` · `messaging` · `product-launch` |
| **Content** (3) | `content-strategy` · `content-audit` · `thought-leadership` |

Each skill ships with a `SKILL.md` (the prompt) and a `references/` folder (templates, output formats, worked examples on real public companies — Linear, Vercel, Cursor, Lovable, Perplexity, Notion, Strapi, Gamma, Sierra). Skills live under `.claude/skills/`.

### 12 agents

- **Role-agents** (3): `researcher`, `pmm`, `content` — dispatch routers
- **Specialists** (9): `market-researcher`, `competitor-researcher`, `brand-researcher`, `content-researcher`, `positioning-strategist`, `product-marketer`, `content-strategist`, `content-marketer`, `content-writer` — tuned executors invoked when narrow expertise is needed

### 13 commands

`/quickstart` (onboarding) + 11 skill-aligned commands (`/positioning`, `/messaging`, `/brand-kit`, etc.) + `/content-audit`. Type `/` in Claude Code chat to see them all.

---

## Suggested first chain (30 minutes)

After `/quickstart` finishes, run these in order:

1. `/company-context` — your firmographics + qualification posture
2. `/competitor-research` — top 2-3 competitors, run one-by-one
3. `/icp-research` — define your ideal customer
4. `/tov-guidelines` — extract or define your tone of voice
5. `/brand-kit` — capture your visual identity
6. `/positioning` — synthesize the above into a positioning statement
7. `/messaging` — turn positioning into the 10-component messaging library
8. `/content-strategy` — map messaging to a content roadmap
9. `/thought-leadership` — produce your first long-form piece

Each command saves output to a folder under `marketing/`.

---

## What's NOT shipped (gated)

This Quickstart is intentionally lean. The following stay gated for the advanced tier:

- All sales-enablement (battlecards, sales decks, demo scripts, one-pagers, case studies, webinars)
- All outbound (cold email, ABM, lead scoring, enrichment)
- All paid marketing (Google Ads, LinkedIn Ads, creative briefs)
- All SEO/AEO (AEO content + strategy, programmatic SEO, local SEO)
- All website (wireframe, copy, builds, audits)
- All design (vibe coding, dashboards, Figma → React)
- All social/LinkedIn (LinkedIn content, YouTube, newsletter)
- All lifecycle (email nurture, lifecycle campaigns)
- All meta/orchestration (`/orchestrator`, `/recall`, `/today`, `/wiki`, `/weekly-audit`)
- All hooks (no auto-validation, no catalog regen, no output routing)
- All rules (taught inline in this pack instead of auto-loaded from a rule file)
- Content ops (collapsed into `/content-strategy` here; the full ops layer is gated)

If you want any of those, contact me on [LinkedIn](https://www.linkedin.com/in/matteotittarelli/).

---

## Repo structure

```
.
├── README.md           ← you are here
├── CLAUDE.md           ← repo-level Claude context (loaded every session)
├── INSTALL.md          ← multi-runtime install guide (Claude Code, Cowork)
├── FAQ.md              ← common questions
├── marketing/          ← your marketing workspace
├── .claude/
│   ├── skills/         ← 11 skills (research/ + primitives/)
│   ├── agents/         ← 12 agents (3 roles + 9 specialists)
│   └── commands/       ← 13 slash commands
├── context/            ← raw research source files (transcripts, decks)
└── templates/          ← CLAUDE.md + SKILL.md authoring prompts
```

---

## Feedback + contributions

This is an opinionated starter pack maintained by [Matteo Tittarelli](https://www.linkedin.com/in/matteotittarelli/). Issues, PRs, and suggestions welcome on [GitHub](https://github.com/matteotitta/claude-code-marketing-quickstart). For deep questions about the architecture or the gated/advanced tier, reach out on [LinkedIn](https://www.linkedin.com/in/matteotittarelli/).

---

## License

MIT. Skills retain their individual `LICENSE` files where present; the repo as a whole is MIT-licensed.
