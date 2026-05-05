# templates/

Authoring prompts for building your own CLAUDE.md and SKILL.md files from scratch.

These are **meta-prompts** — you paste them into a Claude Code session, answer the questions Claude asks, and get a complete file ready to save.

## Files

| File | What it does |
|---|---|
| [`CLAUDE-MD-TEMPLATE.md`](./CLAUDE-MD-TEMPLATE.md) | Generates a personalized `CLAUDE.md` for a new project. Use when you want a CLAUDE.md beyond what `/quickstart` gave you (e.g., a side project not under `marketing/`). |
| [`SKILL-MD-TEMPLATE.md`](./SKILL-MD-TEMPLATE.md) | Generates a new SKILL.md for a custom skill you want to author. Use when the 11 shipped skills don't cover something you need. |

## How to use

1. Open the template file you want.
2. Copy the prompt section (everything under `## The prompt`).
3. Paste into Claude Code chat.
4. Answer Claude's questions.
5. Save the resulting file at the right path:
   - CLAUDE.md → project root or `marketing/CLAUDE.md`
   - SKILL.md → `.claude/skills/{category}/{skill-name}/SKILL.md`

## When NOT to use these

If `/quickstart` is enough for your CLAUDE.md, don't bother with the template — `/quickstart` covers the basics. These templates are for power users who want bespoke files.
