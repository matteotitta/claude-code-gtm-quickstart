# Marketing Quick Start — install guide

This pack works on three Claude runtimes. Pick the one you have access to and follow the matching path. Five-minute setup either way.

> **Not sure what to pick?** If you write your prompts in a terminal and edit files locally, you're on **Claude Code** → path A. If you use the Cowork desktop/web app, → path B. If you use claude.ai in a browser with Projects, → path C.

---

## Path A — Claude Code (the full experience)

**Prereqs:** Claude Code installed, terminal access, a fresh empty folder for your marketing workspace.

### Steps

1. Clone this repo into your workspace:

   ```bash
   git clone https://github.com/matteotitta/claude-code-marketing-quickstart.git my-marketing-workspace
   cd my-marketing-workspace
   ```

2. Open in Claude Code:

   ```bash
   claude
   ```

3. Run the onboarding command:

   ```
   /quickstart
   ```

   Claude will ask for your company name, voice preferences, and key URLs, then auto-create the `marketing/` marketing/ folders (`icp/`, `positioning/`, `messaging/`, `competitors/`, `brand/`, `goals/`, `content/{audit,strategy,execution}/`) with placeholder files.

### Verify it works

Run `/positioning` and confirm Claude asks you for inputs (your ICP, your competitive context) before producing a draft. If the command runs and the output lands in `marketing/positioning/`, you're set.

---

## Path B — Cowork (plugin install)

**Prereqs:** Cowork account with Personal Plugins enabled.

### Steps

1. Open Cowork → **Personal Plugins** → **Add**.
2. Paste this marketplace path:

   ```
   github.com/matteotitta/claude-code-marketing-quickstart
   ```

   (Or download the bundle zip from the repo's GitHub Releases page and drag it into the same dialog.)

3. Install. The 15 commands appear in your slash-command menu.
4. Open a new Cowork session and run `/quickstart` to scaffold context.

### Verify it works

Run `/positioning` in any Cowork session. Claude should walk you through your ICP and competitive context, then produce a positioning draft.

---

## Path C — claude.ai Projects (download + upload)

**Prereqs:** claude.ai Pro, Team, or Enterprise account (Projects feature required). No plugin install needed.

### Steps

1. Download the Claude.ai pack zip from the repo's GitHub Releases page:

   ```
   marketing-team-pack-claude-ai.zip
   ```

2. Unzip locally. You'll see ~9 markdown files including `INSTRUCTIONS.md`.
3. In claude.ai → **Create Project** → name it (e.g., "Marketing Team").
4. **Project Instructions:** open `INSTRUCTIONS.md` from the unzipped folder, copy its contents, paste into the Project Instructions field.
5. **Project Knowledge:** drag the rest of the markdown files (`01-roles.md`, `02-skills-catalog.md`, etc.) into the Project Knowledge upload area.

### Verify it works

Open a new chat in the Project. Type:

```
Run the positioning skill for me
```

Claude should ask for your ICP + competitive inputs (using the role-agent dispatch pattern from the uploaded knowledge), then produce a positioning draft. If it doesn't reference the knowledge files, double-check the Project Instructions paste.

---

## After install — first 30 minutes

Whichever path you picked, the Quick Start ships 14 skills covering research → PMM strategy → content basics. Suggested first chain to get value fast:

1. `/company-context` — captures your firmographics + qualification posture
2. `/competitor-research` — pick your top 2-3 competitors, run one-by-one
3. `/icp-research` — define your ideal customer
4. `/tov-guidelines` — extract or define your tone of voice
5. `/brand-kit` (or `/brand-guidelines`) — capture your visual identity
6. `/positioning` — synthesize the above into a positioning statement
7. `/messaging` — turn positioning into the 10-component messaging library
8. `/content-strategy` — map messaging to a content roadmap
9. `/thought-leadership` — produce your first long-form piece

Each skill saves output to a folder under `marketing/` (or to your equivalent if you're on Cowork/claude.ai). Open the README for the full skill list.

---

## What's NOT in the Quick Start

This is a starter pack. The following stay gated for the paid/advanced tier:

- All sales-enablement (battlecards, sales decks, demo scripts, one-pagers)
- All outbound (cold email, ABM, lead scoring, list building)
- All paid marketing (Google Ads, LinkedIn Ads, ad creative briefs)
- All SEO/AEO (programmatic SEO, AEO content, citation strategy)
- All website (wireframe, copy, full builds, audits)
- All design (vibe coding, dashboards, Figma → React)
- All social/LinkedIn (18 LinkedIn skills, YouTube, newsletter)
- All lifecycle (email nurture, lifecycle campaigns)
- All meta/orchestration (`/orchestrator`, `/recall`, `/today`, `/wiki`, `/weekly-audit`, etc.)
- All hooks (no automated catalog regen, output routing, naming enforcement)
- All rules (the marketing/ folder convention convention is taught inline in this pack's CLAUDE.md instead)

If you want any of those, see [genesysgrowth.com](https://genesysgrowth.com) for the advanced tier.

---

## Troubleshooting

**Claude Code: `/quickstart` doesn't appear in the slash-command menu.**
Make sure you ran `claude` from inside the cloned repo (cwd matters — Claude Code reads `.claude/` from the current directory).

**Cowork: plugin install fails or commands don't show up.**
Cowork plugin support assumes the marketplace path is reachable. If you hit a 404, download the zip from GitHub Releases and use the manual upload path instead.

**claude.ai: Project Instructions paste appears truncated.**
INSTRUCTIONS.md is ~3000 tokens. claude.ai Project Instructions accept up to ~8000 tokens. If your paste truncates, you may have an old browser session — refresh and try again.

**Output not saving to `marketing/` folders.**
The folder convention is taught in CLAUDE.md (Claude Code) or `04-folder-conventions.md` (claude.ai). On Cowork, output goes wherever you direct it — there's no auto-routing without hooks.
