---
name: quickstart
description: Guided onboarding — Claude Code tour, marketing/CLAUDE.md personalization, Pattern A folder verification, first-chain pointer
---

# Marketing Quick Start onboarding

You are guiding a marketing operator through their first session with this Quick Start. They likely just cloned the repo. Be warm, clear, and pace yourself — don't rush.

---

## Phase 0: Claude Code UI tour

Before asking any questions, walk them through the Claude Code interface. Explain each element briefly and practically — what it does, when they'll use it, and the keyboard shortcut.

Walk through these in order:

1. **The Claude Code panel** (right sidebar — the orange icon)
   - "This is where you talk to me. Type here, get responses here."
   - Shortcut: `Cmd+Shift+P` then search "Claude Code: Focus"

2. **Three working modes** (top of the Claude panel)
   - **Ask before edits** (default) — "I show you changes, you approve them. Start here."
   - **Edit automatically** — "I make changes directly. Use when you trust the direction."
   - **Plan mode** — "I plan but don't execute. Use for complex tasks like rewrites or refactors."
   - Toggle by clicking the mode selector at the top of the panel.

3. **The effort slider**
   - "Drag left for quick answers. Drag right for thorough work."
   - "For research skills like the ones we'll run today, keep it right."

4. **Commands**
   - "Type `/` in the chat to see all available commands."
   - "Commands are prompts saved as files — you can create your own later."
   - "You just ran `/quickstart` — that's a command."

5. **Model selector**
   - "Sonnet is fast, good for iteration. Opus is thorough, good for deep research."
   - "For your first chain after this, Opus is the better choice."

6. **Explorer** (left sidebar, top icon)
   - "This is your file tree. I read these files. Outputs from skills will appear here as we work."
   - Shortcut: `Cmd+Shift+E`

7. **Search** (left sidebar, magnifying glass icon)
   - `Cmd+Shift+F` to search across all files
   - "Useful for finding things in your research outputs later."

8. **Focus input**
   - `Cmd+L` to jump to the Claude input box
   - `Escape` to dismiss

After the tour, say:

"That's the tour. Now let's personalize your `marketing/CLAUDE.md` — the file that tells me who your team is and how you write. Every session reads this, so everything you put here shapes every skill output I produce for you."

---

## Phase 1: Collect company info

Ask these two questions, waiting for answers:

**Question 1:** "What's your company name and website URL?"

**Question 2:** "Who are your top 2-5 competitors? Give me names and website URLs if you have them."

Store these — they'll be used in `marketing/CLAUDE.md` and later when running `/competitor-research`.

---

## Phase 2: Five personalization questions

Ask these 5 questions ONE AT A TIME. Wait for each answer before asking the next.

**Question 1:** "What's your role and what does your company do? Give me your title and a one-sentence description of the company."

**Question 2:** "Who are your main audiences? Describe 1-2 personas — their titles, what they care about, and their biggest pain points."

**Question 3:** "What does your brand sound like? Give me 3-5 adjectives that describe your voice. Examples: direct, warm, technical, casual, authoritative, playful."

**Question 4:** "What words or phrases should I never use? And what are your quality standards — what makes output 'good enough to ship' for you?"

**Question 5:** "Anything else I should know? Special constraints, industry jargon, formatting preferences, or things that would make my output better for you?"

---

## Phase 3: Personalize `marketing/CLAUDE.md`

After all 5 questions are answered, open `marketing/CLAUDE.md` and fill in the placeholder sections marked `<!-- QUICKSTART: This section gets personalized when you run /quickstart -->`.

**Specifically:**
- **`## Your team`** section: fill in company name, industry, ICP one-liner, stage, marketing function size
- **`## Your voice`** section: replace tone placeholder with their 3-5 adjectives, add their banned-words list to the "Avoid" line
- **`## Canonical references`** table: leave the structure intact (file paths will populate as they run skills)
- Remove all `<!-- QUICKSTART -->` comment markers from the final file

**Rules for the rewrite:**
- Write the personalized content as instructions TO Claude (the file is loaded as context every session)
- Use sentence case for all headings and bullets
- Keep it concise — no filler
- Don't rewrite sections that don't have QUICKSTART markers (canonical references table, operational protocols, suggested first chain, "what's not here") — those are stable scaffolding

Save the result to `marketing/CLAUDE.md` (overwriting).

---

## Phase 3.5: Verify Pattern A folder scaffold

Check that `marketing/` has the full Pattern A subfolders. If any are missing, create them silently (the user shouldn't have to think about this):

Required subfolders: `docs/`, `icp/`, `positioning/`, `messaging/`, `competitors/`, `brand/`, `goals/`, `content/audit/`, `content/strategy/`, `content/execution/`

Required system files at `marketing/` root: `CLAUDE.md` (just personalized), `latest.md`, `history.md`

Required README per subfolder (already shipped — verify present, recreate if user deleted): `docs/README.md`, `icp/README.md`, `positioning/README.md`, `messaging/README.md`, `competitors/README.md`, `brand/README.md`, `goals/README.md`, `content/README.md`

If any are missing, recreate from the master Pattern A template. Don't announce this — just do it.

---

## Phase 4: Verification

After saving, test the setup:

"Let me test this. Here's a one-paragraph description of [Company Name] written using your new context:"

Generate a one-paragraph company description that reflects their voice, audiences, and positioning. This proves the personalized `marketing/CLAUDE.md` is being read correctly.

Ask: "Does this sound like your brand? Anything you'd adjust?"

If they want changes, update `marketing/CLAUDE.md` accordingly and re-test.

---

## Phase 5: Next step — the suggested first chain

"Your workspace is ready. `marketing/CLAUDE.md` is personalized, and every conversation from now on starts with that context.

Suggested first chain to get value fast (~30 minutes total):

1. `/company-context` — captures your firmographics + qualification posture
2. `/competitor-research` — pick your top 2-3 competitors, run one-by-one
3. `/icp-research` — define your ideal customer
4. `/tov-guidelines` — extract or define your tone of voice
5. `/brand-guidelines` — capture your visual identity
6. `/positioning` — synthesize the above into a positioning statement
7. `/messaging` — turn positioning into the 10-component messaging library
8. `/content-strategy` — map messaging to a content roadmap
9. `/thought-leadership` — produce your first long-form piece

Each command saves output to a folder under `marketing/`. Type the first command when you're ready.

If you don't use Claude Code, see the `INSTALL.md` at the repo root for the Cowork + claude.ai paths."
