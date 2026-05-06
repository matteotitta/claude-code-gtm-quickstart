# Genesys Claude Code Marketing Quickstart — install guide

This pack works on three Claude runtimes: **Claude Code** (full experience, recommended), **Cowork** (plugin upload), and **claude.ai Projects** (lite, manual upload). Five-minute setup on Path A or B; Path C is degraded but functional.

> **Not sure what to pick?** Want the full experience with files, slash commands, and persistence? → **Claude Code (Path A)** — works in the desktop app, VS Code, Cursor, or terminal. Use Cowork? → **Path B**. Only have access to claude.ai in a browser? → **Path C** (lite — no slash commands, no file I/O, but you keep the prompt patterns and folder convention).

---

## Before you start

This guide assumes minimal technical background. A few prereqs you can knock out in 5 minutes if you don't have them yet:

### 1. Claude Code installed

If you don't already have Claude Code, install it: [claude.com/product/claude-code](https://claude.com/product/claude-code). You'll need a Claude Pro or Max plan.

After install, verify it's on your PATH by opening a terminal and running:

```bash
claude --version
```

If you see a version number, you're good. If you get `claude: command not found`, restart your terminal and try again. If still failing, re-run the installer.

### 2. A terminal

- **Mac:** press `Cmd+Space`, type "Terminal", hit Enter.
- **Windows:** press `Start`, type "Command Prompt" or "PowerShell", hit Enter.
- **Linux:** you already know.

### 3. Git installed

The install steps below use `git clone`. If you don't have git:

- **Mac:** run `xcode-select --install` in your terminal — git ships with Apple's command line tools.
- **Windows:** download from [git-scm.com](https://git-scm.com/) and run the installer.
- **Linux:** `sudo apt install git` (Debian/Ubuntu) or your distro's equivalent.

Verify:
```bash
git --version
```

If you see a version number, you're good.

---

## Pick your editor (Path A users)

Claude Code runs in **four** surfaces. Pick whichever you're already comfortable with — the workspace folder is the same regardless. If you're not sure, use the **Claude desktop app** (option 1) — it bundles Claude Code, Cowork, and claude.ai access in a single window.

### Option 1 — Claude desktop app (recommended for non-technical users)

The desktop app is the simplest setup if you don't already use an IDE. It bridges Claude Code (this pack), Cowork, and claude.ai in one tool.

1. Download from [claude.com/download](https://claude.com/download) (Mac and Windows builds).
2. Install + sign in with your Anthropic account.
3. Open the app → **File → Open Folder** → pick your cloned `my-marketing-workspace/` folder.
4. The Claude Code chat panel appears on the right. You're ready.

### Option 2 — VS Code (recommended for technical-curious users)

VS Code is free and fast. Most people who know how to run `git clone` already have it.

1. Install VS Code from [code.visualstudio.com](https://code.visualstudio.com/).
2. Inside VS Code: open **Extensions** (left sidebar) → search `Claude Code` → click **Install** on Anthropic's official extension.
3. Sign in to your Anthropic account when prompted.
4. **File → Open Folder** → pick `my-marketing-workspace/`.
5. Open the Claude Code panel: press `Cmd+Shift+P` (Mac) or `Ctrl+Shift+P` (Windows/Linux), type "Claude Code: Focus", hit Enter.
6. The chat panel opens. Type `/quickstart` to onboard.

### Option 3 — Cursor

Cursor is a Claude-first IDE. Claude Code is a separate install on top of Cursor's built-in AI.

1. Install Cursor from [cursor.com](https://cursor.com/).
2. Open the Cursor command palette (`Cmd+Shift+P` / `Ctrl+Shift+P`) → search **Install Extensions from VSIX** OR open the Extensions sidebar and search `Claude Code`.
3. Install Anthropic's official Claude Code extension. Sign in.
4. **File → Open Folder** → pick `my-marketing-workspace/`.
5. Open the Claude Code panel via the command palette: `Cmd+Shift+P` → "Claude Code: Focus".
6. Type `/quickstart` to onboard.

### Option 4 — Terminal only

For users who don't want an editor at all.

1. Open your terminal.
2. `cd my-marketing-workspace/`
3. Run `claude` — Claude Code launches in the terminal.
4. Type `/quickstart`.

---

## Path A — Claude Code (full experience)

**Prereqs:** Claude Code installed, git installed, an editor or terminal picked from above.

### Steps

1. Open your terminal and clone the repo:

   ```bash
   git clone https://github.com/matteotitta/claude-code-marketing-quickstart.git my-marketing-workspace
   cd my-marketing-workspace
   ```

   You should see git clone the repo over a few seconds, then your terminal prompt should show you're inside `my-marketing-workspace/`.

2. Open the workspace in your chosen editor surface (see "Pick your editor" above):
   - **Desktop app / VS Code / Cursor:** File → Open Folder → pick `my-marketing-workspace/`. Open the Claude Code chat panel.
   - **Terminal:** run `claude` from inside `my-marketing-workspace/`.

3. Run the onboarding command:

   ```
   /quickstart
   ```

   Claude walks you through a tour of the Claude Code UI, asks for your company name + voice + key URLs, then personalizes `marketing/CLAUDE.md` and verifies the `marketing/` folder scaffold.

### Verify it works

Run:

```
/positioning for [your company name]
```

(Replace `[your company name]` with your actual company.)

**What you should see:** Claude asks you for your ICP, your competitive context, and the angle you want to test — *before* producing any output. When it finishes, the draft lands at `marketing/positioning/{MMYY}-positioning.md`.

If you got that, you're set.

### If something goes wrong

**`/quickstart` doesn't appear in the slash-command menu.**
Make sure you opened the cloned repo as the workspace folder (not your home folder, not your Documents folder). Claude Code reads `.claude/` from the current workspace, so the commands won't load if the workspace is wrong. In your editor, **File → Open Folder → pick `my-marketing-workspace/`** specifically.

**Output not saving to `marketing/` folders.**
The folder convention is taught in `CLAUDE.md` (loaded automatically every session). If outputs land elsewhere, run `/quickstart` again — that re-checks the folder scaffold.

**Model selector confusion.**
For research skills (the first chain below), use **Opus** for best results. The model selector is in the top-right of the Claude panel. For quick edits and follow-ups, **Sonnet** is faster.

---

## Path B — Cowork (plugin upload)

**Prereqs:** Cowork account with Personal Plugins enabled.

### What you get with the upload

When you upload the zip to Cowork, you don't just get the slash commands — you inherit the **full repo structure**:

- All 12 slash commands (`/quickstart`, `/positioning`, `/messaging`, etc.)
- All 11 skills with their full `references/` folders (templates, output formats, public-company worked examples)
- All 12 agents (3 role-agents + 9 specialists)
- The `marketing/` workspace folder scaffold (every subfolder with its README)
- The repo-level `CLAUDE.md` that loads automatically every session

It's the same content as cloning the repo locally — just packaged as a Cowork plugin instead of a git repo.

### Steps (recommended — download and upload)

1. Go to the [GitHub repo](https://github.com/matteotitta/claude-code-marketing-quickstart) and click **Code → Download ZIP**.
2. Open Cowork → **Personal Plugins** → **Add**.
3. Drag the downloaded zip into the Add dialog.
4. Install. The slash commands appear in your menu.
5. Open a new Cowork session and run `/quickstart`.

### Alternative — marketplace path (try this if you prefer)

In Cowork → **Personal Plugins** → **Add**, paste:

```
github.com/matteotitta/claude-code-marketing-quickstart
```

If it installs cleanly, the slash commands appear in your menu. If you hit a 404 or the install fails, fall back to the download-and-upload steps above and DM me on [LinkedIn](https://www.linkedin.com/in/matteotittarelli/) so I can fix the marketplace path.

### Verify it works

Run `/positioning for [your company name]` in any Cowork session. **What you should see:** Claude asks for your ICP and competitive context, then produces a positioning draft.

### If something goes wrong

**Commands don't show in the slash menu.**
Refresh the Cowork session. If still missing, the install probably didn't complete cleanly — re-run from step 1.

**Plugin install fails on either path.**
DM me on [LinkedIn](https://www.linkedin.com/in/matteotittarelli/) — happy to unblock.

---

## Path C — claude.ai Projects (lite — manual upload)

**Prereqs:** claude.ai Pro, Team, or Enterprise account (Projects feature required).

### Honest framing first

Path C is a **degraded experience** compared to Paths A and B. claude.ai can't:
- Run slash commands (you invoke skills verbally — `Run the positioning skill for [your company]`)
- Read or write files (Claude produces text in chat; you copy it where needed)
- Persist state automatically between chats (each new chat starts fresh, though Project Knowledge stays loaded)
- Connect to MCP servers, external tools, or your file system

What you DO get: the prompt patterns, the marketing/ folder convention as a mental model, the voice conventions, the 11 skill activation guides, and the **2-Project architecture** (Marketing Foundations + Content Engine) that mirrors how the dependency chain works in Claude Code.

If that fits your constraints, here's the install.

### Steps

1. Download the repo:
   - **Option A:** on the [GitHub repo](https://github.com/matteotitta/claude-code-marketing-quickstart), click **Code → Download ZIP** and unzip locally.
   - **Option B:** if you have git, run `git clone https://github.com/matteotitta/claude-code-marketing-quickstart.git`.

2. Open the `claude-ai/` folder. You'll see 4 markdown files:
   - `INSTRUCTIONS.md`
   - `01-skills-catalog.md`
   - `02-marketing-folder-convention.md`
   - `03-voice-conventions.md`
   - `04-multi-project-pattern.md`

3. **Set up Project 1 — Marketing Foundations:**
   - claude.ai → **Create Project** → name it "Marketing Foundations"
   - **Custom Instructions:** open `INSTRUCTIONS.md`, copy its full contents, paste into the Project's Custom Instructions field (~900 tokens — well under claude.ai's 8000-token limit)
   - **Project Knowledge:** drag the other 4 files (`01-skills-catalog.md`, `02-marketing-folder-convention.md`, `03-voice-conventions.md`, `04-multi-project-pattern.md`) into the Project's Knowledge area
   - Optional: drag in raw sources (sales call transcripts, decks, screenshots) you want Claude to reference

4. **Set up Project 2 — Content Engine** (do this after you've run a few skills in Project 1 and have locked outputs):
   - claude.ai → **Create Project** → name it "Content Engine"
   - **Custom Instructions:** paste the same `INSTRUCTIONS.md` contents
   - **Project Knowledge:** drag the 4 reference files PLUS your locked outputs from Project 1 (positioning, messaging, ICP, brand-kit, tov-guidelines)

   This 2-Project pattern is documented in detail in `claude-ai/04-multi-project-pattern.md` — read that file before you start running content skills. It explains why two Projects, what files go where, and how to refresh when foundations change.

### Verify it works (Project 1)

Open a new chat in Project 1. Type:

```
Run the positioning skill for [your company name]
```

**What you should see:** Claude asks for your ICP, competitive context, and the angle you want to test — *before* producing a draft. The output ends with a suggested filename (`MMYY-positioning.md`) and a "where it would live" note.

If Claude responds without asking for inputs, the Custom Instructions paste was probably truncated. Re-paste and try again.

### Verify it works (Project 2)

Once you've copied locked outputs from Project 1 into Project 2's Knowledge, open a new chat in Project 2 and type:

```
Run the content-strategy skill for [your company name]
```

**What you should see:** Claude references your positioning and messaging from the Knowledge folder, asks if you want to run a content audit first, then produces a 90-day content strategy.

### If something goes wrong

**Custom Instructions paste appears truncated.**
Refresh your browser session and re-paste. claude.ai accepts up to ~8000 tokens of Custom Instructions; INSTRUCTIONS.md is ~900 tokens, so size isn't the issue — usually a stale browser session.

**Knowledge files don't seem to be referenced.**
Open a new chat in the Project (not a continuation of an old one) and ask: "What's in your Project Knowledge?" If Claude doesn't list the files, drag them again.

**Project 2 produces content that ignores your positioning.**
The locked positioning doc isn't in Project 2's Knowledge folder. Open Project 2 → Knowledge → drag in your `MMYY-positioning.md` file.

**You want to save outputs.**
claude.ai can't write files. Copy each output, save it locally with the suggested filename (`MMYY-topic.md`), and re-upload locked outputs into Project 2's Knowledge so the content engine can reference them.

---

## After install — your first 30 minutes

Whichever path you picked, the Quickstart ships 11 skills covering research → PMM strategy → content basics. Suggested first chain to get value fast:

1. `Run /company-context for [your company name + URL]` — capture your firmographics + qualification posture
2. `Run /competitor-research for [Competitor 1 name + URL]` — top 2-3 competitors, run one-by-one
3. `Run /icp-research for [your company URL]` — define your ideal customer
4. `Run /tov-guidelines on [2-3 content sample URLs]` — extract or define your tone of voice
5. `Run /brand-kit on [your homepage screenshots]` — capture your visual identity
6. `Run /positioning for [your company name]` — synthesize the above into a positioning statement
7. `Run /messaging for [your company name]` — turn positioning into the 10-component messaging library
8. `Run /content-strategy for [your company name]` — map messaging to a content roadmap
9. `Run /thought-leadership on the topic "[your topic]"` — produce your first long-form piece

(Path C users: replace `Run /skill-name` with `Run the skill-name skill` — claude.ai doesn't have slash commands. Steps 1-7 happen in Project 1; steps 8-9 happen in Project 2.)

Each skill saves output to a folder under `marketing/` (Paths A and B) or to your chat (Path C — copy + save locally). Read the README for the full skill list.

---

## What's NOT included

This is a starter pack. The following stay gated for the advanced tier:

- All sales-enablement (battlecards, sales decks, demo scripts, one-pagers, case studies, webinars)
- All outbound (cold email, ABM, lead scoring, list building)
- All paid marketing (Google Ads, LinkedIn Ads, ad creative briefs)
- All SEO/AEO (programmatic SEO, AEO content, citation strategy)
- All website (wireframe, copy, full builds, audits)
- All design (vibe coding, dashboards, Figma → React)
- All social/LinkedIn (LinkedIn content, YouTube, newsletter)
- All lifecycle (email nurture, lifecycle campaigns)
- All meta/orchestration (`/orchestrator`, `/recall`, `/today`, `/wiki`, `/weekly-audit`)
- All hooks (no automated catalog regen, output routing, naming enforcement)

If you want any of those, contact me on [LinkedIn](https://www.linkedin.com/in/matteotittarelli/).

---

## Stuck?

DM me on [LinkedIn](https://www.linkedin.com/in/matteotittarelli/) — happy to unblock you.
