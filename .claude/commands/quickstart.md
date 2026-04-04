---
name: quickstart
description: Guided onboarding — Cursor tour, API setup, CLAUDE.md generation
---

# GTM quickstart

You are guiding a marketing operator through their first Claude Code setup. This is their first time using Claude Code — be warm, clear, and pace yourself. Don't rush.

---

## Phase 0: Cursor UI tour

Before asking any questions, walk the student through the Cursor interface. Explain each element briefly and practically — what it does, when they'll use it, and the keyboard shortcut.

Walk through these in order:

1. **The Claude Code panel** (right sidebar — the orange icon)
   - "This is where you talk to me. Type here, get responses here."
   - Shortcut: `Cmd+Shift+P` then search "Claude Code: Focus"

2. **Three working modes** (top of the Claude panel)
   - **Ask before edits** (default) — "I show you changes, you approve them. Start here."
   - **Edit automatically** — "I make changes directly. Use when you trust the direction."
   - **Plan mode** — "I plan but don't execute. Use for complex tasks."
   - Toggle by clicking the mode selector at the top of the panel.

3. **The effort slider**
   - "Drag left for quick answers. Drag right for thorough work."
   - "For research skills like what we'll run today, keep it right."

4. **Commands**
   - "Type `/` in the chat to see all available commands."
   - "Commands are prompts saved as files — you'll learn to create your own."
   - "You just ran `/quickstart` — that's a command."

5. **Model selector**
   - "Sonnet is fast, good for iteration. Opus is thorough, good for deep research."
   - "For the context loop we'll run next, Opus is the better choice."

6. **Explorer** (left sidebar, top icon)
   - "This is your file tree. I read these files. You'll see outputs appear here as we work."
   - Shortcut: `Cmd+Shift+E`

7. **Search** (left sidebar, magnifying glass icon)
   - `Cmd+Shift+F` to search across all files
   - "Useful for finding things in your research outputs later."

8. **Focus input**
   - `Cmd+L` to jump to the Claude input box
   - `Escape` to dismiss

9. **Command palette**
   - `Cmd+Shift+P` opens the command palette — access all Claude Code actions
   - "Claude Code: New Conversation" to start fresh
   - "Claude Code: Toggle Plan Mode" to switch modes

After the tour, say:

"That's the tour. Now let's build your CLAUDE.md — the file that tells me who you are and how you work. Every session starts by reading this file, so everything you put here shapes every response I give you."

---

## Phase 1: Collect company info

Ask these two questions, waiting for answers:

**Question 1:** "What's your company name and website URL?"

**Question 2:** "Who are your top 2-5 competitors? Give me names and website URLs if you have them."

Store these — they'll be used in the CLAUDE.md and later in /context-loop.

---

## Phase 2: CLAUDE.md generation

Ask these 5 questions ONE AT A TIME. Wait for each answer before asking the next.

**Question 1:** "What's your role and what does your company do? Give me your title and a one-sentence description of the company."

**Question 2:** "Who are your main audiences? Describe 1-2 personas — their titles, what they care about, and their biggest pain points."

**Question 3:** "What does your brand sound like? Give me 3-5 adjectives that describe your voice. Examples: direct, warm, technical, casual, authoritative, playful."

**Question 4:** "What words or phrases should I never use? And what are your quality standards — what makes output 'good enough to ship' for you?"

**Question 5:** "Anything else I should know? Special constraints, industry jargon, formatting preferences, or things that would make my output better for you?"

---

## Phase 3: Generate CLAUDE.md

After all 5 questions are answered, generate a complete CLAUDE.md using the answers. Use the existing CLAUDE.md file as the template structure — read it first to see the sections and output routing table.

**Rules for generation:**
- Write it as instructions TO Claude, not as a description of the user
- Use sentence case for all headings and bullets
- Keep it direct and concise — no filler paragraphs
- Populate the `## Who I am` section with their name, role, company
- Populate `## Voice and style` with their adjectives and preferences
- Populate `## Competitive landscape` with competitor names and one-line descriptions
- Add banned words to the DON'T section
- Populate `## Key URLs` with their website
- KEEP the `## Output routing` table and `## Workspace structure` sections exactly as they are
- KEEP the `## Critical rules` DO/DON'T sections, merging their quality standards into the existing rules
- Remove all `<!-- QUICKSTART -->` comment markers from the final output

Save the generated CLAUDE.md to the project root, overwriting the starter file.

---

## Phase 4: Verification

After saving, test the setup:

"Let me test this. Here's a one-paragraph description of [Company Name] written using your new context:"

Generate a one-paragraph company description that reflects their voice, audiences, and positioning. This proves the CLAUDE.md is working.

Ask: "Does this sound like your brand? Anything you'd adjust?"

If they want changes, update the CLAUDE.md accordingly.

---

## Phase 5: Next step

"Your workspace is ready. Your CLAUDE.md is loaded, and every conversation from now on starts with this context.

Next step: type `/context-loop` to run the context engineering loop. This will research your company, your competitors, your ideal customers, and synthesize your positioning and messaging — all automatically.

It takes about 25 minutes. Ready?"
