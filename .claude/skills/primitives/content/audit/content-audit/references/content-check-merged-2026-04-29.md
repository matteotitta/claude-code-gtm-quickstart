---
name: content-check
version: "1.0"
primitive: content
sub_primitive: execution
ontology_type: content-audit
review_gate: 0  # Auto-approve — quality check, not a deliverable
depends_on: []
feeds_into: []
outputs: |
  - type: content-check
      feeds_into:
        - landing-page-copy
        - case-study
        - aeo-content
        - thought-leadership
        - linkedin-content
        - battlecards
author: marketing-team
last_updated: 2026-04-05
description: |
  |
    Pre-production content idea validator. Scores a content idea against 10 BOFU strategic intent signals before production starts. Catches bad ideas early — before skill execution, review gates, and revision cycles waste time. Delivers a PASS / REVISE / REJECT verdict with specific signal failures and fixes. Triggers: "content check", "content-check", "is this worth building", "should I build this", "slop check", "validate this content idea". Upstream: content-strategy (provides the calendar). Downstream: landing-page-copy, case-study, aeo-content, thought-leadership, linkedin-content (gates what enters production). NOT for evaluating existing published content — use content-audit for that.
dependencies: |
  required: []
    recommended:
      - content-strategy
triggers: |
  auto_suggest_when:
      - "user describes a content idea before production"
      - "content calendar lists a piece that hasn't been validated"
      - "user asks whether a content idea is worth building"
    auto_run_when: null
context: fork
effort: low
---


# Content check

Validate whether a content idea is worth building before production starts. Scores against 10 strategic intent signals adapted from goBOFU's BOFU methodology.

**Reference data:** `projects/research/taste-library/resources/gobofu--bofu-slop-signals.md`

This skill is a **pre-production gate**, not a post-production review. It answers "should we build this?" — not "is this well-written?"

---

## Claude Code Triggers

**Invoke when user says:**
- `/content-check`
- "Is this worth building?"
- "Should I build this page/post/article?"
- "Content check this idea"
- "Validate this content idea"
- "Slop check"

**Do NOT invoke when:**
- User wants to evaluate existing published content (use `/content-audit`)
- User wants to plan what topics to cover (use `/content-strategy`)
- User wants to write the content (use the relevant production skill)

---

## Input Requirements

### Required Inputs
- **Content idea** — what the user wants to build (1-2 sentence description is enough)
- **Content type** — blog post, comparison page, alternative page, use case page, glossary page, free tool/calculator, case study, landing page, or other

### Optional Inputs (improve quality)
- **Target audience** — who is this for?
- **Client context** — which client, what product, what ICP?
- **Content strategy reference** — does this map to a strategic pillar?

### Input Validation
If the user provides a vague idea ("we should write about AI"), ask:
1. What specific content type are you thinking? (blog, comparison page, landing page, etc.)
2. Who exactly is this for? (role, industry, buying stage)

Do NOT proceed with scoring until you have at least a content type and a specific enough idea to evaluate.

---

## Process

### Step 1: Confirm content type

Ask the user to confirm the content type if not stated:

> What are you building?
> 1. Blog post
> 2. Comparison page
> 3. Alternative page
> 4. Use case page
> 5. Glossary page
> 6. Free tool / calculator
> 7. Case study
> 8. Landing page
> 9. Something else

### Step 2: Score against 10 signals

Evaluate the idea against each signal. For each, assign CLEAN or SLOP based on the reference data.

| # | Signal | Question to evaluate |
|---|--------|---------------------|
| 1 | **Intent** | Is the target reader ready to buy within 30 days? Or is this awareness content? |
| 2 | **Specificity** | Is this specific to this product/segment, or could any competitor publish it? |
| 3 | **Evidence** | Does the idea lend itself to real data, customer stories, and metrics? Or vibes only? |
| 4 | **Switching narrative** | Does it address what people are switching from? |
| 5 | **Competitor honesty** | If competitors are mentioned, will it acknowledge their strengths? |
| 6 | **Real buyer query** | Is there an actual search query behind this? Do people search for this? |
| 7 | **Name-swap test** | If you swapped the company name for a competitor's, would the content break? |
| 8 | **AI visibility** | Will this be structured for AI citation — clear claims, comparison tables, named entities? |
| 9 | **Template potential** | Can this template scale to 10+ variants for different segments? |
| 10 | **Revenue path** | Does this drive pipeline directly, or is the connection to revenue indirect? |

### Step 3: Check type-specific flags

After the 10-signal scoring, check the relevant type-specific red/green flags from the reference data. Flag any red flags that apply.

### Step 4: Deliver verdict

Count CLEAN signals:

| CLEAN signals | Verdict | Meaning |
|---------------|---------|---------|
| **8-10** | **PASS** | Solid strategic intent. Proceed to production. |
| **4-7** | **REVISE** | Potential, but has specific weaknesses. Fix the flagged signals before building. |
| **0-3** | **REJECT** | Not worth building as described. Suggest what to build instead. |

---

## Output Format

```markdown
# Content check — {content idea summary}

**Content type:** {type}
**Client:** {client name, if applicable}
**Date:** {YYYY-MM-DD}

---

## Signal scorecard

| # | Signal | Verdict | Reasoning |
|---|--------|---------|-----------|
| 1 | Intent | CLEAN/SLOP | {1 sentence} |
| 2 | Specificity | CLEAN/SLOP | {1 sentence} |
| 3 | Evidence | CLEAN/SLOP | {1 sentence} |
| 4 | Switching narrative | CLEAN/SLOP | {1 sentence} |
| 5 | Competitor honesty | CLEAN/SLOP | {1 sentence} |
| 6 | Real buyer query | CLEAN/SLOP | {1 sentence} |
| 7 | Name-swap test | CLEAN/SLOP | {1 sentence} |
| 8 | AI visibility | CLEAN/SLOP | {1 sentence} |
| 9 | Template potential | CLEAN/SLOP | {1 sentence} |
| 10 | Revenue path | CLEAN/SLOP | {1 sentence} |

**Score:** {X}/10 CLEAN

---

## Type-specific flags

{List any red flags that apply from the per-content-type section}

---

## Verdict: {PASS / REVISE / REJECT}

{For PASS: 2-3 sentences on what makes this strong + tips to make it even better}
{For REVISE: List the specific signal failures and what to change to fix each one}
{For REJECT: Explain why this isn't worth building + suggest what to build instead}
```

---

## Signal weighting by content type

Not all signals apply equally to every content type. When scoring, weight accordingly:

| Content type | Critical signals (must be CLEAN) | Less relevant signals |
|--------------|--------------------------------|----------------------|
| **Comparison page** | Intent, Switching narrative, Competitor honesty, Name-swap | Template potential |
| **Alternative page** | Intent, Real buyer query, Switching narrative | Competitor honesty |
| **Use case page** | Specificity, Template potential, Name-swap | Switching narrative |
| **Blog post** | Real buyer query, Specificity, Evidence | Switching narrative, Competitor honesty |
| **Case study** | Evidence, Switching narrative, Name-swap | Template potential, AI visibility |
| **Glossary page** | Real buyer query, AI visibility | Switching narrative, Competitor honesty |
| **Free tool** | Revenue path, Specificity | Switching narrative, Competitor honesty |
| **Landing page** | Intent, Specificity, Revenue path, Name-swap | Template potential |

If a critical signal scores SLOP, the idea cannot PASS regardless of total score.

---

## Integration with Paperclip content ops

When running inside the Paperclip content operations pipeline (Step 4d):
- This skill runs **between** the content calendar (from content-strategy) and production task creation
- If verdict is REJECT, the content ops pipeline skips this piece and logs the rejection
- If verdict is REVISE, the pipeline pauses and requests human input on the fixes before proceeding
- If verdict is PASS, the production task is created for the Content Creator agent

---

## What good looks like

### Example: PASS

**Idea:** "Acme AI vs Vena — why CFOs are switching for real-time scenario modeling"
**Type:** Comparison page

Signal scorecard: 9/10 CLEAN (Template potential scored SLOP — this is a one-off comparison, not a template). All critical signals for comparison pages are CLEAN. Verdict: PASS.

### Example: REJECT

**Idea:** "What is AI-powered financial planning?"
**Type:** Blog post

Signal scorecard: 2/10 CLEAN. Intent: SLOP (pure TOFU — reader isn't comparing solutions). Specificity: SLOP (could be published by any fintech company). Real buyer query: SLOP (generic term, 10K+ existing articles). Name-swap test: SLOP (swap Acme AI for any competitor and it reads the same). Revenue path: SLOP (no direct pipeline connection). Verdict: REJECT. Build instead: "How [Customer] replaced Excel forecasting with Acme AI — and cut close time by 3 days."

---

## Reference Files

| Reference | Path | Purpose |
|-----------|------|---------|
| BOFU Slop Signals | `projects/research/taste-library/resources/gobofu--bofu-slop-signals.md` | 10 signals, per-type flags, data points |
| Ontology | `.claude/rules/ontology.md` | Output type definitions, skill relationships |
| Content Strategy | `.claude/skills/content-skills/content-strategy-skills/content-strategy/SKILL.md` | Upstream — provides content calendar |

---

## Integration with Other Skills

### Upstream Skills (Provide Context)
| Skill | What it provides |
|-------|-----------------|
| **content-strategy** | Content calendar with planned topics — content-check validates each before production |
| **icp-research** | ICP context for evaluating specificity and segment relevance |
| **product-messaging** | Messaging framework for evaluating name-swap test and differentiation |

### Downstream Skills (Consume Output)
| Skill | How it uses content-check |
|-------|--------------------------|
| **landing-page-copy** | Only produces pages that passed content-check |
| **case-study** | Only writes case studies that passed content-check |
| **aeo-content** | Only writes AEO articles that passed content-check |
| **thought-leadership** | Only writes thought leadership that passed content-check |
| **linkedin-content** | Only writes LinkedIn posts that passed content-check |
| **battlecards** | Only writes battlecards that passed content-check |
