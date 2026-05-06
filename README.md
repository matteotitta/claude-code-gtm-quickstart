# Genesys Claude Code Marketing Quickstart

A lean, opinionated starter pack for marketing teams running their GTM in Claude Code or Cowork.

**11 skills · 12 agents · 12 commands · single `marketing/` workspace.**

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

### 12 commands

`/quickstart` (onboarding) + 11 skill-aligned commands (`/positioning`, `/messaging`, `/brand-kit`, `/content-audit`, etc.). Type `/` in Claude Code chat to see them all.

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

## What's NOT included

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
├── README.md           ← you are here (install + FAQ at the bottom)
├── CLAUDE.md           ← repo-level Claude context (loaded every session)
├── INSTALL.md          ← multi-runtime install guide (Claude Code, Cowork)
├── marketing/          ← your marketing workspace
├── .claude/
│   ├── skills/         ← 11 skills (research/ + primitives/)
│   ├── agents/         ← 12 agents (3 roles + 9 specialists)
│   └── commands/       ← 12 slash commands
├── context/            ← raw research source files (transcripts, decks)
└── templates/          ← CLAUDE.md + SKILL.md authoring prompts
```

---

## FAQ

The five questions every team asks in the first week.

### "Won't it hallucinate?"

One session working against structured context produces virtually no hallucinations. Five sessions without a knowledge base, and it starts making things up.

The context IS the hallucination defense. When Claude has your competitor research, your ICP brief, and your positioning doc to draw from, it cites what's there instead of inventing what isn't. The more complete your `marketing/` folder, the more grounded every output becomes.

**What this means for you:** build your `marketing/CLAUDE.md` first (`/quickstart` does this). Then run `/company-context` and `/competitor-research` to fill the workspace. Every skill you run after that benefits from this foundation.

### "Why not just use ChatGPT or claude.ai?"

Custom GPTs and claude.ai Projects lose context between sessions, can't search across your documents, can't create persistent files, can't be version-controlled, and can't connect to your tools the way Claude Code can.

A Claude Code workspace is YOUR file system, YOUR structure, YOUR rules. The AI conforms to your world — not the other way around. When you close the session and open a new one, everything you've built is still there. Your CLAUDE.md, your skills, your context folder, your outputs. Nothing resets.

**What this means for you:** by the end of week 1, test it yourself — ask the same question in ChatGPT and in Claude Code with your CLAUDE.md loaded. The difference in output quality is the entire argument for this approach.

### "How much should I feed it first?"

Start with 10-15 pieces of source material:

- 5-10 sales call transcripts or meeting notes (won AND lost deals)
- 2-3 competitor landing pages (saved as markdown or PDF)
- Your current pitch deck or one-pager
- Any existing positioning, messaging, or brand docs

5 is too thin for patterns — the system just parrots back what you gave it. 50 overwhelms without structure. 10-15 is where the system starts seeing patterns across your data.

**What this means for you:** gather these into your `marketing/docs/` or `context/` folder before running your first context skill. The richer your starting material, the stronger every output from day one.

### "Does everyone on my team need Claude Max?"

Only the person maintaining the system needs a Max subscription. Everyone else can:

- Read the outputs (they're just markdown files in a shared repo)
- Run skills against existing context with their own Pro subscription
- Contribute new context via Git pull requests
- Review and approve changes through GitHub's PR workflow

PRs keep quality high without requiring everyone to pay for the same tier.

**What this means for you:** start with one maintainer. Others clone the repo and get the full system. As the team grows, add subscriptions based on who's actively building — not who's consuming outputs.

### "Can I break it?"

It's files. You can see everything, open anything in a text editor, and change whatever you want.

Git means you can roll back any change. Every commit is a snapshot you can return to. You literally cannot permanently break it — `git log` shows what changed, `git revert` undoes it.

The worst case scenario: you delete a file you shouldn't have. Git brings it back. You corrupt your CLAUDE.md. Git brings it back. You accidentally overwrite a context file. Git brings it back.

**What this means for you:** experiment freely. Try things. If something goes wrong, `git revert` is your undo button.

---

## Feedback + contributions

This is an opinionated starter pack maintained by [Matteo Tittarelli](https://www.linkedin.com/in/matteotittarelli/). Issues, PRs, and suggestions welcome on [GitHub](https://github.com/matteotitta/claude-code-marketing-quickstart). For deep questions about the architecture or the advanced tier, reach out on [LinkedIn](https://www.linkedin.com/in/matteotittarelli/).

---

## License

MIT. Skills retain their individual `LICENSE` files where present; the repo as a whole is MIT-licensed.
