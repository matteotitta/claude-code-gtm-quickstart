# Iteration prompts + skill auto-update

Post-output offers, feedback signal detection, reference example capture, and
the skill self-improvement loop.

---

## Iteration prompts (offer after delivering output)

### Refinement prompts
1. "Should I dig deeper on any dimension?"
2. "Want me to verify any low-confidence data?"
3. "Should I expand the executive summary analysis?"

### Expansion prompts
1. "Ready to research additional competitors?"
2. "Should I create a comparison matrix?"
3. "Want me to generate battlecard content from this?"

### Quality prompts
1. "Any findings that seem inconsistent?"
2. "Should I search additional sources for gaps?"
3. "Want me to corroborate any surprising claims?"

---

## Skill auto-update protocol

### Feedback signal detection

| User Signal | Interpretation | Action |
|-------------|----------------|--------|
| "Great research" / "This is thorough" | High quality match | Log as positive pattern, offer to save as reference |
| "This data is outdated" | Source freshness issue | Log for source update |
| "Missing [X] dimension" | Coverage gap | Log new dimension to consider |
| "Source was wrong" | Source reliability issue | Flag source, find alternatives |
| "Good find on [X]" | Effective search pattern | Capture as reusable pattern |
| "Need more depth on [dimension]" | Depth preference | Log user preference |
| Quick approval (<5 min) | Output was strong | Reinforce patterns used |

### Output as reference example

When user approves output (explicit "great research" or quick approval):

1. **Ask:** "This competitor research met your expectations. Want me to save it as a reference example for this skill?"

2. **If approved:**
   - Extract the full competitor research output
   - Anonymize client-specific context if needed (or keep with permission)
   - Save to `.claude/skills/research/competitor-research/references/examples/[date]-[competitor-slug].md`
   - Update "What good looks like" section with link to new example
   - Add to reference files table

**Reference example format:**

```markdown
<!--
REFERENCE EXAMPLE
Skill: competitor-research
Generated: YYYY-MM-DD
Competitor: [competitor name]
Quality Rating: Approved by user
-->

# Example: [Brief description of what makes this research effective]

## Context

- **Competitor type:** [Category, funding stage, market position]
- **Research mode:** [Single competitor / Comparison matrix]
- **Why this worked:** [Key success factors]

## Research summary

- **Dimensions covered:** [X]/13
- **Confidence breakdown:** High: X | Medium: Y | Low: Z
- **Key insight:** [Most valuable finding]

## Full output

[Complete competitor research output as delivered]

---

## Learning notes

- [Search pattern that worked well]
- [Source that provided high-quality data]
- [Any caveats or competitor-specific factors]
```

---

## Improvement tracking

After each skill use, note:
1. **Dimension coverage:** Which dimensions had full vs. partial data?
2. **Source quality:** Mix of High/Medium/Low confidence?
3. **Premium tool gaps:** What couldn't be found without paid tools?
4. **New patterns:** Any new search strategies that worked?

### Pattern detection rules

When same feedback received 3+ times for this skill:

1. **Surface pattern:** "I've noticed [pattern] in competitor research feedback. Should I update the skill to [proposed change]?"

2. **If approved:** Propose specific SKILL.md edit with:
   - Current behavior
   - Proposed change
   - Affected sections

3. **Log in changelog** with feedback reference

**Common patterns to watch for:**

- Users frequently requesting deeper research on specific dimensions → Enhance that dimension's search patterns
- Sources frequently returning "Not available" → Find alternative sources
- Confidence levels often disputed → Calibrate confidence scoring
- Users requesting additional dimensions → Consider adding to framework

### Suggested skill update format

```markdown
## Proposed skill update

**Skill:** competitor-research
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
