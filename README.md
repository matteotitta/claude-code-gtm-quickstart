# Claude Code for GTM — quickstart

Get Claude Code working for GTM in 30 minutes. Clone this repo, run two commands, and walk away with competitive intelligence on your own company.

---

## The context engineering loop

```
company-context → competitor-research (parallel) → icp-research → positioning → product-messaging
     (you)              (them x N)                  (who buys)     (strategy)      (execution)
```

You start with context. Context feeds strategy. Strategy feeds execution. Every piece builds on the last.

---

## Quickstart (3 steps)

### Step 1: Clone and open (2 min)

```bash
git clone https://github.com/[org]/claude-code-gtm-quickstart.git
cd claude-code-gtm-quickstart
```

Open the folder in Cursor (File > Open Folder). Click the orange Claude icon in the right sidebar.

### Step 2: Run /quickstart (15 min)

Type `/quickstart` in the Claude Code panel. Claude walks you through:
- A tour of the Cursor interface (modes, shortcuts, commands)
- 5 questions about your company, audience, voice, and standards
- Generates your personalized CLAUDE.md

### Step 3: Run /context-loop (25 min)

Type `/context-loop`. Claude runs 5 skills in sequence:

1. Researches your company (traction, team, funding, customers)
2. Researches your competitors in parallel (one agent per competitor)
3. Builds your ideal customer profile
4. Synthesizes your positioning strategy
5. Generates your messaging library

All outputs saved to the right folders automatically. Committed to git when done.

---

## What you get

| Output | What it contains | Saved to |
|--------|-----------------|----------|
| Company context | Market position, traction signals, team, funding | `context/` |
| Competitor profiles | Product, pricing, positioning, strengths/weaknesses (per competitor) | `context/` |
| ICP research | Personas, segments, buying journey, pain points | `context/` |
| Positioning | Category, alternatives, differentiators, positioning statement | `marketing/product-marketing/` |
| Product messaging | Value props, proof points, messaging blocks | `marketing/product-marketing/` |

---

## Folder structure

```
claude-code-gtm-quickstart/
├── .claude/
│   ├── commands/        → /quickstart, /context-loop, /health-check, /next-steps
│   ├── skills/          → 9 skills (5 loop + 4 next-steps)
│   └── agents/          → competitor-researcher, market-researcher
├── context/             → Foundational research (company, competitors, ICP)
├── marketing/
│   ├── product-marketing/    → Positioning, messaging
│   ├── demand-gen/           → Paid marketing, lifecycle marketing
│   ├── content/              → Newsletter, social, thought leadership
│   ├── brand/                → TOV, brand guidelines
│   └── swipe-file/           → Stolen patterns and frameworks
├── templates/           → CLAUDE.md + SKILL.md builder prompts
├── examples/            → Sample outputs for reference
├── CLAUDE.md            → Your persistent context (personalized by /quickstart)
├── SETUP-GUIDE.md       → Mac install guide
└── README.md
```

---

## Requirements

- Cursor IDE (free, [cursor.com](https://cursor.com))
- Claude Code extension (installed in Cursor)
- Claude Max ($100/mo) or Pro ($20/mo) subscription
- Mac
- No API keys needed

---

## After the loop

Run `/next-steps` to see what to build next:

- Push to GitHub (back up your work)
- Add API keys (Exa, Firecrawl) for stronger research
- Connect tools (Google Drive, Notion, Slack) via MCP
- Run more skills: `/tov-guidelines`, `/brand-guidelines`, `/content-strategy`, `/steal`
- Build your own skills from the template

---

## Commands

| Command | What it does |
|---------|-------------|
| `/quickstart` | Cursor tour + CLAUDE.md generation |
| `/context-loop` | Full context engineering loop (5 skills) |
| `/health-check` | Verify system state |
| `/next-steps` | Post-loop guidance |

## Skills

| Skill | Level | What it produces |
|-------|-------|-----------------|
| `/company-context` | Research | Your company's market context |
| `/competitor-research` | Research | Deep competitor profiles |
| `/icp-research` | Research | Ideal customer profiles |
| `/positioning` | Strategy | Positioning strategy |
| `/product-messaging` | Strategy | Messaging library |
| `/tov-guidelines` | Brand | Voice documentation |
| `/brand-guidelines` | Brand | Visual + verbal identity |
| `/content-strategy` | Strategy | Channel mix + editorial plan |
| `/steal` | Meta | Break down and adapt patterns |

---

Built by [Genesys Growth](https://genesysgrowth.com). Pattern inspired by [Jacob Dietle's context-os-quickstart](https://github.com/jacob-dietle/gtm-context-os-quickstart).

Part of the [GTM Engineer School](https://www.gtm-engineer-school.com/) Claude Code programme.
