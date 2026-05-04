# Iteration prompts + skill auto-update — messaging

Post-delivery iteration prompts, integration with other skills, feedback signal detection, reference-example capture, and the auto-update protocol.

---

## Post-output: Iteration prompts

After delivering output, proactively offer these options:

### Refinement prompts
1. "Should I add more depth to any component?"
2. "Want me to find more customer quotes for the benefits section?"
3. "Should I research additional competitors to sharpen differentiators?"

### Expansion prompts
1. "Ready to create landing page copy from this messaging?"
2. "Should I generate sales battlecards from the objections section?"
3. "Want me to create audience-specific messaging variants?"

### Quality prompts
1. "Any claims that need stronger sourcing?"
2. "Should I fill any data gaps with additional research?"
3. "Want me to verify low-confidence data points?"

### Chain suggestions (proactive)
- "Ready to create landing-page-copy from this messaging?"
- "Should I generate sales-enablement battlecards?"
- "Want me to create audience-specific messaging variants?"
- Save as reference example if positive feedback received

---

## Integration with other skills

### Product-messaging feeds INTO these skills

| Skill | What It Receives | How It Uses It |
|-------|------------------|----------------|
| **landing-page-copy** | Full 10-component library | Direct content source for page generation |
| **sales-enablement** | Objections, benefits, differentiators | Battlecard and objection handling content |
| **linkedin-content** | Core messaging blocks, pain points | Post content and hooks |
| **outreach-emails** | Benefits, proof points, pain points | Email copy and sequences |
| **product-launch** | Full messaging library | Launch asset foundation |

### Product-messaging receives FROM these skills

| Skill | What It Provides | How Product-messaging Uses It |
|-------|------------------|-------------------------------|
| **positioning** | Category, differentiators, anchors | Frames description and core messaging |
| **icp-behavioural** | Personas, pain points, VOC | Enriches pain points and benefits |
| **competitor-research** | Competitive alternatives, weaknesses | Sharpens status quo and differentiators |
| **tov-guidelines** | Voice patterns, vocabulary | Applies tone to messaging |

### Recommended workflow sequences

**Sequence 1: Full messaging stack**

```text
icp-behavioural + competitor-research → positioning → product-messaging → landing-page-copy
```

**Sequence 2: Sales-focused**

```text
product-messaging → sales-enablement
```

**Sequence 3: Content foundation**

```text
tov-guidelines + product-messaging → linkedin-content
```

---

## Related context

**Built from:**
- `MMYY-positioning.md` (positioning strategy)
- `MMYY-icp-research.md` (persona pain points)
- `MMYY-competitor-*.md` (competitive differentiation)

**Feeds into:**
- `/landing-page-copy` (page copy uses messaging components)
- `/sales-deck`, `/battlecards` (sales assets draw from messaging)
- All content skills (LinkedIn, newsletter, AEO use messaging as source)

---

## Skill auto-update protocol

### Feedback signal detection

| User Signal | Interpretation | Action |
|-------------|----------------|--------|
| "Great messaging" / "This is comprehensive" | High quality match | Log as positive pattern, offer to save as reference |
| "Missing [X] component" | Coverage gap | Log new component to consider adding |
| "Too much/not enough detail in [section]" | Depth preference | Log user preference |
| "Good example of [X]" | Specific win | Capture as pattern to replicate |
| "Source was wrong/outdated" | Verification issue | Log for source improvement |
| Quick approval with few edits | Strong output | Reinforce patterns used |

### Output as reference example

When user approves output (explicit "great messaging" or quick approval):

1. **Ask:** "This messaging library met your expectations. Want me to save it as a reference example for this skill?"

2. **If approved:**
   - Extract the full product messaging library
   - Anonymize if sensitive (or keep with permission)
   - Save to `references/examples/[date]-[product-slug].md`
   - Update "What Good Looks Like" section with link to new example
   - Add to reference files table

### Reference example format

```markdown
<!--
REFERENCE EXAMPLE
Skill: product-messaging
Generated: YYYY-MM-DD
Product: [product name]
Quality Rating: Approved by user
-->

# Example: [Brief description of what makes this messaging library effective]

## Context

- **Product type:** [Category, stage, market]
- **Components covered:** [X]/10
- **Why this worked:** [Key success factors]

## Messaging Summary

- **Core positioning:** [1-sentence summary]
- **Pain points documented:** [X] with consequence chains
- **Benefits with quotes:** [X]/[Y]
- **Confidence breakdown:** High: X | Medium: Y | Low: Z

## Full Output

[Complete product messaging library as delivered]

---

## Learning Notes

- [Research approach that worked well]
- [Extraction pattern to replicate]
- [Any product-specific factors]
```

### Improvement tracking

After each skill use, note:
1. **Research quality:** How complete was source coverage?
2. **Component coverage:** Which components had gaps?
3. **User iterations:** Which sections needed refinement?
4. **New patterns:** Any new consequence chains or objection patterns?

### Pattern detection rules

When same feedback received 3+ times for this skill:

1. **Surface pattern:** "I've noticed [pattern] in product messaging feedback. Should I update the skill to [proposed change]?"

2. **If approved:** Propose specific SKILL.md edit with:
   - Current behavior
   - Proposed change
   - Affected sections

3. **Log in changelog** with feedback reference

**Common patterns to watch for:**

- Users frequently requesting deeper consequence chains → Expand chain framework
- Certain components consistently missing quotes → Enhance quote extraction
- Specific industries needing different components → Add industry variants
- Users wanting different output formats → Add format options

### Suggested skill update format

```markdown
## Proposed Skill Update

**Skill:** product-messaging
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

---

## MCP data integration

**Level:** 1 — Strategy (inherits upstream, conditional VoC pulls)

**Inherits from:** positioning (primary input)

### Pulls fresh

| Source | What to pull | Tool | When |
|--------|-------------|------|------|
| **Slack** | Customer language/feedback threads | `slack_search_public` | Only if icp-behavioural didn't capture VoC |
| **Granola** | Customer call voice recordings | `search_meetings` | Only if icp-behavioural didn't capture VoC |

**Note:** Check for icp-behavioural voice-of-customer output in session context first. Only pull Slack/Granola if VoC data is missing.

### Fallback (no MCP)

- Use positioning output directly
- Manual customer interview quotes from user
- Review sites (G2, Capterra) for buyer language

---

## Changelog

| Version | Date | Changes |
|---------|------|---------|
| 2.2 | 2026-04-29 | Phase 3 lossless slim: SKILL.md reduced from 1,048 lines → ≤300 lines. Hoisted frameworks, quality gates, process flowchart, iteration prompts, MCP integration, auto-update protocol, and per-phase steps to references/. Frontmatter and content unchanged. |
| 2.1 | 2026-01-21 | Agentic enhancements: YAML frontmatter with dependencies/outputs/triggers, visual flowchart, self-evaluation protocol, enhanced auto-update with reference example capture, upstream/downstream integration map |
| 2.0 | 2026-01-16 | Refactored to v2.0 template: structured phases, consequence chains, iteration prompts, auto-update rules |
| 1.0 | Original | Initial skill creation with 10-component framework |
