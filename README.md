# Genesys Claude Code for GTM — quickstart

Get Claude Code running your go-to-market research in 30 minutes. Clone this repo, run two commands, and walk away with competitive intelligence, ICP profiles, positioning, and a messaging library — all built on your actual company data.

<!-- TODO: Add hero screenshot — see "Screenshots to take" section at the bottom -->
<!-- ![Claude Code for GTM in Cursor](docs/images/quickstart-cursor.png) -->

---

## Quick start (3 steps)

Already familiar with Claude Code and Git? Here's the fast path:

```bash
git clone https://github.com/matteotitta/claude-code-gtm-quickstart.git
cd claude-code-gtm-quickstart
```

Open in Cursor or VS Code. Click the orange Claude Code icon in the right sidebar.

1. Type `/quickstart` — guided tour + generates your personalized CLAUDE.md
2. Type `/context-loop` — runs 5 research and strategy skills in sequence
3. Type `/health-check` — verify everything worked

**New to all of this?** Keep reading — the full guide covers everything from installing Cursor to pushing your work to GitHub.

---

## Who this is for

B2B marketing operators who want to learn Claude Code for GTM work — product marketers, content strategists, demand gen and growth marketers, brand managers, marketing ops, GTM engineers, and everything in between.

You don't need to know how to code. You don't need terminal experience. You don't need to have used GitHub before. This repo is designed for marketers who want the power of Claude Code without the developer learning curve.

**This is not:**
- A chatbot or prompt library
- A developer tool (though developers can use it too)
- A replacement for strategic thinking (it accelerates your process, it doesn't replace your judgment)

---

## Requirements

- **Claude Max** ($100/mo, recommended) or **Pro** ($20/mo) — get one week on me at [claude.ai]([https://claude.ai](https://claude.ai/referral/vq_wUYBj3A))
- **Mac** computer with admin access
- **Cursor** IDE (free) or **VS Code** (free) — [cursor.com](https://cursor.com) / [code.visualstudio.com](https://code.visualstudio.com)
- **VS Code Extension for Claude Code** — a UI upgrade for your Claude Code experience inside your IDE
- Stable internet connection
- No API keys needed to start (optional upgrades available later)

<details>
<summary>What is a Claude subscription? How is this different from ChatGPT?</summary>

Claude is Anthropic's AI model. Claude Code is a tool that runs Claude *inside your project folder* — it can read your files, create new ones, search the web, and follow structured processes (skills). This is fundamentally different from a browser chatbot like ChatGPT or Claude.ai, because Claude Code works with your actual files and remembers your context across sessions via CLAUDE.md.

You need a paid Claude subscription (Max or Pro) to use Claude Code. The free tier doesn't work. Max ($100/mo) gives you more usage and access to the most powerful model (Opus). Pro ($20/mo) works but you'll hit usage limits faster.

</details>

---

## What you get

This repo is a pre-configured Claude Code workspace for B2B marketing operators. Everything is set up for you: the folder structure, the skills, the commands, the agents, and the templates. You just add your company's inputs and run the skills.

### The context engineering loop

```
company-context → competitor-research (parallel) → icp-research → positioning → product-messaging → linkedin-content
     (context)              (context)               (context)     (strategy)      (strategy)           (execution)
```

You start with context. Context feeds strategy. Strategy feeds execution. Every piece builds on the last.

Prompt engineering is how you ask the question. Context engineering is what Claude knows *before* you ask anything. A great prompt with zero context produces internet-grade marketing copy. A simple prompt with rich context — your positioning against specific competitors, your ICP's actual pain points, your brand voice rules — produces output that sounds like it came from inside your company. That's what this repo sets up.

<details>
<summary>How context engineering works in practice</summary>

When you run `/competitor-research Acme`, Claude doesn't start from scratch. It already knows your company (from `/company-context`), your voice (from `CLAUDE.md`), and your quality standards (from the skill's built-in guardrails). The output isn't a generic competitor overview — it's a competitive analysis through the lens of *your* positioning.

Every skill in this repo builds on previous outputs. Company context feeds competitor research. Both feed ICP research. All three feed positioning. Positioning feeds messaging. This is the context engineering loop — each layer makes the next one sharper.

</details>

### CLAUDE.md — your persistent context

CLAUDE.md is a file that Claude Code loads automatically at the start of every session. It tells Claude who you are, what your company does, who your competitors are, what your voice sounds like, and what your quality standards are. Think of it as encoding your company's brain in a file.

The `/quickstart` command generates your personalized CLAUDE.md through a guided conversation. Every session after that starts with this context loaded — no more re-explaining what your company does.

<details>
<summary>How CLAUDE.md loading works</summary>

Claude Code loads CLAUDE.md files at three levels, all additive:

- `~/.claude/CLAUDE.md` — Global (applies to all your projects)
- `./CLAUDE.md` — Project root (this is where yours lives — most common)
- `./subfolder/CLAUDE.md` — Subfolder-specific (for client work or sub-projects)

Every line in CLAUDE.md shapes every response. The more specific your context, the better the output. Start lean and iterate — every time Claude gets something wrong, add a rule to prevent it.

When you run `/quickstart`, you'll interactively create your CLAUDE.md file based on your profile and line of work.

</details>

### Skills

Skills are reusable prompt templates saved as files. Instead of re-explaining competitive analysis every session, you build a skill once and run `/competitor-research Acme` forever. The skill handles the process, the output format, and the quality checks — you just name the competitor.

Each skill folder includes an `example-output.md` so you can see what the skill produces before running it on your own company. The `/company-context` skill has a fully worked example using Linear as a reference.

In this quickstart, you'll get the following skills directly from my library:

| Skill | Level | What it produces |
|-------|-------|-----------------|
| `/company-context` | Research | Your company's market position, traction, team, funding |
| `/competitor-research` | Research | Deep competitor profiles (one per competitor) |
| `/icp-research` | Research | Ideal customer profiles, personas, buying journey |
| `/positioning` | Strategy | Category, alternatives, differentiators, positioning statement |
| `/product-messaging` | Strategy | Value props, proof points, messaging blocks |
| `/tov-guidelines` | Brand | Voice patterns, vocabulary, do/don't guidelines |
| `/brand-guidelines` | Brand | Visual + verbal identity, design tokens, CSS variables |
| `/content-strategy` | Strategy | Channel mix, content pillars, editorial plan |
| `/steal` | Meta | Break down what makes something work, adapt it for you |

If you want more skills, subscribe to my [newsletter](https://newsletter.genesysgrowth.com/).

<details>
<summary>What is a skill? How do they work?</summary>

A skill is a markdown file (SKILL.md) saved inside `.claude/skills/[skill-name]/`. It contains structured instructions that Claude follows when you invoke the skill by name.

**The bare prompt principle:** A great skill strips away everything except the minimum input needed from you. Instead of typing "Create a competitive analysis of Acme Corp. Use a structured format with positioning, pricing, features, strengths, weaknesses. Source all claims. Don't invent data..." — you just type `/competitor-research Acme`. The skill file handles the rest.

Skills live at `.claude/skills/[skill-name]/SKILL.md`. You can read, edit, or create new ones anytime. The `templates/SKILL-MD-TEMPLATE.md` file walks you through building your own in 7 questions.

</details>

### Commands

Commands are quick-access prompts you trigger with `/`. They're different from skills — commands are one-off workflows (like onboarding or diagnostics), while skills are repeatable tasks (like competitive analysis).

| Command | What it does |
|---------|-------------|
| `/quickstart` | Guided Cursor tour + CLAUDE.md generation |
| `/context-loop` | Run all 5 context engineering skills in sequence |
| `/health-check` | Verify system state — CLAUDE.md, skills, outputs |
| `/next-steps` | Post-loop guidance — what to build next |

<details>
<summary>What is a command? How are they different from skills?</summary>

Commands live at `.claude/commands/[name].md`. They're markdown files with instructions, just like skills. The difference is intent:

- **Commands** = workflows you run once or occasionally (onboarding, diagnostics, guidance)
- **Skills** = tasks you repeat regularly (research, analysis, content creation)

Both are invoked with `/` in the Claude Code chat. You can create your own commands by adding markdown files to `.claude/commands/`.

</details>

### Agents

Agents are specialized sub-processes that handle specific types of work. When you run `/context-loop`, Claude dispatches one agent per competitor and researches them all simultaneously — like sending 3 analysts to research 3 companies at the same time, instead of doing them one by one.

| Agent | What it does |
|-------|-------------|
| `competitor-researcher` | Deep competitive analysis across positioning, pricing, features, content |
| `market-researcher` | Company background, traction data, ICP profiling |

<details>
<summary>What is an agent? When do they run?</summary>

Agents are markdown files at `.claude/agents/[name].md` that define a specialized role — what tools it can use, what skills it owns, and what quality standards it follows.

Claude launches agents automatically when a task benefits from parallel execution. The most common example: competitor research. If you have 3 competitors, Claude spawns 3 `competitor-researcher` agents that run simultaneously instead of sequentially. You don't need to manage agents directly — they're dispatched behind the scenes.

</details>

### Templates

Two templates help you extend the system:

- **`templates/CLAUDE-MD-TEMPLATE.md`** — A guided prompt for writing your CLAUDE.md from scratch. Asks 7 questions and generates the file. Useful if you want to start over or create a CLAUDE.md for a different project.
- **`templates/SKILL-MD-TEMPLATE.md`** — A guided prompt for building custom skills. Describes the 7-section SKILL.md structure and walks you through creating your own reusable skill.

---

## Key concepts

Before you set things up, it helps to understand what Claude Code actually is and how it differs from chatbots you may have used.

<details>
<summary>Claude Code is not a chatbot</summary>

The difference between asking ChatGPT "write me a competitive overview" and running `/competitor-research Acme` in Claude Code is the difference between a random freelancer and someone who's been at your company for a year. The freelancer needs a brief every time. The colleague already knows your positioning, your voice, your ICP, and your banned words.

That gap comes from four layers that stack on top of each other:

1. **CLAUDE.md** — who you are. Loaded automatically every session. Encodes your identity, voice, competitors, quality standards.
2. **Skills** — what you do. Reusable, structured prompts. `/competitor-research Acme` runs the same quality process every time.
3. **Agents** — how work scales. Specialized sub-processes that run tasks in parallel.
4. **Folder structure** — where things live. Claude reads your filesystem for context. When you're working in `context/`, Claude knows you're doing research. When you're in `marketing/content/`, it shifts to content mode.

This quickstart gives you layers 1-3 pre-built. Layer 4 is the folder structure you're cloning right now.

</details>

<details>
<summary>The three modes</summary>

Claude Code runs in three modes. You'll see these at the top of the Claude Code panel:

- **Ask before edits** (default) — Claude proposes changes and asks for your approval before making each file edit. Start here to build confidence and stay in control.
- **Edit automatically** — Claude makes file edits directly without asking. The default for daily work once you trust the system.
- **Plan mode** — Claude explores your files and presents a plan before executing anything. Best for complex multi-step work where you want to review the approach first.

Start in "Ask before edits." Move to "Edit automatically" as you get comfortable. Use "Plan mode" for anything complex or high-stakes.

</details>

<details>
<summary>The effort slider</summary>

The effort slider (in the Claude Code panel) controls how deeply Claude thinks before responding:

- **Low** — Quick, concise answers. Good for simple questions or fast iteration.
- **Medium** — Standard work quality. The default for most tasks.
- **High** — Deep, thorough analysis. Use this for research skills, competitive analysis, and anything where quality matters more than speed.

For the context engineering loop, keep effort on High.

</details>

<details>
<summary>MCP servers — connecting Claude to your tools</summary>

MCP (Model Context Protocol) servers let Claude connect directly to external tools — Google Drive, Slack, Notion, HubSpot, and more. Without MCP servers, Claude is smart but blind to your tools. With them, it can search your Google Drive, read Slack threads, and push documents to shared folders.

You don't need MCP servers for this quickstart. They're the natural next step after you have your context foundation built. Setup instructions are covered in the skills library (Week 2 of the programme).

</details>

<details>
<summary>Building your own skills</summary>

Every skill is a markdown file you can read and edit. When you find yourself explaining the same task to Claude more than twice, it's a skill candidate.

Open `templates/SKILL-MD-TEMPLATE.md` — it walks you through building a custom skill in 7 questions. Common first skills people build:

- A LinkedIn post writer that matches your voice
- A meeting prep skill that researches attendees
- A weekly newsletter outline generator
- A case study template that follows your format

Save your skill to `.claude/skills/[skill-name]/SKILL.md` and invoke it by name: `/skill-name`.

</details>

---

## Step-by-step setup

### Step 1: Install Cursor (5 min)

1. Go to [cursor.com](https://cursor.com)
2. Download the Mac version (.dmg file)
3. Open the .dmg file from Downloads
4. Drag the Cursor icon into the Applications folder
5. Open Finder, go to Applications, find Cursor
6. **Right-click** Cursor and click **Open** (not double-click — this bypasses the macOS security warning on first launch)
7. Create a Cursor account (free) when prompted

**Verify:** Cursor opens with a welcome screen and you see a File menu at the top.

<details>
<summary>Why Cursor instead of VS Code?</summary>

Cursor is a free code editor built on the same foundation as VS Code. It has all the same features, plus built-in AI capabilities. Both work equally well with Claude Code. If you already use VS Code, that works too — install the Claude Code extension from the Extensions marketplace (search "Claude Code").

</details>

### Step 2: Install the VS Claude Code extension (3 min)

1. In Cursor, find the **Extensions icon** in the left sidebar (looks like 4 squares)
2. Click it
3. Search for: `Claude Code for VS Code`
4. Click **Install**
5. Wait for the install to complete
6. Look for the **orange Claude icon** in the right sidebar
7. Or press `Cmd+Shift+P` → search "Claude Code: Focus Input" → that's your everyday Claude Code UI within Cursor

**Verify:** The Claude Code panel looks like the below.


### Step 3: Authenticate Claude Code (2 min)

1. In the Claude Code panel, write anything (eg. 'Hi') and press Enter
2. You'll be prompted to **"Sign in with Claude subscription"**
3. Your browser opens — log in with your Claude Max or Pro account
4. Approve the connection when prompted
5. Return to Cursor

**Verify:** The Claude Code panel no longer shows a sign-in prompt. You see a text input where you can type messages.

**If you see "only available for premium seats":** You need Claude Max ($100/mo) or Pro ($20/mo). The free tier does not work with Claude Code.

### Step 4: Clone this repo (3 min)

1. In Claude UI, paste the below, paste this command and press Enter:

```bash
git clone https://github.com/matteotitta/claude-code-gtm-quickstart.git .
```

2. Wait for cloning to complete
3. You should see files appear in the left sidebar (Explorer, which is the navigation for your folder structure)
4. If you don't see the Explorer, press `Cmd+B`

**Verify:** You can see folders like `.claude/`, `context/`, `marketing/`, and files like `CLAUDE.md` and `README.md` in the Explorer.

<details>
<summary>What just happened?</summary>

"Cloning" means downloading a complete copy of this project to your computer. The project includes all the skills, commands, agents, templates, folder structure, and starter files — ready to use.

The `.` at the end of the command means "put the files in the current folder" (the one you just created and opened). Without it, Git would create another folder inside your folder.

If the command fails with "command not found," you need to install Git first. Open Terminal (the built-in Mac app, separate from Cursor's terminal) and run: `xcode-select --install`. This installs Apple's developer tools including Git. Then try the clone command again.

</details>

### Step 5: Test that it works (2 min)

1. Use `Cmd+Shift+P` → search "Claude Code: Focus Input" to open a new conversation with Claude Code
2. Type this message and press Enter:

```
What files are in this repository? Give me a quick overview.
```

3. Claude should respond by listing the folders and files it can see

**Verify:** Claude describes the folder structure — `.claude/`, `context/`, `marketing/`, etc.

### Step 6: Run /quickstart (15 min)

Before starting, have these ready:
- Your company website URL
- 2-5 competitor names (and their websites if you know them)
- Your role / title
- 3-5 adjectives that describe your brand voice
- Any words Claude should never use in your content

Type `/quickstart` in the Claude Code panel and press Enter. Claude will walk you through:

1. **A tour of the Cursor interface** — the three modes, the effort slider, commands, and shortcuts
2. **5 questions about your company** — your role, audiences, voice, quality standards, and competitors
3. **Generates your personalized CLAUDE.md** — saves it to the project root, overwriting the starter template
4. **A verification test** — Claude writes a one-paragraph description of your company using only the context from your new CLAUDE.md

After the verification test, review the paragraph. Does it sound like your company? Does it mention the right competitors? Does it use the right tone? If anything is off, tell Claude to adjust the CLAUDE.md.

**Verify:** Start a fresh Claude Code conversation and ask "Describe my company in one paragraph." If the response is accurate and uses your voice, your CLAUDE.md is working.

<details>
<summary>What are the three modes I just learned about?</summary>

During the tour, Claude explained three modes:

- **Ask before edits** — Claude shows you proposed changes and waits for approval. You're probably in this mode now.
- **Edit automatically** — Claude makes changes directly. Faster, but you need to trust the direction.
- **Plan mode** — Claude explores and plans before acting. Use for complex tasks.

You also learned about the **effort slider** — keep it high for research tasks (like the context loop you're about to run), lower for quick questions.

</details>

### Step 7: Run the context engineering loop (25 min)

You have two options:

**Option A: Run the full loop automatically**

Type `/context-loop` and press Enter. Claude runs all 5 skills in sequence, each feeding into the next:

1. Researches your company (traction, team, funding, customers) — ~5 min
2. Researches your competitors in parallel (one agent per competitor) — ~10 min
3. Builds your ideal customer profile — ~5 min
4. Synthesizes your positioning strategy — ~3 min
5. Generates your messaging library — ~3 min

All outputs save to the right folders automatically. When it finishes, Claude shows a summary table and commits everything to git.

**Option B: Run each skill individually**

If you want more control — to review and adjust between steps — run each skill on its own:

```
/company-context
/competitor-research [competitor name and URL]    ← run once per competitor
/icp-research
/positioning
/product-messaging
```

Each skill reads the outputs from previous skills automatically. The order matters — run them in the sequence above.

**Verify:** After the loop completes, check the `context/` folder — you should see files like `0426-company-context.md` and `0426-competitor-[name].md`. Check `marketing/product-marketing/` for positioning and messaging files.

0426-name is my preferred naming convention for documents: 0426 stands for MMYY, so you know when each document was created to quickly identify recency.

### Step 8: Run /health-check (1 min)

Type `/health-check` to verify everything is set up correctly. It checks:

- CLAUDE.md is personalized (not the starter template)
- All 9 skills are available
- Both agents are available
- Context outputs exist
- Marketing outputs exist

**Verify:** Health check shows all green checkmarks. If anything is missing, it tells you what to run.

---

## Save and share your work (Git + GitHub)

Your outputs are saved locally. To back them up to the cloud and share with your team, you need Git and GitHub.

### What is Git?

Git is version history for your files — like Track Changes in Google Docs, but for an entire project folder. Every time you save a snapshot (called a "commit"), Git remembers exactly what changed and when. You can always go back.

**GitHub** is where your Git snapshots live online. Think of it as Google Drive for your project — it backs up your work, lets others access it, and keeps a history of every change.

### Save your work locally (commit)

Three commands. That's it:

```bash
git add .                                    # 1. Stage — tell Git what to include
git commit -m "Add context engineering outputs"   # 2. Commit — name the snapshot
```

"Stage" means selecting which changes to include in the snapshot. `git add .` stages everything. `git commit -m "message"` creates the named snapshot.

Run these in the terminal inside Cursor (Terminal > New Terminal if you don't see one).

You can also ask Claude to "save your work locally" via the chat UI.

### Push to GitHub

1. Go to [github.com](https://github.com) and create a free account (if you don't have one)
2. Click the **+** icon (top right) → **New repository**
3. Name it something like `my-gtm-workspace`
4. Set it to **Private** (your company context is sensitive — keep it private)
5. Do NOT check "Add a README" (you already have one)
6. Click **Create repository**
7. GitHub shows you setup instructions. Copy the two commands under "push an existing repository" — they look like this:

```bash
git remote add origin https://github.com/YOUR-USERNAME/my-gtm-workspace.git
git push -u origin main
```

8. Paste them into the terminal in Cursor and press Enter
9. If prompted for a password, enter your GitHub credentials (your typing won't show — that's normal, not a bug)

**Verify:** Visit your GitHub repo in a browser. You should see your CLAUDE.md, `context/` files, and `marketing/` files. You should NOT see `.env` or any API keys.

### The three commands you'll use every week

```bash
git add .                              # Stage all changes
git commit -m "Add [what you did]"     # Name the snapshot
git push                               # Back it up to GitHub
```

That's the entire Git workflow for a solo operator. Snapshot, name it, back it up.

<details>
<summary>Working with a team — branches, pull requests, and approvals</summary>

If you're working with a team (not just solo), Git has a built-in review system that lets different people own different parts of the project.

**Branches** — A branch is a parallel copy of your project. You work on your branch without affecting the main version. When your work is ready, you propose merging it back.

```bash
git checkout -b update-positioning     # Create a new branch
# ... make your changes ...
git add .
git commit -m "Update positioning for Q2"
git push -u origin update-positioning  # Push the branch to GitHub
```

**Pull requests (PRs)** — A pull request is a formal proposal to merge your branch into the main version. It shows exactly what changed, and the reviewer can approve, comment, or request changes. Create one on GitHub after pushing your branch.

**Folder-level ownership** — Different team members can own different parts of the project:
- CMO reviews changes in `marketing/product-marketing/` (eg. positioning, messaging)
- Head of RevOps reviews changes in their subfolder `marketing/marketing-ops` (eg. lead scoring, routing, enrichment)
- Content lead reviews `marketing/content/` (eg. social posts, newsletters)

GitHub's CODEOWNERS file can enforce this — changes to specific folders automatically request review from the right person.

**Merging** — Once a PR is approved, the reviewer clicks "Merge" on GitHub. The branch changes are applied to the main version. After merging, the branch can be deleted — the changes are now part of the project.

This workflow is optional. If you're a solo operator, just work on main and push directly.

</details>

---

## Folder structure

```
claude-code-gtm-quickstart/
├── .claude/
│   ├── commands/          → /quickstart, /context-loop, /health-check, /next-steps
│   ├── skills/            → 9 skills, each with a SKILL.md and example-output.md
│   │   ├── company-context/
│   │   ├── competitor-research/
│   │   ├── icp-research/
│   │   ├── positioning/
│   │   ├── product-messaging/
│   │   ├── tov-guidelines/
│   │   ├── brand-guidelines/
│   │   ├── content-strategy/
│   │   └── steal/
│   ├── agents/            → competitor-researcher, market-researcher
│   └── settings.json      → Claude Code configuration
├── context/               → Research outputs (company, competitors, ICP)
├── marketing/
│   ├── product-marketing/ → Positioning, messaging
│   ├── demand-gen/
│   │   ├── paid-marketing/    → Ad campaigns, creative briefs
│   │   └── lifecycle-marketing/ → Email sequences, nurture flows
│   ├── content/
│   │   ├── newsletter/        → Newsletter drafts
│   │   ├── social/            → LinkedIn posts, social campaigns
│   │   └── thought-leadership/ → Long-form articles, POV pieces
│   ├── brand/                 → TOV, brand guidelines
│   └── swipe-file/            → Stolen patterns, frameworks, inspiration
├── templates/             → CLAUDE.md + SKILL.md builder prompts
├── examples/              → Redirects to skill-level examples
├── docs/images/           → Screenshots (you'll add these)
├── CLAUDE.md              → Your persistent context (personalized by /quickstart)
├── SETUP-GUIDE.md         → Redirects to this README
└── README.md              → You are here
```

**Key principle:** `context/` is research. `marketing/` is execution. Research feeds execution. Keep them separate, and Claude automatically understands where it is and what kind of work to do.

---

## After the loop

Run `/next-steps` to see what to build next. The highlights:

1. **Push to GitHub** — back up your work to the cloud (see Git section above)
2. **Add API keys** — Exa (better search, 1,000 free/mo at [exa.ai](https://exa.ai)) and Firecrawl (website scraping, 500 free/mo at [firecrawl.dev](https://firecrawl.dev)) make research skills stronger
3. **Run more skills** — `/tov-guidelines` (brand voice), `/brand-guidelines` (visual identity), `/content-strategy` (editorial plan), `/steal` (pattern adaptation)
4. **Build your own skills** — use `templates/SKILL-MD-TEMPLATE.md`
5. **Connect MCP servers** — Google Drive, Notion, Slack (covered in Week 2)

**Recommended order after the loop:** TOV guidelines first (it enriches everything else), then content strategy, then brand guidelines.

---

## Customization

Everything in this repo is a plain text file you can read and edit. Here's how to customize each part:

### Edit your CLAUDE.md

1. In Cursor's Explorer sidebar (left), click `CLAUDE.md`
2. Edit anything — add a competitor, change your voice description, add a banned word
3. Save the file (`Cmd+S`)
4. Start a new Claude Code conversation — your changes are active immediately

You can also ask Claude to edit your CLAUDE.md in natural language via the chat UI.

### Build a new skill

1. In Cursor's Explorer, open `templates/SKILL-MD-TEMPLATE.md` — read the 7-question process
2. Open the Claude Code panel (orange icon, right sidebar)
3. Paste the template prompt into the chat and press Enter
4. Answer Claude's 7 questions one at a time
5. Claude generates a complete SKILL.md — review it
6. Create a new folder: right-click `.claude/skills/` in the Explorer → **New Folder** → name it (lowercase, hyphenated, e.g., `linkedin-post`)
7. Save the SKILL.md inside that folder
8. Test: type `/linkedin-post` (or whatever you named it) in Claude Code

You can also ask Claude to create a new skill following the template in natural language, then instruct it to save it in a specific new or existing folder.

**Recommended**: after creating a skill, run it with sample input and instruct Claude to save the output as a reference example in the skill folder to give it an example of what good output looks like.

### Add API keys for stronger research

1. Sign up at [exa.ai](https://exa.ai) (free tier: 1,000 searches/month) — copy your API key from the dashboard
2. Sign up at [firecrawl.dev](https://firecrawl.dev) (free tier: 500 credits/month) — copy your API key
3. In Cursor's Explorer, right-click the project root → **New File** → name it `.env`
4. Add these two lines (replace with your actual keys):

```
EXA_API_KEY=your-exa-key-here
FIRECRAWL_API_KEY=your-firecrawl-key-here
```

5. Save the file. The `.gitignore` already protects `.env` from being uploaded to GitHub.
6. Restart Claude Code (close and reopen the panel) — skills automatically use these when available

You can also ask Claude to tell you exactly the step-by-step process for adding a new API or MCP connector.

### Create a new agent

1. In Cursor's Explorer, open `.claude/agents/competitor-researcher.md` — read it as a reference
2. Right-click `.claude/agents/` → **New File** → name it (e.g., `content-writer.md`)
3. Copy the structure from the reference agent
4. Edit the name, description, tools, and skill list for your use case
5. Save — Claude will dispatch this agent when relevant tasks come up

You can also ask Claude to create new agents for you in natural language via the chat UI.

### Add folders for your marketing org

1. Right-click in the Explorer → **New Folder**
2. Name it for your work area (e.g., `events/`, `webinars/`, `abm/`, `sales-enablement/`)
3. Inside the new folder, create a `README.md` explaining what goes there — Claude reads these for context
4. Example README content: "Event recap emails, registration summaries, and post-event follow-up sequences."

You can also ask Claude to create or edit names of new folders for you directly via the chat UI.

---

## Troubleshooting

<details>
<summary>Common issues and fixes</summary>

| Problem | Likely cause | Fix |
|---------|-------------|-----|
| Claude gives generic output about your company | CLAUDE.md not in project root or not being loaded | Make sure the file is named exactly `CLAUDE.md` (case-sensitive) and lives in the project root. Restart Claude Code. |
| Claude Code extension doesn't show up | Extension not installed or Cursor needs restart | Reinstall the extension. Quit and reopen Cursor completely. |
| "command not found" when running git clone | Git not installed | Open Terminal (the Mac app) and run: `xcode-select --install`. Follow the prompts, then try again. |
| Claude Code won't authenticate | Wrong subscription tier | You need Claude Max ($100/mo) or Pro ($20/mo). The free tier doesn't work. Log out of claude.ai, log back in, then try again. |
| Files don't appear after cloning | Wrong folder opened | File > Open Folder and re-select the folder you cloned into. |
| `/context-loop` seems stuck | Large research tasks take time | Competitor research in parallel can take 10-15 minutes for 3+ competitors. Let it run. If truly stuck after 20 minutes, start a new conversation and run skills individually. |
| `git push` fails | No remote set up or auth issue | Follow the GitHub setup instructions exactly. You may need to set up a [personal access token](https://github.com/settings/tokens). |
| Skill output is mediocre | Too little context | Add specific examples and details to your CLAUDE.md. The more context, the better the output. Also check the effort slider — set it to High for research skills. |
| "Invisible password" — nothing shows when typing | Normal macOS behavior | When any terminal asks for a password, your typing is invisible (no dots, no asterisks). Type your password and press Enter. |

</details>

---

## Repository details

When you create your own GitHub repo from this quickstart (or fork it), set up the repository details so people can find it:

<!-- TODO: Add screenshot — see "Screenshots to take" section -->
<!-- ![GitHub repository details](docs/images/github-repo-details.png) -->

On GitHub, click the gear icon next to "About" on your repo page:

- **Description:** A one-line summary of what the repo does (e.g., "Claude Code for GTM — our marketing context and skills library")
- **Website:** Your company website or landing page
- **Topics:** Tags that help people find the repo. Examples: `claude-code`, `gtm`, `marketing`, `b2b`

For this quickstart repo:
- Description: "Claude Code for GTM — quickstart repo for marketing operators"
- Website: `https://genesysgrowth.com/`
- Topics: `claude-code`, `gtm`, `marketing`, `b2b-saas`, `ai`, `context-engineering`, `product-marketing`

---

## Part of Genesys' Claude Code program

This quickstart is step 1 of a 4-step progression:

```
W1: Quickstart (this repo)        → Foundation: CLAUDE.md, skills, context loop
W2: Skills library                → Depth: skills packs, MCP + API connectors
W3: Automation + Dispatch         → Speed: recurring tasks, mobile access
W4: Full system                   → Scale: agents, hooks, rules, memory, sessions
```

Each step builds on the last. Complete one to unlock the next.

The quickstart gives you the foundation — your company's context encoded in files, 9 research and strategy skills, and a folder structure that Claude reads automatically. The later steps add depth (more skills, tool integrations), speed (automation, mobile access), and scale (agents, quality gates, team workflows).

For feedback or more, DM Matteo on [LinkedIn](https://www.linkedin.com/in/matteo-titta/).

---

Built by [Matteo Tittarelli](https://www.linkedin.com/in/matteo-titta/), founder & solopreneur at ([Genesys Growth](https://genesysgrowth.com).

Pattern inspired by [Jacob Dietle's context-os-quickstart](https://github.com/jacob-dietle/gtm-context-os-quickstart).

[Book a call](https://calendly.com/genesys-growth/discovery-call) · [Newsletter](https://newsletter.genesysgrowth.com/) · [Star this repo](https://github.com/matteotitta/claude-code-gtm-quickstart)
