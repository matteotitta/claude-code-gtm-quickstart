# Week 1: Set up your Claude Code ecosystem

**Crescendo Claude Code Marketing Programme**
Session recording: [link to be added after session]

---

## Intro

This is your first week. By the end of it, you'll have a working Claude Code instance that knows Crescendo — your competitors, your voice, your audiences, your quality standards. Every conversation you have with Claude from this point forward will be shaped by this context. No more re-explaining what you do.

Think of this week as building the operating system. Weeks 2-4 build on top of it. The better your CLAUDE.md and folder structure, the better every skill, hook, and automation performs later.

This is also where Claude Code separates from any chatbot you've used before. A chatbot forgets you after every session. Claude Code lives inside your project, reads your files, connects to your tools, and shares everything with your team through Git.

**What you'll walk away with:**

- Claude Code running in VS Code or Cursor — three modes (Ask before edits, Edit automatically, Plan mode) + Effort slider working
- A CLAUDE.md file that encodes Crescendo's identity, voice, competitors, and standards
- Google Drive + Slack MCP servers connected and tested
- A GitHub repo with `.gitignore` protecting your secrets
- A folder structure that Claude reads for automatic context
- Chrome extension installed with competitor pages analysed
- Your first skill built from your intake form
- Dispatch working from your phone

---

## Pre-reqs checklist

### IT / workspace admin (complete before W1 — flagged in onboarding Slack)

These items require admin or IT action. Matteo will flag these in Slack at least 5 days before W1.

- Approve the Slack MCP bot for the Crescendo workspace (IT must whitelist the bot)
- Create a private GitHub repo or org and invite all programme participants
- Confirm participants can install VS Code extensions (check MDM / device management policy)
- Whitelist claude.ai and anthropic.com on corporate firewall or proxy if applicable

### Each participant (complete before the Monday session)

- Claude Max subscription active ($100/mo Max recommended, $20/mo Pro minimum)
- VS Code installed (or Cursor — free alternative at cursor.com)
- Git installed: open Terminal and run `git --version` to confirm (install from git-scm.com if not found)
- GitHub account created (free tier is fine)
- Intake form completed (link shared in Slack)
- Access to your Crescendo Google Drive confirmed (log in and check you can view shared folders)
- Slack workspace access confirmed
- Phone ready for Dispatch setup (Claude mobile app downloaded)
- Optional: WisprFlow installed for voice-to-text (wisprflow.com)

### Matteo (session prep)

- Review all intake forms before session
- Test Google Drive MCP connector with Crescendo's Google Workspace
- Test Slack MCP connector with Crescendo's Slack workspace
- Have CLAUDE.md template prompt ready to paste into Slack
- Have .gitignore template ready to paste into Slack
- Have MCP connector JSON configs ready to paste into Slack
- Dispatch QR code tested on your own phone
- Backup screenshot/recording for each demo section prepared

---

## Theoretical concepts overview

### The Claude Code mental model

Claude Code is not a chatbot. It's a colleague who lives in your project folder.

**Why should I care?** The difference between asking ChatGPT "write me a competitive overview" and running `/competitor-research Sierra` in Claude Code is the difference between a random freelancer and someone who's been at Crescendo for a year. The freelancer needs a brief every time. The colleague already knows your positioning, your voice, your ICP, and your banned words.

That gap comes from four layers that stack on top of each other:

1. **CLAUDE.md** — who you are. Loaded automatically every session. Encodes Crescendo's identity, voice, competitors, quality standards.
2. **Skills** — what you do. Reusable, structured prompts. `/battlecard Sierra` runs the same quality process every time.
3. **Hooks** — your quality standards, enforced automatically. Every output gets checked for banned words, brand voice, and fabricated claims before anyone sees it.
4. **Automation** — when it runs. Recurring tasks, Dispatch from phone, scheduled digests.

This week covers layer 1. Week 2 adds layers 2 and 3. Weeks 3-4 add layer 4.

### Context engineering: the single most important concept

**Why should I care?** You can write the perfect prompt and still get generic output. Context engineering is why.

**Prompt engineering** = how you ask the question.
**Context engineering** = what Claude knows before you ask anything.

A great prompt with zero context produces internet-grade marketing copy. A simple prompt with rich context (Crescendo's positioning against Sierra, Tom's sales objections, your voice guidelines) produces output that sounds like it came from inside the building.

This is what CLAUDE.md solves. You write it once. Every conversation, every skill, every automation draws from it automatically.

### Why the folder structure works: compression

**Why should I care?** Understanding this one concept will prevent the #1 mistake people make — dumping everything into one folder and wondering why output quality drops.

Every skill in the system compresses the layer below it. Think of it as a pipeline:

```
15 sales calls → 1 win-loss analysis
3 competitor profiles → 1 positioning framework
1 positioning framework → messaging variants for every persona
```

Each step takes raw material and distills it into something more actionable. This is why the skill chain runs in a specific order: company-context → competitors → ICP → positioning → messaging. Each step compresses the previous step's output.

**Two folders, two functions:**

- `context/` is your **hard drive** — foundational research you built once and reference when needed. Raw material and compressed patterns live here.
- `marketing/` (or `outputs/`) is your **RAM** — the operational outputs you work from daily. Deliverables you send, share, and iterate on.

Your positioning doc doesn't re-read 50 competitor pages — it synthesizes the patterns that were already compressed from those pages. Keep the layers separate so the system stays navigable.

**This is also why context engineering beats prompt engineering.** The best prompt in the world can't compress 15 sales calls into patterns. But if you've already compressed them into an ICP brief sitting in `context/`, even a simple prompt gets great output.

### VS Code extension / Cursor: where you'll work

**Why should I care?** This is where you'll spend your time. Not a terminal. Not a browser chat window. Your editor, with Claude built in. Same place you already work — with an AI colleague sitting next to you.

Claude Code runs in three entry points. Pick the one that matches your comfort level:


| Entry point                    | Best for                                  | What it is                                                                                                  |
| ------------------------------ | ----------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **VS Code extension**          | Designer, Event Manager, Nicole, VP Brand | Extension inside VS Code. Three modes: Ask before edits, Edit automatically, Plan mode. Plus Effort slider. |
| **Cursor** (free IDE)          | Web Developer, Creative Director          | VS Code-like editor with Claude Code built in. Same feature set.                                            |
| **Claude Code CLI** (terminal) | Mike, Marketing Ops                       | Full power, keyboard-driven. All features.                                                                  |


All three share the same foundation: CLAUDE.md, skills, hooks, MCP servers, plans, rules, agents, and Git integration. Pick one and don't look back.

**The three modes + Effort:**

- **Ask before edits** — Claude proposes changes and asks for your approval before making each edit. Best for building confidence and staying in control.
- **Edit automatically** — Claude makes direct file edits without asking. The default mode for most daily work once you trust the system.
- **Plan mode** — Claude explores your code and presents a plan before executing anything. Best for complex multi-step tasks where you want oversight.

**Effort slider** (separate from modes) — Controls how deeply Claude thinks before responding. Low for quick answers, Medium for standard work, High for complex analysis. Adjust based on task complexity.

Start in Ask before edits to build confidence. Move to Edit automatically as you trust the system. Use Plan mode for complex multi-step work.

### MCP servers: connecting Claude to your tools

**Why should I care?** Claude can read your Google Drive, search your Slack, pull from HubSpot — but only if you connect it. Without MCP servers, Claude is smart but blind. With them, it uses your actual data.

MCP (Model Context Protocol) is the standard for connecting AI to external tools. Think of each MCP server as a cable between Claude and one of your tools. Once connected, Claude can search, read, and push to that tool.

For W1, you'll connect two:

- **Google Drive** — Claude searches and reads your docs, battlecards, brand assets
- **Slack** — Claude reads channel messages, searches conversations, summarises threads

Role-specific connectors (HubSpot, Clay, Figma) come in week 2 homework.

### GitHub + .gitignore: sharing the system

**Why should I care?** When a new VP PMM starts, they clone one repo and get everything — CLAUDE.md, all skills, all hooks, all MCP configs. That's onboarding in one command: `git clone`.

GitHub is how the team shares Claude Code configuration. CLAUDE.md lives in the repo. Skills live in the repo. Hooks live in the repo. One `git pull` and everyone has the latest version.

But API keys and personal settings do NOT go in the repo. That's what `.gitignore` protects. If you commit an API key to GitHub, it's exposed. The `.gitignore` file tells Git which files to never upload.

### Folder structure: why it matters

**Why should I care?** Claude Code reads your filesystem to understand context. Every folder name is a signal. When you're working in `competitors/`, Claude knows you're doing competitive work. When you're in `content/`, it shifts to content mode. Organise well, and Claude starts every session with the right context automatically.

The target structure for Crescendo:

```
crescendo-marketing/
├── .claude/
│   ├── agents/            → Agent definitions (W4)
│   ├── apis/              → API keys (gitignored)
│   ├── commands/          → Slash commands (W2)
│   ├── hooks/             → Quality gate scripts (W2)
│   ├── mcp/               → MCP server configs + scripts
│   ├── plans/             → Plan files (gitignored)
│   ├── rules/             → Auto-loaded context rules (W2)
│   ├── sessions/          → Session recall
│   ├── skills/            → Skills by category (W2)
│   │   ├── context-skills/
│   │   ├── content-skills/
│   │   ├── product-marketing-skills/
│   │   ├── sales-enablement/
│   │   └── meta-skills/
│   ├── settings.json      → Team settings (committed)
│   └── settings.local.json → Personal settings (gitignored)
├── .env                   → API keys (gitignored)
├── .gitignore
├── CLAUDE.md              → Project context (auto-loaded)
├── docs/                  → Brand assets, competitive docs, taste files
├── scripts/               → Google Slides/Sheets/Docs creation scripts
└── outputs/               → Generated deliverables
```

You won't build all of this today. But you'll create the skeleton — the repo, the CLAUDE.md, the `.claude/` directory, and the `.gitignore`. Every week adds more.

### Git + GitHub: what it is and why it matters (for first-timers)

**Why should I care?** When you push your CLAUDE.md to GitHub, every team member gets the same starting context instantly. When VP PMM joins next month, they clone one command and have everything. Git is what makes the system shareable.

**The mental model:**

- **Git** — version history for your files. Like Track Changes for code. Every save is named and reversible.
- **A repo** — a folder that Git watches. Your `crescendo-marketing/` folder becomes a repo.
- **A commit** — a named snapshot. "Foundation: CLAUDE.md + gitignore" is a commit. It captures exactly what you built and why.
- **Push / pull** — sync with the team. `git push` sends your changes to GitHub. `git pull` gets everyone else's.
- **Clone** — copy a repo to your machine. `git clone [url]` is how new team members get the whole system in one command.

**The three commands you'll use every week:**

```bash
git add .            # stage your changes (tell Git what to include in the snapshot)
git commit -m "Add competitor-research skill"   # name the snapshot
git push             # send it to GitHub
```

That's it. You don't need to understand branches, rebasing, or merge conflicts for W1. Three commands, one mental model: snapshot, name, share.

**Why it matters here specifically:**
Your CLAUDE.md, skills, hooks, and MCP configs all live in the repo. When you improve a skill, `git push` and everyone gets it. When something breaks, `git log` shows exactly what changed and when. When VP PMM joins, `git clone` gives them a fully configured system in minutes — not a "here's our Notion wiki, good luck."

### Chrome extension: instant competitor analysis

**Why should I care?** You visit Sierra's homepage, open the extension, and get a structured competitive analysis in 30 seconds. No copy-pasting URLs. No writing a brief. Just visit and ask.

The Chrome extension puts Claude on any webpage. Visit a competitor's site, activate the extension, and ask questions about what you're seeing. Bookmark the page and Claude remembers it for future reference.

### WisprFlow (bonus): talk instead of type

Voice-to-text for talking to Claude Code. Dictate instead of typing. Especially useful for Dispatch prompts on mobile and for team members who think out loud better than they type. Not required — but if you try it, you'll probably keep it.

### Common questions (answered before you ask them)

Every cohort asks these in the first week. Here are the straight answers.

**"Won't it hallucinate?"**
One session working against structured context produces virtually no hallucinations. Five sessions without a knowledge base, and it starts making things up. The context IS the hallucination defense. This is why we're building CLAUDE.md first — it's the context that prevents generic output.

**"Why not just use ChatGPT or Claude.ai?"**
Custom GPTs lose context between sessions, can't search across documents, can't create persistent files, can't be version-controlled, and can't connect to your tools. A Claude Code workspace is YOUR file system, YOUR rules. By the end of today, test this yourself — ask the same question in ChatGPT and in Claude Code with your CLAUDE.md loaded.

**"How much should I feed it?"**
Start with 10-15 pieces of source material. 5 is too thin for patterns. 50 overwhelms without structure. 10-15 is the sweet spot. The 10-15 pieces you'll gather in Step 3.5 are your starting context.

**"Does everyone need Claude Max?"**
Only the maintainer needs Max. Everyone else reads outputs, runs skills, and contributes via Git. Mike's bonus homework covers the full context cycle; the rest of the team runs skills against what he builds.

**"Can I break it?"**
It's files. Git means you can roll back any change. You literally cannot permanently break it. That's why we set up Git in Step 5 — your safety net.

---

## Step-by-step homework

### Step 1: Install Claude Code (15 min)

**What you'll build:** A working Claude Code instance in your editor.

**Option A — VS Code extension (recommended for most team members):**

1. Open VS Code
2. Go to Extensions (Cmd+Shift+X on Mac, Ctrl+Shift+X on Windows)
3. Search for "Claude Code"
4. Click Install
5. Once installed, open the Claude Code panel (look for the Claude icon in the sidebar)
6. Sign in with your Anthropic account (same as your Claude Max subscription)
7. Test: Type "Hello, what can you do?" in the Claude Code panel

**Option B — Cursor (alternative for Web Dev, Creative Director):**

1. Download Cursor from cursor.com (free)
2. Install and open it
3. Claude Code is built in — look for the Claude panel
4. Sign in with your Anthropic account
5. Test: Same as above

**Option C — CLI (for Mike, Marketing Ops):**

1. Open Terminal
2. Run: `npm install -g @anthropic-ai/claude-code` (requires Node.js)
3. Run: `claude` to start
4. Sign in when prompted
5. Test: Type "Hello, what can you do?"

**Validation:** Claude responds and you can see the three modes (Ask before edits, Edit automatically, Plan mode) and the Effort slider available in your interface.

### Step 2: Create your project folder (10 min)

1. Create a new folder called `crescendo-marketing` in a location you'll remember (Desktop or Documents)
2. Open that folder in VS Code or Cursor
3. Create the basic folder structure:

```
crescendo-marketing/
├── .claude/
│   └── mcp/
├── docs/
├── outputs/
└── .gitignore
```

1. You can create folders using your editor or Terminal:

```bash
mkdir -p crescendo-marketing/.claude/mcp
mkdir -p crescendo-marketing/docs
mkdir -p crescendo-marketing/outputs
```

1. Open Claude Code inside this folder. From now on, always open Claude Code from within this project folder.

### Step 3: Write your CLAUDE.md (45 min)

**What you'll build:** The foundation document that shapes every Claude response for the rest of the programme.

1. Open the Claude Code panel
2. Paste the CLAUDE.md template prompt (appended below)
3. Answer each of Claude's 7 questions honestly and specifically — use real Crescendo details, not placeholders
4. Review the generated output. Ask yourself: does this sound like Crescendo? Would a new hire reading this understand what we do and how we sound?
5. Save the output as `CLAUDE.md` in your project root (`crescendo-marketing/CLAUDE.md`)
6. Test it: Close the Claude Code panel, reopen it, and ask "Describe Crescendo in one paragraph for a CX leader evaluating AI contact center vendors." Does it sound right? Does it mention the right competitors? Does it use the right tone?

**Validation:** The one-paragraph test. If Claude describes Crescendo accurately — mentioning AI-native contact center, outcome-based pricing, and key differentiators against Sierra and Decagon — without you adding any extra context, your CLAUDE.md is working.

**Pro tip:** Run the test twice: once in a fresh session with CLAUDE.md, once without it (rename the file temporarily). The quality gap between the two outputs is the entire argument for this programme.

### Step 3.5: Gather your starting context (15 min)

**What you'll build:** The raw material your context system will compress into insights.

Before you connect MCP servers, give the system something to work with. Gather 10-15 pieces of source material into your `docs/` folder:

- 5-10 sales call transcripts or meeting notes (won AND lost deals — both matter)
- 2-3 competitor landing pages (save as markdown or screenshot)
- Your current pitch deck or one-pager
- Any existing positioning, messaging, or brand docs

This is the minimum viable context. 5 is too thin — the system just parrots back what you gave it. 50 overwhelms without structure. 10-15 is where the system starts seeing patterns across your data.

**Don't overthink curation.** Grab the calls and docs you have access to today. The `/learn` command can process more material anytime. This is your starting point, not your entire knowledge base.

**Validation:** You have 10+ files in `docs/`. They're a mix of types (transcripts + competitor pages + internal docs), not all the same thing.

### Step 4: Configure MCP servers — Google Drive + Slack (20 min)

**What you'll build:** Live connections between Claude and your tools.

1. In your project folder, create or open `.claude/settings.local.json`
2. Paste the following configuration (replace the placeholder values with your actual API keys):

```json
{
  "mcpServers": {
    "google-drive": {
      "command": "npx",
      "args": ["-y", "@anthropic-ai/mcp-google-drive"],
      "env": {
        "GOOGLE_CLIENT_ID": "your-client-id",
        "GOOGLE_CLIENT_SECRET": "your-client-secret"
      }
    },
    "slack": {
      "command": "npx",
      "args": ["-y", "@anthropic-ai/mcp-slack"],
      "env": {
        "SLACK_BOT_TOKEN": "your-slack-bot-token",
        "SLACK_TEAM_ID": "your-slack-team-id"
      }
    }
  }
}
```

1. **Google Drive setup:**
  - You'll receive API credentials in the setup Slack channel
  - When you first use a Google Drive command, Claude will open a browser window for OAuth authorisation
  - Authorise with your Crescendo Google account
  - Test: Ask Claude "Search my Google Drive for the latest competitive battlecard"
2. **Slack setup:**
  - Slack bot token and team ID will be provided in the setup channel
  - Test: Ask Claude "Search Slack for the latest messages in #competitive-intel"

**Troubleshooting:**

- If Google Drive shows no results, check you authorised the right Google account
- If Slack won't connect, the bot token may need workspace admin approval — check with IT
- If `npx` command fails, make sure Node.js is installed (`node --version` in Terminal)

### Step 5: Create GitHub repo + .gitignore (15 min)

**What you'll build:** A shared repository the whole team can clone.

1. Open Terminal in your `crescendo-marketing` folder
2. Initialise the repo:

```bash
git init
```

1. Create a `.gitignore` file with this content (copy-paste exactly):

```
# API keys and secrets — NEVER commit these
.env
.env.local
.env.*

# Personal settings
.claude/settings.local.json
.claude/apis/
.claude/plans/
.claude/sessions/

# OS files
.DS_Store
Thumbs.db

# Node modules (if using MCP scripts)
node_modules/
```

1. Stage and commit:

```bash
git add .gitignore CLAUDE.md
git commit -m "Initial setup: CLAUDE.md + .gitignore"
```

1. Create a repo on GitHub:
  - Go to github.com, click New Repository
  - Name it `crescendo-marketing`
  - Make it **private**
  - Don't add a README (you already have CLAUDE.md)
  - Follow the "push an existing repository" instructions GitHub shows you
2. Push:

```bash
git remote add origin https://github.com/YOUR-USERNAME/crescendo-marketing.git
git branch -M main
git push -u origin main
```

1. Share the repo link in the team Slack channel

**Validation:** Visit your GitHub repo in a browser. You should see `CLAUDE.md` and `.gitignore`. You should NOT see `.env` or `settings.local.json`.

### Step 6: Install Chrome extension + analyse competitor pages (15 min)

1. Install the Claude Chrome extension from the Chrome Web Store
2. Visit sierra.ai
3. Open the Claude extension, ask: "Analyse this company's homepage positioning. What are their primary claims, their target audience, and their key differentiators?"
4. Save the analysis somewhere you'll find it (paste into a doc in `docs/competitors/`)
5. Repeat for:
  - Decagon (decagon.ai)
  - Intercom Fin (intercom.com/fin)
6. Test: "Compare what you see on Sierra's homepage vs what's in my CLAUDE.md about them"

### Step 7: Build 1 skill from your intake form (30 min)

1. Pull up the repeatable process you listed as your #1 most frequent task in the intake form
2. Open the Claude Code panel
3. Describe the process: "I want to create a reusable skill that does [your process]. Here's what I do each time: [steps]. Here's an example of good output: [paste an example]."
4. Claude will generate a structured skill. Save it as a markdown file in `.claude/skills/` (create the folder if it doesn't exist)
5. Run the skill once with real input
6. Rate the output 1-5. If below 4, tell Claude what to change and iterate

**Validation:** The skill produces output you'd actually use — not a "decent first draft" but something close to what you'd share with a colleague.

### Step 8: Set up Dispatch (10 min)

1. On your phone, open the Claude mobile app
2. Follow the pairing instructions to connect to your desktop instance (QR code)
3. Text one real task from your phone: "Draft a one-paragraph competitive update on Sierra for the team Slack"
4. Check your desktop — Claude should execute with full access to your CLAUDE.md and MCP servers
5. Rate the output 1-5

### Step 9: Share your best output in Slack (10 min)

1. Pick the best output from today — your CLAUDE.md paragraph test, a competitor analysis, or your first skill output
2. Post it in the team Slack channel with a note: "This is my [what it is]. Generated using Claude Code with my CLAUDE.md loaded. Took [time]. Rated it [1-5]."

### Role-specific additions

**Nicole (Comms, Level 3):**
Build a "draft social post for LinkedIn" skill using Crescendo's voice guidelines from your CLAUDE.md. Test it with a real topic (product update, event announcement, team highlight). Iterate until the tone matches what you'd actually post.

**Mike (SVP, Level 5) — bonus context layer cycle (2-3 hrs extra):**
Run Matteo's skill templates in sequence — each output feeds the next:

1. `/competitor-research Sierra` → structured competitive intel
2. `/win-loss-analysis` → use a recent closed deal from HubSpot
3. `/icp-research` → build out Crescendo's buyer profiles
4. `/positioning` → generate executable positioning framework
5. `/product-messaging` → create persona-specific messaging variants

By the end, you have the complete foundation layer. Everything in weeks 2-4 builds on this.

**Sr Designer (Level 2):**
Connect the Figma MCP server (credentials in Slack). Build a "design brief from Slack request" skill — paste a Slack message from someone asking for a design, and the skill outputs a structured brief with specs, dimensions, tone, and deadline.

**Web Dev (Level 3):**
Connect the HubSpot MCP server. Build a "press release to web page" skill — input a press release draft, output formatted web-ready content with SEO meta descriptions and structured headings.

**Creative Director (Level 2):**
Build a "deck outline generator" skill. Input a topic and audience, output a structured presentation outline with key messages per slide, talking points, and visual direction notes.

**VP Brand (Level 3):**
Build a "customer story draft" skill with brand voice reference. Input a customer name and key results, output a first-draft case study that follows Crescendo's storytelling format and voice.

**Event Manager (Level 2):**  
Build an "event recap email" skill. Input event name, key takeaways, and attendance numbers. Output a polished recap email ready to sendst to attendees and internal stakeholders.

**Marketing Ops (Level 4):**
Connect Clay + HubSpot MCP servers. Build a "lead routing QA" skill — input a batch of recent leads, output a quality check flagging misrouted leads, missing fields, and scoring anomalies.

---

## Troubleshooting, validation, and success criteria

### Common issues


| Problem                                     | Likely cause                                                      | Fix                                                                                                                          |
| ------------------------------------------- | ----------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| Claude gives generic output about Crescendo | CLAUDE.md not in project root or not being loaded                 | Make sure the file is named exactly `CLAUDE.md` (case-sensitive) and lives in your project root folder. Restart Claude Code. |
| VS Code extension doesn't show up           | Extension not installed or VS Code needs restart                  | Reinstall the extension. Quit and reopen VS Code.                                                                            |
| MCP server won't connect                    | Missing Node.js or wrong API credentials                          | Run `node --version` in Terminal. If not found, install from nodejs.org. Double-check API keys in `settings.local.json`.     |
| Google Drive shows no results               | Wrong Google account authorised                                   | Sign out, re-authorise with your Crescendo Google account.                                                                   |
| Slack connector blocked                     | Workspace admin approval needed                                   | Check with IT. The Slack bot needs to be approved for your workspace.                                                        |
| `git push` fails                            | No remote set up or authentication issue                          | Follow the exact GitHub instructions after creating the repo. You may need to set up a personal access token or SSH key.     |
| Dispatch won't pair from phone              | Phone and desktop not on same network, or Claude Code not running | Ensure both devices are on the same WiFi. Make sure Claude Code is open and running on your desktop.                         |
| Chrome extension can't read page            | Page is behind a login wall                                       | Log in first, then activate the extension.                                                                                   |
| Skill output is mediocre                    | Too little context in the prompt or CLAUDE.md too vague           | Add specific Crescendo examples to the skill description. Point to real files. The more context, the better.                 |
| `.gitignore` not working                    | Files were committed before `.gitignore` was created              | Run `git rm --cached .env` (or the file in question) then commit. The file will be untracked going forward.                  |


### Validation checklist

- Start a fresh Claude Code session and ask "Who am I?" — does Claude know Crescendo, your role, and your competitors?
- Ask "Describe Crescendo vs Sierra" — does it use your competitive landscape from CLAUDE.md, not generic internet info?
- Ask "Search my Google Drive for [a file you know exists]" — does it find it?
- Ask "Search Slack for the latest messages in #competitive-intel" — does it return results?
- Visit your GitHub repo in a browser — is CLAUDE.md visible? Is `.env` absent?
- Run your skill twice with different inputs — is output quality consistent?
- Send a Dispatch message from your phone — does it execute with your full context?

### Success criteria

- Claude Code installed and running (VS Code extension, Cursor, or CLI)
- CLAUDE.md written and loaded — covers identity, voice, competitors, quality standards
- 2+ MCP servers configured and tested (Google Drive + Slack minimum)
- GitHub repo created with `.gitignore`, CLAUDE.md pushed, repo shared in Slack
- Folder structure created (`.claude/`, `docs/`, `outputs/`)
- Chrome extension installed, 2-3 competitor pages analysed
- 1 skill built from intake form process, tested with real input
- Dispatch used at least once from phone
- 1 output shared with team in Slack
- (Mike bonus) Context layer cycle complete

---

## What Matteo shares in Slack

After the Monday session, you'll find these in the team Slack channel. If something isn't there within 24 hours, post in Slack and ask.

**Templates (for your homework):**

- CLAUDE.md template prompt — same as appended below. Use this to write your full CLAUDE.md.
- `.gitignore` template — copy-paste exactly into your project root. Don't edit it manually.
- MCP connector JSON configs for Google Drive + Slack — paste into your `settings.local.json`.

**Role-specific additions:**

- **Nicole** — LinkedIn skill template: structured prompt for drafting social posts in Crescendo's voice
- **Mike** — Full context layer cycle templates: competitor-research → win-loss-analysis → icp-research → positioning → product-messaging. Run in sequence for the bonus homework.
- **Sr Designer** — Figma MCP setup instructions and credentials
- **Web Dev** — HubSpot MCP setup instructions and credentials

**Links:**

- Claude Code extension for VS Code
- Claude Chrome extension install link
- WisprFlow install link (wisprflow.com)
- skills.sh community skill library ([https://skills.sh/trending](https://skills.sh/trending))

---

## Outro

**What you built this week:**
A Claude Code instance that knows Crescendo. Every conversation from now on starts with your competitive landscape, your voice, your audiences, and your quality standards loaded automatically. Your team shares this through Git — anyone who clones the repo gets the same foundation.

**What to bring to Thursday's showcase:**

- Your CLAUDE.md — be ready to show the "describe Crescendo" test live
- Your best skill output — share screen, show input and output
- One thing that surprised you (good or bad)
- One question or blocker

**What to prepare for next week:**

- Make sure all MCP servers are working — you'll need them for skill chaining
- Note any processes you wish were skills but couldn't figure out how to build
- Think about quality issues you've seen in AI output — those become hooks in W2
- If you tried skills.sh ([https://skills.sh/trending](https://skills.sh/trending)), note 2-3 skills you'd want to adapt

---

## Useful links

**Anthropic official:**

- [Claude Code overview](https://docs.anthropic.com/en/docs/claude-code/overview)
- [Claude Code getting started](https://docs.anthropic.com/en/docs/claude-code/getting-started)
- [CLAUDE.md best practices](https://docs.anthropic.com/en/docs/claude-code/memory)
- [MCP server configuration](https://docs.anthropic.com/en/docs/claude-code/mcp-servers)
- [Claude Code VS Code extension](https://marketplace.visualstudio.com/items?itemName=anthropic.claude-code)
- [Claude Code CLI reference](https://docs.anthropic.com/en/docs/claude-code/cli-reference)

**Trusted third-party:**

- [skills.sh — community skill library](https://skills.sh/trending)
- [Claude Code for non-engineers (Forte Labs)](https://fortelabs.com/blog/claude-code-for-non-engineers/)
- [CLAUDE.md examples and patterns (GitHub)](https://github.com/anthropics/claude-code/tree/main/examples)
- [MCP server directory](https://github.com/modelcontextprotocol/servers)

**Tools:**

- [WisprFlow (voice-to-text)](https://wisprflow.com)
- [Claude Chrome Extension](https://chromewebstore.google.com/detail/claude/nnnkkbgkjkcajhdppbdgollpbeddaimh)
- [VS Code](https://code.visualstudio.com/)
- [Cursor](https://cursor.com/)
- [GitHub](https://github.com/)

---

## Appended prompts

### CLAUDE.md template prompt

*(Copy and paste this into Claude Code in chat mode. Answer the questions, then save the output as `CLAUDE.md` in your project root.)*

```
I need you to help me write my CLAUDE.md file for Claude Code. This is the persistent context document that shapes every response you give me — loaded automatically every session. Think of it as my marketing brain encoded in a file.

Ask me these questions one at a time. After I answer all of them, generate my complete CLAUDE.md as a single block I can save to my project root.

1. **Who are you and what does your company do?**
   Your name, title, company name, and what the company does in one sentence. What makes you different from competitors?

2. **What is Claude's role?**
   What should Claude act as when working with you? "Embedded marketing operator"? "Senior PMM"? "Content strategist"? Define the expertise Claude should bring to every conversation.

3. **What does your voice sound like?**
   Describe your brand voice in 3-5 adjectives. What tone do you use in external content? Are there specific formatting rules (em dashes, sentence case, bullet styles)? Are there words or phrases you always use? Words that are banned?

4. **What are your critical rules?**
   What should Claude always do? (e.g., cite sources, use active voice, check claims against data)
   What should Claude never do? (e.g., fabricate metrics, use corporate buzzwords, invent testimonials)

5. **Who are your competitors?**
   Name 3-5 competitors. For each, give a one-line description and what makes them different from you. Include funding or market position if relevant.

6. **Who are your audiences?**
   Describe 2-3 personas you write for or sell to — their titles, pain points, and what they care about when evaluating your product.

7. **What tools does your team use?**
   List your key tools: CRM, design tools, analytics, content management, social, project management. Claude will reference these when suggesting workflows.

Once I've answered all 7, generate my CLAUDE.md using this structure:

---

## Who I Am
[Company identity, one-sentence description, key differentiators]

## Your Role
[What Claude acts as — the expertise and perspective it brings]

## Voice and Style
### Tone
[Brand voice adjectives and description]
### Formatting Rules
[Em dashes, sentence case, bullet styles, any specific conventions]

## Critical Rules
### DO
[List of things Claude must always do]
### DON'T
[List of things Claude must never do]

## Competitive Landscape
[Competitors with one-line descriptions and differentiators]

## Key URLs
[Website, CRM, important internal links]

## Tool Stack
[Team's tools by category]

---

Write the output as instructions to Claude, not as a description of me. Direct, concise, no filler. Every line should earn its place.
```

