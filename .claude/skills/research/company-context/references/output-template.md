<!-- Canonical schema: ../../../_schema/output-templates/company-context.md -->
# Output template — company context

Standard output structure delivered as markdown artifact. Includes the optional Account Brief section (gated behind Apollo credit confirmation).

## Standard output structure

```markdown
<!--
SKILL OUTPUT: Company Context
Generated: YYYY-MM-DD
Font: Inter (for rendering)
Version: 2.0
-->

# Company context: [Company Name]

**Website**: [URL]
**LinkedIn**: [URL if available]
**One-liner**: [What they do in one sentence]
**Research date**: [Today's date]

---

## Traction Signals

| Metric | Finding | Confidence | Source | Date |
|--------|---------|------------|--------|------|
| Revenue | [Amount/range] | High/Med/Low | [Source name] | [Date found] |
| Customers | [Count/range] | High/Med/Low | [Source name] | [Date found] |
| Funding | [Total raised] | High/Med/Low | [Source name] | [Date found] |
| Team size | [Count] | High/Med/Low | [Source name] | [Date found] |

---

## Funding Details

- **Total raised**: [Amount]
- **Latest round**: [Stage, amount, date, lead investor]
- **Valuation**: [If known]
- **Key investors**: [List]

---

## Team Breakdown

| Function | Count | Notes |
|----------|-------|-------|
| Engineering | [#] | [Source/estimate] |
| Sales | [#] | [Source/estimate] |
| Marketing | [#] | [Source/estimate] |
| Other | [#] | [Source/estimate] |

---

## Quick Qualification Score

| Criteria | Score (0-5) | Notes |
|----------|-------------|-------|
| Stage fit (Series A+) | [0-5] | [Stage] |
| Revenue fit ($1M+ ARR) | [0-5] | [Estimate] |
| Industry fit (B2B SaaS/AI/DevTools) | [0-5] | [Category] |
| Marketing leader present | [0-5] | [Role if found] |
| ICP signals | [0-5] | [See ICP fit section] |
| **Total** | [X/25] | |

---

## ICP Fit Assessment

### Team Signals
- [ ] Has VP/Head of Marketing, Head of PMM, or Head of Content/SEO
- [ ] Marketing team exists (not just founder doing GTM)

### Marketing Gaps (Opportunities)
- [ ] Website doesn't pass design test
- [ ] Website doesn't pass PMM test (unclear positioning/messaging)
- [ ] Missing persona/use case/segment/product/integration pages
- [ ] Recent launches don't pass launch test
- [ ] Founder has no optimized LinkedIn profile
- [ ] No consistent founder posting/engagement
- [ ] No branded infographics/images

### Positioning Complexity
- [ ] Horizontal/adjacent to multiple personas/use cases
- [ ] Horizontal/adjacent to multiple categories
- [ ] 5-10+ competitors across multiple categories

### Intent Signals
- [ ] Recently raised funding
- [ ] Has PMM/content job opening
- [ ] Uses relevant tech (Webflow, LinkedIn, Substack, Clay, Claude, GPT)
- [ ] LinkedIn post showing intent to invest in PMM/content/AI

---

## Red Flags

- [ ] Recent layoffs announced
- [ ] No funding in 3+ years (runway concerns)
- [ ] Founder/exec departures
- [ ] Pivot signals in messaging history
- [ ] Pricing page hidden or unclear
- [ ] No customer logos or case studies (very early stage)
- [ ] High burn rate relative to revenue

---

## Key Observations

- [Insight relevant to discovery call]
- [Insight relevant to discovery call]
- [Insight relevant to discovery call]

---

## Data Gaps

- [What could not be found]
- [Suggested discovery call questions to fill gaps]

---

## Iteration Prompts

After reviewing this context, consider:
1. "Should I research their competitors?"
2. "Want me to prepare discovery call questions?"
3. "Should I extract their product messaging?"

---

## Related context

**Built from:**
- Company website, MCP data, public sources

**Feeds into:**
- `/competitor-research` (competitive positioning requires company context)
- `/icp-research` (audience research needs company understanding)
- `/positioning` (positioning anchors draw from company strengths)

## Skill Improvement Notes

**What worked well:**
- [Auto-captured]

**Potential improvements:**
- [Auto-captured]
```

## Quality checklist (pre-delivery)

### Data quality
- [ ] All four target questions answered or marked "Not available"
- [ ] Every data point has source and confidence level
- [ ] Conflicting data noted
- [ ] No invented or estimated numbers without clear labeling

### Assessment quality
- [ ] Qualification score calculated
- [ ] ICP fit checklist completed
- [ ] Red flags checklist completed
- [ ] Key observations are actionable

### Format quality
- [ ] Output header with date and font specification
- [ ] Tables properly formatted
- [ ] Data gaps section completed
- [ ] Discovery questions suggested
