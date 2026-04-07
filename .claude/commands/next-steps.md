---
name: next-steps
description: Post-loop guidance — more skills, APIs, MCPs, GitHub push, custom skills, and programme bridge
---

# Next steps

The user has completed the context engineering loop. Guide them on what to do next.

Read the `context/` and `marketing/` folders to understand what they've already generated, then present the following guidance organized by priority.

---

## Present this to the user:

### 1. Push to GitHub (save your work to the cloud)

"Your work is committed locally. To back it up and share with your team:

1. Create a private repo at github.com/new
2. In the terminal, run:

```bash
git remote add origin https://github.com/[your-username]/[your-repo-name].git
git push -u origin main
```

Replace `[your-username]` and `[your-repo-name]` with your actual GitHub details."

---

### 2. Run more skills

"You have 4 more skills ready to go. These build on the context you just created:

| Skill | What it produces | Saves to | Run it |
|-------|-----------------|----------|--------|
| TOV guidelines | Your brand voice documentation — patterns, vocabulary, do/don't | `marketing/brand/` | Type `/tov-guidelines` |
| Brand guidelines | Visual + verbal identity system | `marketing/brand/` | Type `/brand-guidelines` |
| Content strategy | Channel mix, content pillars, editorial calendar | `marketing/content/` | Type `/content-strategy` |
| Steal | Break down what makes something work, adapt it for you | `marketing/swipe-file/` | Type `/steal [URL or description]` |

**Recommended order:** TOV guidelines first (it enriches everything else), then content strategy, then brand guidelines."

---

### 3. Level up your research (add API keys)

"These APIs make your research skills more powerful. Both have free tiers:

| API | What it adds | Free tier | How to set up |
|-----|-------------|-----------|--------------|
| Exa | Higher quality search results for competitive research | 1,000 searches/mo | Sign up at exa.ai, copy API key |
| Firecrawl | Reliable scraping for JS-heavy competitor websites | 500 credits/mo | Sign up at firecrawl.dev, copy API key |

To add them:
1. Copy `.env.example` to `.env`
2. Paste your API keys into the `.env` file
3. Restart Claude Code

Your skills will automatically use these when available, and fall back to built-in search when they're not."

---

### 4. Build your own skill

"Want Claude to do something specific your way, every time? Build a skill.

Open `templates/SKILL-MD-TEMPLATE.md` — it walks you through creating a custom skill in 7 questions. Answer them, and Claude generates a complete SKILL.md file you can save and use forever.

**Ideas for first custom skills:**
- A LinkedIn post writer that matches your voice
- A meeting prep skill that researches attendees
- A weekly newsletter outline generator
- A case study template that follows your format

Skills live in `.claude/skills/[skill-name]/SKILL.md`. Once saved, type `/[skill-name]` to run them."

---

### 5. Connect your tools (add MCP servers)

"MCP (Model Context Protocol) servers let Claude connect directly to your tools:

| MCP server | What it does |
|-----------|-------------|
| Google Drive | Export research docs and deliverables to shared Drive folders |
| Notion | Sync context and deliverables to your team's Notion workspace |
| Slack | Post outputs to team channels, get notifications |

These require more setup (OAuth credentials, server configuration). Ask in the next session and we'll walk through it together."

---

### 6. Your marketing workspace

"Your repo has pre-built folders for all your marketing work:

```
marketing/
├── product-marketing/       → positioning, messaging, pricing
├── demand-gen/
│   ├── paid-marketing/      → ad campaigns, creative briefs
│   └── lifecycle-marketing/ → email sequences, nurture flows
├── content/
│   ├── newsletter/          → newsletter drafts
│   ├── social/              → LinkedIn posts, social campaigns
│   └── thought-leadership/  → long-form articles
├── brand/                   → TOV, brand guidelines
└── swipe-file/              → stolen patterns, frameworks
```

As you build skills and run them, outputs land in the right folder automatically. Your `context/` folder feeds strategy. Your `marketing/` folder holds execution."

---

### 7. Go further — the full programme

"You now have a context foundation most marketing teams don't have — your company researched, competitors profiled, ICP defined, positioning documented, and messaging ready to use. Every conversation with Claude starts from this base.

The quickstart covers research and strategy. The full Claude Code programme adds four layers on top:

| What you have (quickstart) | What the programme adds |
|---------------------------|------------------------|
| 9 skills you run manually | 20+ skills with automatic quality gates (hooks catch brand violations, fabricated data, and tone drift before you see the output) |
| Flat file outputs | Context rules that auto-load — working in `competitors/` loads competitive context, working in `content/` loads voice guidelines |
| One-at-a-time execution | Agents that run tasks in parallel — 4 competitors researched simultaneously, synthesized into one briefing |
| Desktop only | Mobile access via Dispatch — kick off tasks from your phone, Claude executes and pings when done |
| Manual workflows | Recurring automation — competitive digests every Monday, content calendars every quarter, pipeline summaries on demand |
| Solo operator | Team scale — `git clone` gives your team the whole system, with PR-based skill approval and role-specific agents |

The programme is a 4-week build:

```
W1: Foundation (you've done most of this)  → CLAUDE.md, skills, MCP connectors, GitHub
W2: Skills library                         → 6+ skills, brand voice hook, context rules, team PR workflow
W3: Automation + Dispatch                  → /loop scheduling, mobile access, Computer Use for non-API tools
W4: Full system                            → Agents, channels (iMessage/Telegram), vibe-coded tools
```

Every participant gets a personalized plan based on their role, experience level, and tool stack — the programme adapts to you, not the other way around.

**Ready to go further?**
- Learn more: [GTM Engineer School](https://www.gtm-engineer-school.com/)
- Talk to Matteo: [Book a call](https://cal.com/matteo-titta/30min)"
