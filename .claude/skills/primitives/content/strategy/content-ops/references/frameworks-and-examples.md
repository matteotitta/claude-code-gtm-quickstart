# Frameworks, output format, and worked examples

Reference file for `content-operations`. Holds the cross-phase frameworks, the standard output template, worked examples, anti-examples, and the pre-delivery quality checklist hoisted from SKILL.md during the April 2026 slim.

---

## Series architecture framework

Every content series follows one of five arc types. Phase 1 picks one per series; the cascade rules in Phase 2 inherit from this choice.

| Arc Type | Structure | Best For | Example |
|----------|----------|----------|---------|
| **Problem arc** | Identify → Unpack angles → Reveal root cause → Propose shift | TOFU awareness | "GTM Debt" — 5 posts on hidden costs of misaligned GTM |
| **Mechanism arc** | Introduce concept → Layer 1 → Layer 2 → Layer 3 → Full application | MOFU education | "Context Engineering" — progressive how-to building expertise |
| **Case study arc** | Context → Challenge → Approach → Results → Lessons | BOFU proof | "Operator Stories" — each installment features a different company |
| **Framework arc** | Name the framework → Apply to Scenario A → Scenario B → Scenario C | MOFU/BOFU | "First Mile / Last Mile" — apply quality framework to different contexts |
| **Opinion arc** | Contrarian take → Supporting evidence → Counter-arguments → Resolution | TOFU/MOFU | "Strategy That Ships" — provocative takes on execution over planning |

---

## Cascade efficiency model

```
Target: 80% cascade efficiency
  = 80% of anchor content generates 5+ derivatives

Anchor (1 piece, high effort)
  ↓
Tier 1 derivatives (2-3 pieces, medium effort — same-week)
  ↓
Tier 2 derivatives (3-5 pieces, low effort — following week)
  ↓
Tier 3 derivatives (1-2 pieces, minimal effort — evergreen queue)

Total: 1 anchor → 6-10 derivatives
```

---

## Content pipeline velocity

Targets to validate the pipeline is healthy. Anything outside these ranges means the bottleneck is in that stage.

| Metric | Definition | Target |
|--------|-----------|--------|
| **Idea-to-publish** | Days from idea backlog to published | < 14 days |
| **Draft-to-review** | Days from draft complete to review start | < 2 days |
| **Review-to-approved** | Days from review start to approval | < 1 day |
| **Buffer depth** | Approved pieces waiting to publish | 2+ weeks |
| **Cascade completion** | % of anchors that generate full derivative set | > 80% |

---

## Standard output template

Use this as the skeleton for the playbook output. Fill each section from the corresponding phase.

```markdown
<!--
SKILL OUTPUT: Content Operations
Generated: YYYY-MM-DD
Font: Inter (for rendering)
Version: 1.0
Company: [Company Name]
-->

# Content operations playbook: [Company Name]

**Based on:** Content Strategy v[X], dated [date]
**Channels:** [List active channels]
**Team size:** [Solo / Small / Full]

---

## 1. Series plan

### [Pillar 1 name]

#### [Series name] ([Arc type], [X] installments)

**Arc:** [1-sentence arc summary]
**Funnel stage:** [TOFU/MOFU/BOFU]
**Format:** [Primary format]

| # | Installment | Hook Angle | Status |
|---|------------|------------|--------|
| 1 | [Title/topic] | [Hook angle] | Planned |
| 2 | [Title/topic] | [Hook angle] | Planned |
| 3 | [Title/topic] | [Hook angle] | Planned |

[Repeat for each series per pillar]

---

## 2. Cross-channel sequence

### Cascade map

[Anchor type] → [Derivative list with timing]

### Weekly rhythm

| Day | [Channel 1] | [Channel 2] | [Channel 3] | Production |
|-----|-------------|-------------|-------------|------------|
| Mon | [Content] | — | — | [Task] |
| Tue | [Content] | — | — | [Task] |
| Wed | [Content] | [Content] | — | [Task] |
| Thu | — | [Content] | — | [Task] |
| Fri | [Content] | — | [Content] | [Task] |

### Calendar planning protocol

[Sunday review checklist]

---

## 3. Production pipeline

### Pipeline stages

[Stage definitions with exit criteria]

### Team structure

[Roles, time commitments, handoff workflows]

---

## 4. Channel optimization & lead capture

### Optimization checklist

[Per-channel optimization notes]

### Lead capture setup

[Active methods, tools, data flow]

### Retargeting triggers

[Trigger matrix]

---

## Iteration Prompts

After reviewing this playbook, consider:
1. "Should I generate the first series installment briefs for [pillar]?"
2. "Want me to adjust the cascade rules for your specific tool stack?"
3. "Should I create the Notion/Asana template for the pipeline?"
```

### Output formatting rules

| Element | Specification |
|---------|---------------|
| **Font** | Inter (specify in markdown header for rendering tools) |
| **Headers** | Sentence case, H1 for title, H2 for sections, H3 for subsections |
| **Lists** | Arrows (→) for cascades, bullets (-) for items, checkmarks (☑) for completed |
| **Tables** | Use for structured data, max 5 columns |
| **Status tags** | Planned / In-progress / Published / Analyzed |

---

## Worked example 1 — series architecture for a GTM consultancy

**Input context:**

```
Content strategy with 4 pillars:
- Positioning & messaging (30%)
- Websites & pSEO (25%)
- Launches (20%)
- Content & thought leadership (25%)

Channels: LinkedIn (5x/week), Newsletter (weekly), YouTube (biweekly)
```

**Expected output (Phase 1 excerpt):**

```markdown
### Positioning & messaging (30%)

#### "GTM Debt" (Problem arc, 5 installments)

**Arc:** Most B2B SaaS companies accumulate invisible GTM debt — misaligned messaging, orphaned pages, launch without strategy. Each installment exposes a different type of debt and its compound cost.
**Funnel stage:** TOFU
**Format:** Text posts (LinkedIn), long-form (Newsletter)

| # | Installment | Hook Angle | Status |
|---|------------|------------|--------|
| 1 | Messaging debt | "Your homepage says 3 different things. That's not a feature." | Planned |
| 2 | Positioning debt | "You're positioned for who you were 18 months ago." | Planned |
| 3 | Launch debt | "Your last 3 launches had the same CTA. That's not a strategy." | Planned |
| 4 | Content debt | "200 blog posts and none of them rank. Sound familiar?" | Planned |
| 5 | Compound debt | "GTM debt accrues interest. Here's how to audit yours." | Planned |

#### "Context Engineering" (Mechanism arc, 4 installments)

**Arc:** The best GTM work starts with deep context — not a kickoff call. Each installment builds a layer of the context engineering methodology.
**Funnel stage:** MOFU
**Format:** Carousels (LinkedIn), deep-dives (Newsletter)

| # | Installment | Hook Angle | Status |
|---|------------|------------|--------|
| 1 | What context engineering is | "I don't start with the brief. I start with the context." | Planned |
| 2 | Research layer | "90% of positioning projects fail in the first week. Here's why." | Planned |
| 3 | Synthesis layer | "The framework isn't the answer. The inputs are." | Planned |
| 4 | Application layer | "Same framework, different context, completely different output." | Planned |
```

**Why this is good:**

- Series arc is clear — each has a premise and progression
- Installments build on each other with hook escalation
- Funnel stage and format assignments are explicit
- Directly traceable to the strategic pillar

---

## Worked example 2 — cascade map

**Expected output (Phase 2 excerpt):**

```markdown
### Cascade map

**Anchor: Weekly newsletter**

| Timing | Channel | Derivative | Adaptation |
|--------|---------|-----------|------------|
| Same day | LinkedIn | Pull-quote post | Best single insight, formatted as standalone take |
| +1 day | LinkedIn | Hot take post | Contrarian angle from the piece |
| +2 days | LinkedIn | Carousel | Key framework visualized as slides |
| +3 days | YouTube | Short clip | Screen-recorded walkthrough of key section |
| +1 week | LinkedIn | Follow-up post | Response to comments/questions on the original |

**Cascade efficiency target:** 80% — 4 of 5 newsletters generate full derivative set
```

**Why this is good:**

- Timing is specific (same day, +1, +2)
- Adaptation column ensures derivatives are native, not reposts
- Efficiency target is measurable

---

## Anti-examples — what to avoid

| Bad Pattern | Why It's Bad | Better Approach |
|-------------|--------------|-----------------|
| "Repurpose your newsletter on LinkedIn" | No adaptation guidance | "Extract the contrarian insight and frame as a standalone LinkedIn hot take" |
| "Post 5x per week on LinkedIn" | No pillar/series assignment | "3 series installments + 1 cascade derivative + 1 engagement/reactive post" |
| "Use a content calendar" | No protocol for how to plan | "Sunday review protocol: review performance → select from backlog → assign to slots" |
| "Capture leads from content" | No method specifics | "Track post engagers via Trigify → enrich in Clay → score by ICP fit → sync to HubSpot" |
| Generic pipeline stages | No exit criteria | "Draft exits to Review when: voice checklist passed, source linked, format meets channel spec" |

---

## Anti-hallucination guardrails

1. **Derive from strategy.** All series, cascades, and pipelines must trace back to the content strategy's pillars, channels, and volume targets
2. **Don't invent performance data.** If no historical data, mark as "Baseline TBD" and use industry benchmarks with confidence tag
3. **Realistic team capacity.** Flag if production pipeline exceeds team's stated capacity. For solo operators, collapse roles appropriately
4. **Platform-specific claims.** Algorithm guidance must reference specific platform behaviors, not generic "post consistently" advice. Cite source where possible (e.g., "360 Brew algorithm update, Jan 2026")
5. **Mark gaps.** Explicitly note missing inputs (e.g., "No performance data available — series tracking will start from scratch")

---

## Quality checklist (pre-delivery)

### Serialization quality

- [ ] Every pillar has at least 1 series with a named arc type
- [ ] Installments show clear progression (not random standalone topics)
- [ ] Funnel-stage assignments verified against strategy ratios
- [ ] Series tracking framework included

### Sequencing quality

- [ ] Cascade rules defined for each anchor type
- [ ] Cross-channel timing is specific (days, not "regularly")
- [ ] Calendar planning protocol includes Sunday review steps
- [ ] Backlog management rules documented

### Pipeline quality

- [ ] Pipeline stages have exit criteria
- [ ] Card fields specified
- [ ] Team roles adapted to stated team size
- [ ] Handoff workflows documented per content type

### Optimization quality

- [ ] Channel-specific optimization applied (not generic advice)
- [ ] Lead capture methods mapped to tools
- [ ] Retargeting triggers linked to downstream skills
- [ ] Enrichment flow documented

---

## Iteration prompts (post-output)

### Refinement prompts

1. "Want me to adjust the series arcs for different hook styles?"
2. "Should I modify the cascade rules for your specific tool setup?"
3. "Want me to scale the team structure up or down?"

### Expansion prompts

1. "Should I generate the first installment briefs using `linkedin-content`?"
2. "Want me to build the Notion template for the pipeline?"
3. "Should I create the Clay enrichment workflow for lead capture?"

### Quality prompts

1. "Is the weekly cadence realistic for your team?"
2. "Any series that should be added, removed, or reordered?"
3. "Does the cascade timing work with your publishing workflow?"

---

## Skill auto-update — feedback signal detection

| User Signal | Interpretation | Action |
|-------------|----------------|--------|
| "Too many series" | Scope mismatch | Reduce default series per pillar |
| "Cascade timing doesn't work" | Workflow mismatch | Adjust default derivative timing |
| "Team can't handle this" | Capacity mismatch | Scale down role expectations |
| "This series over-performed" | Success pattern | Capture series arc as reference |
| "Pipeline too complex" | Process overhead | Simplify stages for team size |

After each skill use, capture: which inputs were available, were arcs well-received or heavily edited, was pipeline complexity appropriate, which cascade rules needed adjustment, did Sunday review protocol get adopted. Pattern detection trigger: same feedback received 3+ times → surface to user, propose SKILL.md edit, log in changelog.

---

## Integration with other skills

| Skill | Relationship | Usage |
|-------|--------------|-------|
| **content-strategy** | Provides input | Pillars, funnel mix, channels, volume targets, series themes |
| **tov-guidelines** | Provides input | Voice profile for QA checks and series tone |
| **linkedin-content** | Uses output | Execute individual series installments on LinkedIn |
| **youtube-scripts** | Uses output | Execute video series installments |
| **linkedin-infographics** | Uses output | Execute graphic derivatives from cascade |
| **social-selling** | Uses output | Execute lead capture retargeting plays |
| **outreach-emails** | Uses output | Execute email retargeting flows |
| **founder-linkedin** | Related | Use founder-linkedin for full 6-month program; use content-operations for operational layer within or alongside it |

---

## MCP data integration

**Level:** 3 — Content Execution (operational coordination)

### Pulls fresh

| Source | What to pull | Tool | When |
|--------|-------------|------|------|
| **Slack** | Content pipeline discussions, team requests | `slack_search_public` | When building production pipeline |

### Fallback (no MCP)

- User-provided content pipeline context
- Manual team coordination notes

---

## Changelog

| Version | Date | Changes |
|---------|------|---------|
| 1.0 | 2026-02-11 | Initial skill creation with v2.0 template. 4 phases: serialization, sequencing, pipeline, optimization. Inspired by Workflows.io Content OS framework |
| 1.1 | 2026-04-29 | Phase 3 lossless slim. Hoisted frameworks, output template, worked examples, anti-examples, quality checklist, iteration prompts, auto-update protocol, integrations table, MCP integration block to references/frameworks-and-examples.md. SKILL.md compressed to 5-section skeleton. |
