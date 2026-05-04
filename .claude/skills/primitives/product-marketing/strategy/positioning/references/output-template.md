<!-- Canonical schema: ../../../../../_schema/output-templates/positioning.md -->
# Output template

The standard markdown structure the positioning skill emits. Customize the placeholders, keep the section ordering.

```markdown
<!--
SKILL OUTPUT: Positioning Strategy
Generated: YYYY-MM-DD
Version: 1.1
Feeds into: product-messaging, landing-page-copy, sales-enablement
-->

# Positioning strategy: [Company Name]

**Date:** YYYY-MM-DD
**Prepared by:** {{Your marketing team}}
**Website:** [URL]
**Founder type:** [Customer-focused / Technology-focused / Competition-focused]

---

## Phase 1: Current state assessment

### 5-second clarity test

**Current H1:** "[Verbatim H1]"
**Current H2:** "[Verbatim H2]"

**Result:** Pass/Fail

**Rationale:** [Does it answer tool replacement OR task help?]

### Current positioning extraction

| Element | Current State | Assessment |
|---------|---------------|------------|
| Category claimed | [X] | Clear/Unclear/Missing |
| Differentiation claimed | [X] | Defensible/Generic/Missing |
| ICP claimed | [X] | Specific/Broad/Missing |
| Problem claimed | [X] | Acute/Vague/Missing |

**Summary:** [2-3 sentences on current positioning]

---

## Phase 2: Anchor & alternative mapping

### Positioning anchor options

| Anchor Type | Option 1 | Option 2 | Option 3 |
|-------------|----------|----------|----------|
| Activity | [X] | [Y] | [Z] |
| Product category | [X] | [Y] | [Z] |
| Use case/workflow | [X] | [Y] | [Z] |
| Problem | [X] | [Y] | [Z] |
| Persona | [X] | [Y] | [Z] |
| Competitive alternative | [X] | [Y] | [Z] |

### Anchor selection hypothesis (decision tree)

**Decision tree result:** [Activity / Use Case / Product Category / Competitive Alternative]

**Reasoning:** [Which test triggered YES and why]

**Confidence:** [High — clear signal / Medium — borderline between two / Low — no clear signal, rely on scoring]

### Competitive alternatives matrix

| Type | Alternative | Their Weakness | Your Angle |
|------|-------------|----------------|------------|
| Manual/DIY | [X] | [Y] | [Z] |
| Legacy incumbent | [X] | [Y] | [Z] |
| Direct competitor | [X] | [Y] | [Z] |
| Adjacent tool | [X] | [Y] | [Z] |
| Status quo | [X] | [Y] | [Z] |

### Top anchor combinations (scored)

| Primary | Secondary | Clarity | Differentiation | Relevance | Total |
|---------|-----------|---------|-----------------|-------------|-------|
| [X] | [Y] | 4/5 | 5/5 | 3/5 | 12/15 |
| [X] | [Y] | 3/5 | 4/5 | 4/5 | 11/15 |
| [X] | [Y] | 5/5 | 3/5 | 2/5 | 10/15 |

**Market maturity:** Emerging / Mature

---

## Phase 3: Strategy decisions

### Binary strategy: [Category / Problem-Use Case]

**Rationale:** [Why this strategy given market maturity and founder type]

### Selected anchors

**Primary anchor:** [X] — [Why this anchor]
**Secondary anchor:** [Y] — [Why this anchor]
**Secondary angle:** [Niche / Low-Cost / Premium / Unique Attribute / Lite] — [Why this angle]
**Decision tree alignment:** [Confirmed / Overridden — explain if scoring diverged from hypothesis]

### Differentiators (not just outcomes)

1. **[Differentiator 1]:** [Description]
   - Type: Delivery mechanism / Guarantee / Focus / Proprietary asset
   - Would you guarantee this? Yes/No

2. **[Differentiator 2]:** [Description]
   - Type: [X]
   - Would you guarantee this? Yes/No

3. **[Differentiator 3]:** [Description]
   - Type: [X]
   - Would you guarantee this? Yes/No

### Market focus: [Broad / Niche]

**Focus strategy (if niche):** Persona / Ecosystem / Use case / Industry / Attribute

**TAM reality check:**
- Target ACV: $[X]
- Customers needed for $[Y]M: [Z]
- Available market: [Assessment]

### Primary competitive alternative

**Position against:** [X]
**Key weakness to exploit:** [Y]

### Clarity ladder

| Level | Statement | Test |
|-------|-----------|------|
| **One word** | [X] | Does it capture the essence? |
| **One phrase** | [X] | Is it differentiated? |
| **One sentence** | [X] | Clear in 5 seconds? |
| **One paragraph** | Full positioning statement | Answers all questions? |

### Positioning statements (anchor-specific)

**Internal narrative (strategic foundation):**

[Select the template matching your primary anchor]

| Primary Anchor | Statement Template |
|----------------|-------------------|
| Activity | "We help [persona] [do activity] — replacing [manual process] with [product mechanism]." |
| Use Case | "We help [persona] [accomplish use case] without [key friction] — by [differentiated approach]." |
| Product Category | "We are a [category] that [key differentiator] — unlike [competitive alternative] which [weakness]." |
| Competitive Alternative | "We're a [leader]-alternative that [key upgrade] — for [persona] who [unmet need]." |

**One-sentence positioning (external use):**

> "[Statement using template above, compressed to one sentence]"

### Guarantee test

| Differentiator | Evidence | Proof Type Match | Verdict |
|----------------|----------|------------------|---------|
| [Differentiator 1] | [Testimonial/data/methodology] | [Aligned / Misaligned with anchor proof type] | Pass / Fail / Partial |
| [Differentiator 2] | [Evidence] | [Aligned / Misaligned] | Pass / Fail / Partial |
| [Differentiator 3] | [Evidence] | [Aligned / Misaligned] | Pass / Fail / Partial |

### Strategic implications

| Dimension | Implication | How to apply |
|-----------|-------------|--------------|
| Messaging | [What to lead with, what to avoid] | [Direction for product-messaging] |
| ICP | [Which segments to prioritize] | [Direction for icp-behavioural] |
| Competitive | [Per-competitor counter-positions] | [Direction for sales-enablement] |
| Voice positioning (optional) | More [X] than [Competitor A], less [Y] than [Competitor B] | Feeds into tov-guidelines |

### Channel emphasis guidance

The primary anchor is the strategic foundation across all channels. However, emphasis naturally shifts by context:

| Channel / Context | Typical Emphasis | Example |
|-------------------|------------------|---------|
| Homepage hero | Primary anchor (clearest classification) | Category or Use Case statement |
| Thought leadership / LinkedIn | Activity or Use Case (problem education) | "Most teams still do X manually..." |
| Comparison pages / G2 | Competitive Alternative (direct positioning) | "Unlike [Leader], we..." |
| Sales discovery calls | Use Case or Activity (pain exploration) | "How are you currently handling X?" |
| Case studies | Proof type matching primary anchor | Before/After, Switch story, etc. |

This is NOT about changing your positioning per channel. It's about which facet of your positioning you LEAD with in each context.

---

## Validation recommendations

| Test | Method | Success Metric |
|------|--------|----------------|
| Sales conversation test | A/B test messaging in discovery calls | Demo-to-close rate |
| Homepage A/B test | Test new hero vs. current | Scroll depth, CTA clicks |
| Customer recognition | Ask customers "what do we do?" | Consistent answers |

---

## Next steps

- [ ] Test positioning in 5-10 sales conversations before website changes
- [ ] Run `product-messaging` skill with this positioning as input
- [ ] Run `landing-page-copy` skill for full page copy
- [ ] Update sales battlecards via `sales-enablement` skill
- [ ] Align team on one-liner (which version for which context)

---

## Source appendix

| # | URL | Content Type | Access Date |
|---|-----|--------------|-------------|
| 1 | [Homepage URL] | Homepage | [Date] |
| 2 | [Pricing URL] | Pricing | [Date] |
| 3 | [About URL] | About | [Date] |

---

## Related context

**Built from:**
- `MMYY-company-context.md` (company strengths and traction)
- `MMYY-competitor-*.md` (competitive landscape)
- `MMYY-icp-research.md` (audience pain points and priorities)

**Feeds into:**
- `/product-messaging` (messaging executes positioning strategy)
- `/landing-page-copy` (page copy reflects positioning)
- `/content-strategy` (content pillars align to positioning)
```
