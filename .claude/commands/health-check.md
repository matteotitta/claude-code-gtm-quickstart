---
name: health-check
description: Verify system state — CLAUDE.md, skills, context outputs
---

# Health check

Run a diagnostic on the workspace to verify everything is set up correctly.

## Checks to run

### 1. CLAUDE.md status

Read the CLAUDE.md file and check:
- Does the `## Who I am` section contain a real company name (not the placeholder)?
- Does `## Competitive landscape` list actual competitors?
- Does `## Voice and style` have personalized adjectives?
- Is the `## Output routing` table intact?

Report: "CLAUDE.md: ✓ Personalized" or "CLAUDE.md: ✗ Still has placeholders — run /quickstart to personalize"

### 2. Skills status

Check that all skill files exist and are readable:
- `.claude/skills/company-context/SKILL.md`
- `.claude/skills/competitor-research/SKILL.md`
- `.claude/skills/icp-research/SKILL.md`
- `.claude/skills/positioning/SKILL.md`
- `.claude/skills/product-messaging/SKILL.md`
- `.claude/skills/tov-guidelines/SKILL.md`
- `.claude/skills/brand-guidelines/SKILL.md`
- `.claude/skills/content-strategy/SKILL.md`
- `.claude/skills/steal/SKILL.md`

Report each as: "✓ [skill-name]" or "✗ [skill-name] — missing"

### 3. Agents status

Check that agent files exist:
- `.claude/agents/competitor-researcher.md`
- `.claude/agents/market-researcher.md`

Report each as: "✓ [agent-name]" or "✗ [agent-name] — missing"

### 4. Context outputs

List all files in the `context/` folder (excluding README.md).

If files exist, show a table:
| File | Size | Last modified |
|------|------|--------------|
| ... | ... | ... |

If empty: "Context: ✗ No outputs yet — run /context-loop to generate"

### 5. Marketing outputs

List all non-README files in the `marketing/` folder tree.

If files exist, show them organized by subfolder.
If empty: "Marketing: No deliverables yet — these will populate as you run skills"

## Summary

End with a summary:

"Health check complete:
- CLAUDE.md: [status]
- Skills: [X/9 available]
- Agents: [X/2 available]
- Context outputs: [count] files
- Marketing outputs: [count] files

[Suggest next action based on what's missing]"
