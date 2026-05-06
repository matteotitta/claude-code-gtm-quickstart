# Genesys Claude Code Marketing Quickstart — install guide

This pack works on two Claude runtimes today: **Claude Code** (full experience, recommended) and **Cowork** (plugin install). Five-minute setup either way.

> **Not sure what to pick?** If you write your prompts in a terminal and edit files locally, you're on **Claude Code → Path A**. If you use the Cowork desktop or web app, **→ Path B**.

---

## Before you start

This guide assumes minimal technical background. Two prereqs you can knock out in 5 minutes if you don't have them yet:

### 1. Claude Code installed

If you don't already have Claude Code, install it first: [claude.com/product/claude-code](https://claude.com/product/claude-code) — follow Anthropic's one-pager. You'll need a Claude Pro or Max plan (Pro is $20/mo, Max is $100/mo).

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

## Path A — Claude Code (recommended)

**Prereqs:** Claude Code installed, a terminal, git installed (see above).

### Steps

1. Open your terminal and clone the repo:

   ```bash
   git clone https://github.com/matteotitta/claude-code-marketing-quickstart.git my-marketing-workspace
   cd my-marketing-workspace
   ```

   You should see git clone the repo over a few seconds, then your terminal prompt should show you're inside `my-marketing-workspace/`.

2. Open the workspace in Claude Code:

   ```bash
   claude
   ```

   Claude Code opens. You'll see a chat panel.

3. Run the onboarding command:

   ```
   /quickstart
   ```

   Claude walks you through a tour of the Claude Code UI, asks for your company name + voice + key URLs, then personalizes `marketing/CLAUDE.md` and verifies the `marketing/` folder scaffold.

### Verify it works

Run:

```
/positioning
```

**What you should see:** Claude asks you for your ICP, your competitive context, and the angle you want to test — *before* producing any output. When it finishes, the draft lands at `marketing/positioning/{MMYY}-positioning.md`.

If you got that, you're set.

### If something goes wrong

**`/quickstart` doesn't appear in the slash-command menu.**
Make sure you ran `claude` from inside the cloned repo. Claude Code reads `.claude/` from the current directory, so if you ran `claude` from your home folder, the commands won't load. Run `pwd` to check where you are; `cd` into `my-marketing-workspace/` and re-run `claude`.

**Output not saving to `marketing/` folders.**
The folder convention is taught in `CLAUDE.md` (loaded automatically every session). If outputs land elsewhere, run `/quickstart` again — that re-checks the folder scaffold.

**Model selector confusion.**
For research skills (the first chain below), use **Opus** for best results. The model selector is in the top-right of the Claude panel. For quick edits and follow-ups, **Sonnet** is faster.

---

## Path B — Cowork (plugin install)

**Prereqs:** Cowork account with Personal Plugins enabled.

### Steps

1. Open Cowork → **Personal Plugins** → **Add**.
2. Paste this marketplace path:

   ```
   github.com/matteotitta/claude-code-marketing-quickstart
   ```

3. Install. The slash commands appear in your menu.
4. Open a new Cowork session and run `/quickstart`.

### Verify it works

Run `/positioning` in any Cowork session. **What you should see:** Claude asks for your ICP and competitive context, then produces a positioning draft.

### If something goes wrong

**Plugin install fails (404 or similar).**
Cowork plugin support assumes the marketplace path is reachable. If you hit a 404, drop me a line on [LinkedIn](https://www.linkedin.com/in/matteotittarelli/) — Cowork support timing varies.

**Commands don't show in the slash menu.**
Refresh the Cowork session. If still missing, the install probably didn't complete cleanly — re-run step 1.

---

## After install — your first 30 minutes

Whichever path you picked, the Quickstart ships 11 skills covering research → PMM strategy → content basics. Suggested first chain to get value fast:

1. `/company-context` — capture your firmographics + qualification posture
2. `/competitor-research` — pick your top 2-3 competitors, run one-by-one
3. `/icp-research` — define your ideal customer
4. `/tov-guidelines` — extract or define your tone of voice
5. `/brand-kit` — capture your visual identity
6. `/positioning` — synthesize the above into a positioning statement
7. `/messaging` — turn positioning into the 10-component messaging library
8. `/content-strategy` — map messaging to a content roadmap
9. `/thought-leadership` — produce your first long-form piece

Each skill saves output to a folder under `marketing/`. Read the README for the full skill list.

---

## What's NOT included

This is a starter pack. The following stay gated for the advanced tier:

- All sales-enablement (battlecards, sales decks, demo scripts, one-pagers)
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
