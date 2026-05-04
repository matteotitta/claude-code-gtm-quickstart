# Skill improvement log + changelog

Auto-update protocol, feedback signal detection, and historical changelog for company-context.

## Changelog

| Version | Date | Changes |
|---------|------|---------|
| 2.3 | 2026-04-08 | Account brief mode: optional job postings, key people, and outreach angles sections via Apollo MCP. Credit gate for enrichment calls. Imported via /steal from workflows.io Apollo x Claude Playbook. |
| 2.2 | 2026-01-21 | Agentic enhancements: YAML frontmatter with dependencies/outputs/triggers, visual flowchart, self-evaluation protocol, enhanced auto-update with reference example capture, upstream/downstream integration map |
| 2.1 | 2026-01-16 | Added consultancy/services business variant — supports non-VC companies with services/pricing extraction |
| 2.0 | 2026-01-16 | Refactored to v2.0 template: structured phases, qualification scoring, iteration prompts, auto-update rules |
| 1.0 | Original | Initial skill creation |

## Feedback signal detection

| User signal | Interpretation | Action |
|-------------|----------------|--------|
| "Great context" / "This is helpful" | High quality match | Log as positive pattern, offer to save as reference |
| "This data is outdated" | Source freshness issue | Log for source update |
| "Missing [X] data" | Coverage gap | Log new data point to include |
| "Qualification criteria should include [X]" | Criteria enhancement | Log criteria update |
| "Good find on [X]" | Effective search pattern | Capture as reusable pattern |
| "This source was wrong" | Source reliability issue | Flag source, find alternatives |
| Quick approval (<5 min) | Output was strong | Reinforce patterns used |

## Reference example capture

When user approves output (explicit "great context" or quick approval):

1. **Ask:** "This company context met your expectations. Want me to save it as a reference example for this skill?"

2. **If approved:**
   - Extract the full company context output
   - Anonymize if sensitive (or keep with permission)
   - Save to `references/examples/[date]-[company-slug].md`
   - Update "What Good Looks Like" section with link to new example
   - Add to reference files table

### Reference example format

```markdown
<!--
REFERENCE EXAMPLE
Skill: company-context
Generated: YYYY-MM-DD
Company: [company name]
Quality Rating: Approved by user
-->

# Example: [Brief description of what makes this context effective]

## Context

- **Company type:** [Industry, stage, funding status]
- **Research goal:** [Discovery prep / Qualification / Project context]
- **Why this worked:** [Key success factors]

## Research Summary

- **Questions answered:** [X]/4
- **Confidence breakdown:** High: X | Medium: Y | Low: Z
- **Qualification score:** [X]/25

## Full Output

[Complete company context output as delivered]

---

## Learning Notes

- [Search pattern that worked well]
- [Source that provided high-quality data]
- [Any company-specific factors]
```

## Improvement tracking

After each skill use, note:
1. **Data completeness:** How many of 4 target questions answered?
2. **Source quality:** Mix of High/Medium/Low confidence?
3. **Qualification accuracy:** Did score match eventual fit?
4. **New sources:** Any new reliable sources discovered?

## Pattern detection rules

When same feedback received 3+ times for this skill:

1. **Surface pattern:** "I've noticed [pattern] in company context feedback. Should I update the skill to [proposed change]?"

2. **If approved:** Propose specific SKILL.md edit with:
   - Current behavior
   - Proposed change
   - Affected sections

3. **Log in changelog** with feedback reference

### Common patterns to watch

- Sources frequently returning outdated data → Update source priority list
- Qualification scores not matching client outcomes → Recalibrate criteria
- Users requesting additional data points → Add to target questions
- Certain company types not fitting framework → Add business type variants

### Suggested skill update format

```markdown
## Proposed Skill Update

**Skill:** company-context
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

## Past improvement entries

### 2026-01-16: Consultancy/services business support

**Trigger:** Used on a bootstrapped consultancy where the standard VC/funding framework didn't fit.

**Issue:** Skill assumes venture-backed SaaS with funding rounds, ARR estimates from third-party sources. Consultancies have different traction signals.

**Suggested changes:**

1. Add business type detection (VC-backed SaaS vs. bootstrapped/services)
2. For services businesses, extract:
   - Service packages and pricing tiers
   - Client portfolio (notable clients list)
   - Engagement terms (minimums, durations)
   - Tools used in delivery
3. Skip funding/valuation sections for bootstrapped companies
4. Add "Services & Pricing" table to output format

**Status:** Logged for future implementation.
