# SKILL.md template prompt

Use this prompt inside Claude Code. Paste it, answer the questions Claude asks, and it will generate a complete SKILL.md file you can save and start using immediately.

Skills are reusable prompt templates that Claude Code loads when you trigger them. Instead of re-explaining the same task every session, you build a skill once and invoke it by name forever.

---

## The prompt

```
I need you to help me build a SKILL.md file for Claude Code. Skills are reusable prompt templates — you build one once, save it to a specific folder, and Claude loads it automatically whenever you trigger it.

The bare prompt principle: a great skill strips away everything except the minimum inputs needed. If Claude can figure it out from context, don't ask for it. The skill file handles the instructions, the process, the output format — the user just provides the raw material.

Ask me these questions one at a time. Wait for my answer before moving to the next question. After I answer all of them, generate my complete SKILL.md ready to save.

1. **What task do you want to automate?**
   Describe the task in one sentence. What do you produce at the end? Example: "Turn competitor research into a one-page battlecard for sales." or "Write a LinkedIn post from a rough idea."

2. **What role should Claude play?**
   Who is the expert doing this work? Example: "A competitive intelligence analyst who's built 100+ battlecards" or "A LinkedIn ghostwriter who writes for B2B founders."

3. **What inputs does the task need?**
   What does the user provide each time they run this skill? Be specific. Examples: competitor name, a URL, a transcript, a rough draft, a topic. Split into required (must have) and optional (improves quality).

4. **What's the step-by-step process?**
   Walk me through how you'd do this task manually, in order. What happens first? What comes next? Where do you make decisions? Where do you check quality? I'll turn this into a structured process Claude follows every time.

5. **What does the output look like?**
   Describe the format. Is it a markdown document with specific sections? A table? A code block ready to copy? Give me the structure — headers, sections, what goes where.

6. **What should Claude never do in this skill?**
   Hard constraints. Examples: never invent metrics, never use passive voice, always cite sources, never exceed 1500 characters, always include a CTA.

7. **What trigger phrases should activate this skill?**
   What would you naturally say to invoke this? Examples: "write a battlecard for [competitor]", "LinkedIn post about [topic]", "competitor one-pager". List 3-5 phrases.

Once I've answered all 7, generate my complete SKILL.md using the structure below.
```

---

## Where to save it

Skills live in `.claude/skills/` inside your project:

```
.claude/
└── skills/
    └── [skill-name]/
        └── SKILL.md
```

**Naming:** Lowercase, hyphenated. The folder name becomes the skill name. `battlecards/SKILL.md` means you invoke it as `/battlecards`.

**Example paths:**
- `.claude/skills/battlecards/SKILL.md`
- `.claude/skills/linkedin-post/SKILL.md`
- `.claude/skills/meeting-prep/SKILL.md`

---

## SKILL.md structure reference

Every SKILL.md has two parts: YAML frontmatter (metadata) and the markdown body (instructions).

### Frontmatter (between `---` markers)

```yaml
---
name: skill-name
version: "1.0"
author: your-name
last_updated: 2026-04-04
description: |
  Use when [trigger condition].
  Use when user mentions "[keyword]" or "[keyword]".
---
```

The `description` field is what Claude reads to decide whether to activate the skill. Write it as trigger conditions, not as a summary.

### Body (7 sections)

| Section | Purpose |
|---------|---------|
| **Role** | Who Claude becomes when this skill is active |
| **Goal** | One sentence — what the skill produces |
| **Inputs** | Required and optional inputs, formatted as a table |
| **Process** | Step-by-step phases with checkpoints |
| **Output format** | Exact structure of the deliverable (template) |
| **Constraints** | Hard rules, banned words, guardrails |
| **Trigger phrases** | Natural language phrases that invoke the skill |

---

## The bare prompt principle

Strip your skill to the minimum inputs the user needs to provide. Everything else — the process, the format, the constraints, the quality checks — lives in the SKILL.md.

**Before (too much user input required):**
> "Create a battlecard for Acme Corp. Use a two-column format. Include pricing, features, when we win, when we lose, objection handlers. Source all claims. Don't invent data."

**After (bare prompt):**
> "Battlecard for Acme Corp"

The skill file handles everything else. The user just names the competitor.

---

## Tips for building strong skills

1. **Start with a task you repeat weekly.** If you explain the same thing to Claude more than twice, it's a skill candidate.

2. **The output format section is your highest-leverage investment.** Claude follows templates precisely. Define the exact structure — headers, sections, tables — and you'll get consistent output every time.

3. **Write constraints as hard rules, not suggestions.** "Try to avoid buzzwords" is weak. "Banned words: innovative, leverage, synergy" is enforceable.

4. **Include checkpoints in the process.** "Do I have enough data?" and "Is every claim sourced?" force Claude to self-evaluate before delivering.

5. **Test with the bare minimum input.** Run your skill with just the required inputs. If the output is good, the skill is well-designed. If it's not, the process section needs more detail.

6. **Iterate on the skill, not on individual outputs.** When Claude gets something wrong, fix the SKILL.md — not just the current output. Every correction compounds.
