# Marketing Quick Start v2

A lean, opinionated starter pack for marketing teams running their GTM in Claude Code, Cowork, or claude.ai Projects.

**14 skills · 12 agents · 15 commands · single `marketing/` workspace.**

Built by [Matteo Tittarelli](https://genesysgrowth.com) (Genesys Growth) for in-house marketing teams who want a working starting point — not a 100-skill kitchen sink.

---

## What this is

Three derivatives, one source of truth:

| Runtime | What you install | Where the install guide lives |
|---|---|---|
| **Claude Code** | This repo (`git clone`) | This README + [`CLAUDE.md`](./CLAUDE.md) |
| **Cowork** | Plugin via marketplace OR drag-zip | [`INSTALL.md`](./INSTALL.md) → Path B |
| **claude.ai Projects** | Download zip → upload knowledge files + paste system prompt | [`INSTALL.md`](./INSTALL.md) → Path C |

If you don't know which to pick, see the decision tree at the top of [`INSTALL.md`](./INSTALL.md).

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

This personalizes `marketing/CLAUDE.md` with your company name, voice, and ICP, then verifies the marketing/ folder scaffold. Five minutes.

For Cowork or claude.ai paths, see [`INSTALL.md`](./INSTALL.md).

---

## What's inside

### 14 skills

| Category | Skills |
|---|---|
| **Research** (5) | `company-context` · `competitor-research` · `icp-research` · `tov-guidelines` · `brand-kit` |
| **PMM strategy + execution** (5) | `positioning` · `messaging` · `product-launch` · `case-study` · `webinar` |
| **Content** (4) | `content-strategy` · `content-ops` · `content-audit` · `thought-leadership` |

Each skill ships with a `SKILL.md` (the prompt) and usually a `references/` folder (templates, output formats, worked examples on real public companies like Vercel, Cursor, OpenAI, Perplexity). Skills live under `.claude/skills/`.

### 12 agents

- **Role-agents** (3): `researcher`, `pmm`, `content` — dispatch routers
- **Specialists** (9): `market-researcher`, `competitor-researcher`, `brand-researcher`, `content-researcher`, `positioning-strategist`, `product-marketer`, `content-strategist`, `content-marketer`, `content-writer` — tuned executors invoked when narrow expertise is needed

### 15 commands

`/quickstart` (onboarding) + 14 skill-aligned commands (`/positioning`, `/messaging`, etc.). Type `/` in Claude Code chat to see them all.

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
├── brand/              ← /brand-guidelines + /tov-guidelines
├── goals/              ← KPIs (manual)
└── content/
    ├── audit/          ← /content-audit
    ├── strategy/       ← /content-strategy + /content-ops
    └── execution/      ← /thought-leadership
```

**Naming:** `MMYY-topic.md` (e.g., `0526-icp-research.md`). System files (`CLAUDE.md`, `latest.md`, `history.md`, `README.md`) are exempt.

Full folder convention docs live in [`CLAUDE.md`](./CLAUDE.md). Each `marketing/{folder}/` ships with its own `README.md` explaining what goes inside.

---

## Suggested first chain (30 minutes)

After `/quickstart` finishes, run these in order:

1. `/company-context` — your firmographics + qualification posture
2. `/competitor-research` — top 2-3 competitors, run one-by-one
3. `/icp-research` — define your ideal customer
4. `/tov-guidelines` — extract or define your tone of voice
5. `/brand-guidelines` — capture your visual identity
6. `/positioning` — synthesize the above into a positioning statement
7. `/messaging` — turn positioning into the 10-component messaging library
8. `/content-strategy` — map messaging to a content roadmap
9. `/thought-leadership` — produce your first long-form piece

Each command saves output to a folder under `marketing/`.

---

## What's NOT shipped (gated)

This Quick Start is intentionally lean. The following stay gated for the paid/advanced tier:

- All sales-enablement (battlecards, sales decks, demo scripts, one-pagers)
- All outbound (cold email, ABM, lead scoring, enrichment)
- All paid marketing (Google Ads, LinkedIn Ads, creative briefs)
- All SEO/AEO (AEO content + strategy, programmatic SEO, local SEO)
- All website (wireframe, copy, builds, audits)
- All design (vibe coding, dashboards, Figma → React)
- All social/LinkedIn (18 LinkedIn skills, YouTube, newsletter)
- All lifecycle (email nurture, lifecycle campaigns)
- All meta/orchestration (`/orchestrator`, `/recall`, `/today`, `/wiki`, `/weekly-audit`)
- All hooks (no auto-validation, no catalog regen, no output routing)
- All rules (taught inline in this pack instead of auto-loaded from a rule file)

If you want any of those, see the advanced tier at [genesysgrowth.com](https://genesysgrowth.com).

---

## Repo structure

```
.
├── README.md           ← you are here
├── CLAUDE.md           ← repo-level Claude context (loaded every session)
├── INSTALL.md          ← multi-runtime install guide (Claude Code, Cowork, claude.ai)
├── MIGRATION.md        ← v1 → v2 port instructions (if you're upgrading)
├── marketing/          ← your marketing/ workspace
├── .claude/
│   ├── skills/         ← 14 skills (research/ + primitives/)
│   ├── agents/         ← 12 agents (3 roles + 9 specialists)
│   └── commands/       ← 15 slash commands
├── scripts/            ← sync-from-master + sanitize-check (for maintainers)
├── templates/          ← CLAUDE-MD-TEMPLATE.md + SKILL-MD-TEMPLATE.md
└── FAQ.md              ← common questions
```

---

## Upgrading from v1

If you cloned the v1 quickstart (the one with `marketing/{brand,content,demand-gen,product-marketing,swipe-file}/` flat layout), see [`MIGRATION.md`](./MIGRATION.md) for the port. Short version: your old outputs map cleanly into the new the marketing/ folder convention subfolders by topic, not by the v1 lifecycle category.

---

## Feedback + contributions

This is an opinionated starter pack maintained by [Matteo Tittarelli](https://genesysgrowth.com). Issues, PRs, and suggestions welcome on [GitHub](https://github.com/matteotitta/claude-code-marketing-quickstart). For deep questions about the architecture, the master workspace, or the gated/paid tier, reach out via [genesysgrowth.com](https://genesysgrowth.com).

---

## License

MIT. Skills retain their individual `LICENSE` files where present; the repo as a whole is MIT-licensed.
