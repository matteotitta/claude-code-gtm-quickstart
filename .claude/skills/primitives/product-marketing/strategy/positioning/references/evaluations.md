# Self-evaluation + auto-update protocol

Automatic checks the skill runs after generating positioning output, plus the feedback loop for capturing patterns and triggering skill updates.

---

## Self-evaluation protocol

After generating positioning output, automatically run these checks.

### Completeness Check

- [ ] All 3 phases complete (Discovery, Anchors, Strategy)?
- [ ] Strategy decisions are specific and defensible (not generic)?
- [ ] Anchor decision tree hypothesis recorded and validated against scoring?
- [ ] Secondary angle archetype selected (Framework 14)?
- [ ] Clarity ladder passes at all four levels?
- [ ] Strategic implications mapped (messaging, ICP, competitive)?
- [ ] Any placeholders remaining?

### Evidence Quality Check

- [ ] Differentiators are defensible (not just outcomes)?
- [ ] All differentiators have formal guarantee test verdicts (Pass/Fail/Partial)?
- [ ] Proof types aligned to primary anchor (Framework 15)?
- [ ] Competitive alternatives based on actual market research?
- [ ] Market focus TAM math is realistic?

### Guardrail Check

- [ ] No "platform for X" without explaining what platform enables?
- [ ] No invented category names?
- [ ] No "AI-powered" as primary differentiator?
- [ ] No business outcomes alone as differentiation?
- [ ] No more than 3 differentiators (focus)?
- [ ] Activity anchor only used when no software category exists?

### Self-Roast Questions

Ask internally:

1. "If Anthony Pierri reviewed this, what would he flag as lazy positioning?"
2. "Does the 5-second test really pass, or am I being generous?"
3. "Are these differentiators truly unique, or could any competitor claim them?"
4. "Would a prospect immediately understand what this product replaces?"
5. "Is the market focus decision backed by real TAM math or hopeful thinking?"

### Improvement Suggestions

Based on evaluation, surface to user:

> "This positioning could be stronger if [specific improvement]. Want me to [action]?"

Example prompts:

- "The differentiators feel generic — want me to dig deeper into their proprietary methodology?"
- "The hero doesn't clearly pass the 5-second test — want me to sharpen the category anchor?"
- "Market focus seems broad for their ACV — want me to explore niche positioning options?"

---

## Skill auto-update protocol

### Feedback Signal Detection

| User Signal | Interpretation | Action |
|-------------|----------------|--------|
| "This is great positioning" | High quality match | Log as positive pattern, offer to save as reference |
| "Fix [specific element]" | Targeted improvement | Log correction pattern |
| "This doesn't capture our differentiation" | Differentiator weakness | Flag for framework review |
| "The category isn't right" | Anchor selection issue | Log for anchor framework enhancement |
| Heavy edits to hero copy | Implicit correction | Analyze diff, learn pattern |
| Quick approval (<5 min) | Output was strong | Reinforce patterns used |

### Pattern Detection Rules

When same feedback received 3+ times for this skill:

1. **Surface pattern:** "I've noticed [pattern] in positioning feedback. Should I update the skill to [proposed change]?"

2. **If approved:** Propose specific SKILL.md edit with:
   - Current behavior
   - Proposed change
   - Affected sections

3. **Log in changelog** with feedback reference

**Common patterns to watch for:**

- Users frequently adjusting differentiators → Strengthen differentiation test
- Users rejecting category suggestions → Review category framework
- Users changing hero copy format → Update hero template
- Users requesting more anchor options → Expand anchor framework

### Suggested Skill Update Format

```markdown
## Proposed Skill Update

**Skill:** positioning
**Triggered by:** [feedback pattern]
**Frequency:** [X occurrences]

**Current behavior:**
[What the skill does now]

**Proposed change:**
[Specific modification]

**Implementation:**
[Exact lines to change in SKILL.md]

**Approve this update?** [Yes/No]
```
