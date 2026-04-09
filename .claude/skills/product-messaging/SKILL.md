---
name: product-messaging
version: "2.1"
author: genesys-growth
last_updated: 2026-01-21
description: |
  Use when client needs messaging library from website/product research.
  Use when landing-page-copy, sales-enablement, or outreach-emails need messaging foundation.
  Use when user mentions "product messaging", "messaging library", or "capabilities and benefits".
  Use when positioning skill completed and execution assets are next.

# Agentic Layer Fields
dependencies:
  required: []
  recommended:
    - positioning
    - icp-research
    - competitor-research

outputs:
  - type: product-messaging-library
    feeds_into:
      - landing-page-copy
      - sales-enablement
      - linkedin-content
      - outreach-emails
      - product-launch

triggers:
  auto_suggest_when:
    - "positioning skill completed"
    - "user mentions product messaging or messaging library"
    - "landing-page-copy needs messaging foundation"
  auto_run_when: null  # Always require confirmation

review_gate: 2  # Standard review (strategy output)

output_path: "marketing/product-marketing/"
---

# Product messaging

Generate comprehensive product messaging libraries for B2B SaaS products through systematic website research and structured extraction. The output becomes the source of truth for all downstream marketing assets.

---

## Process Flowchart

```text
┌──────────────────────────────────────────────────────────────┐
│                  PRODUCT MESSAGING PROCESS                    │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 1: INPUT VALIDATION                                     │
│ □ Required: Website URL, Product name                         │
│ □ Optional: positioning, icp-research, competitor-research      │
│ → If available: Pull context from upstream skills             │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 2: DISCOVERY RESEARCH                                   │
│ Step 1.1: Fetch core pages (5+) → homepage, features, pricing │
│ Step 1.2: Search external data → G2, testimonials, vs pages   │
│ Step 1.3: Extract branded feature names first                 │
│ ✓ Checkpoint: 5+ pages fetched, features documented           │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 3: STRUCTURED EXTRACTION (10 Components)                │
│ 1. Description → core positioning                             │
│ 2. Status quo & alternatives → competitive context            │
│ 3. Pain points → with consequence chains (1st→2nd→3rd)        │
│ 4. Capabilities → linked to features                          │
│ 5. Benefits (Functional) → with customer quotes               │
│ 5.5. Benefits (Emotional & Social) → feelings + perception    │
│ 6. Features → exact branded names                             │
│ 7. Cost of inaction → quantified consequences                 │
│ 8. Common objections → with response frameworks               │
│ 9. Core messaging blocks → tagline, pitch, proof              │
│ ✓ Checkpoint: All components have content or "Not available"  │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 4: VERIFICATION & GAPS                                  │
│ Step 3.1: Source verification → URL + date for every claim    │
│ Step 3.2: Data gaps documentation (Component 10)              │
│ Step 3.3: Quality verification → run checklist                │
│ ✓ Checkpoint: No invented content, all sources cited          │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ SELF-EVALUATION                                               │
│ □ Completeness: All 10 components present?                    │
│ □ Evidence: Every claim has URL + date? Quotes verbatim?      │
│ □ Guardrails: No invented data? Consequence chains complete?  │
│ → If issues found: Flag gaps, suggest follow-up               │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ REVIEW GATE: Level 2 (Standard Review)                        │
│ Present: Full messaging library, confidence breakdown         │
│ Actions: [Approve] [Expand component] [Fill gaps]             │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ CHAIN SUGGESTIONS                                             │
│ → "Ready to create landing-page-copy from this messaging?"    │
│ → "Should I generate sales-enablement battlecards?"           │
│ → "Want me to create audience-specific messaging variants?"   │
│ → Save as reference example if positive feedback              │
└──────────────────────────────────────────────────────────────┘
```

---

## The Iron Law

**NO MESSAGING OUTPUT WITHOUT SOURCE VERIFICATION.**

Every claim needs URL + access date. Every quote is verbatim. Every consequence chain traces 1st→2nd→3rd order.

**No exceptions:**

- "I'll verify sources after" → Verification happens during extraction, not after
- "This is common knowledge" → Still needs a source URL + date
- "I paraphrased for clarity" → Verbatim only, or mark "Not available"
- "The user is in a hurry" → Rushed work = invented data = useless output
- "I can infer this benefit" → Inference ≠ evidence. Mark confidence level explicitly

---

## Red Flags (Stop and Verify)

About to write benefit without customer quote → STOP. Mark "Not available" instead.

About to include metric without source URL → STOP. Add citation or mark "[Data needed]".

About to skip consequence chain → STOP. Trace 1st→2nd→3rd order impact.

About to paraphrase testimonial → STOP. Use verbatim text only.

About to assume ICP pain point → STOP. Cite source or mark "Inferred — needs validation".

About to use generic feature name → STOP. Find exact branded feature name from website.

---

## Claude Code Triggers

**Invoke this skill when user says:**
- "Create product messaging for [URL/company]"
- "Build a messaging library for [product]"
- "Extract messaging from [website]"
- "Product messaging framework for [company]"
- "Messaging components for [product]"
- "Capabilities and benefits for [company]"
- "What are [product]'s differentiators?"
- "Pain points and capabilities for [URL]"

**Do NOT invoke when:**
- User wants competitor analysis only → Use `competitor-research` skill
- User wants landing page copy directly → Use `landing-page-copy` skill (run this first)
- User wants ICP research only → Use `icp-research` skill
- User asks about a single feature only → Answer directly without full framework

---

## Input Requirements

### Required Inputs

| Input | Description | Source |
|-------|-------------|--------|
| **Website URL** | Primary product website | User provides |
| **Product name** | Exact product/company name | User confirms |

### Optional Inputs (improve quality)

| Input | How It Helps |
|-------|--------------|
| Target ICP context | Focuses messaging on relevant segments |
| Competitor context | Sharpens differentiators |
| Internal docs | Provides claims not on website |
| Customer quotes | Fills gaps in testimonial coverage |

### Input Validation Checklist

Before proceeding, verify:
- [ ] Website URL is accessible and loads correctly
- [ ] Product name confirmed (especially for ambiguous names)
- [ ] User confirmed target ICP if not obvious from website

**If inputs are missing:** Ask user for URL. If name is ambiguous (e.g., "Bolt"), confirm which product before starting research.

---

## Process (Step-by-Step)

### Phase 1: Discovery Research

**Purpose:** Gather raw material from all available sources.

**Steps:**

1. **Step 1.1: Fetch core pages**
   - Homepage: Extract hero, value prop, core positioning
   - Features/Product page: Extract branded feature names
   - Pricing page: Understand tiers and value metric
   - Customers/Case studies: Extract logos, testimonials, proof points
   - About page: Company context and mission
   - **Output:** Raw content from 5+ pages with URLs

2. **Step 1.2: Search for external data**
   - Search: `site:g2.com "[product]" reviews` for ratings and sentiment
   - Search: `"[product]" customer testimonial` for quotes
   - Search: `"[product]" vs` for competitive positioning
   - **Output:** External sources with URLs and access dates

3. **Step 1.3: Extract branded feature names first**
   - Document exact feature names as branded by company
   - Note naming conventions (capitalization, trademarks)
   - **Output:** Feature name inventory

**Phase 1 Checkpoint:**
- [ ] 5+ pages fetched with content
- [ ] External sources searched
- [ ] Feature names documented verbatim

### Phase 2: Structured Extraction

**Purpose:** Extract and organize content into 10 messaging components.

**Steps:**

1. **Step 2.1: Description (Component 1)**
   - Extract core positioning statement
   - Include: what it is, who it serves, primary value, key differentiator
   - **Output:** 1 rich paragraph with source

### JTBD statement (optional enhancement)

When available, frame the core value proposition using Jobs-to-be-Done:

**Formula:** When [situation], I want to [motivation], so I can [expected outcome].

Include as "Component 0" when the JTBD framing adds clarity to the messaging foundation.

2. **Step 2.2: Status quo and alternatives (Component 2)**
   - Document Manual/DIY approaches
   - Document Legacy/incumbent tools
   - Document Direct competitors
   - Document Adjacent alternatives
   - Include market category for each
   - **Output:** 3-5 alternatives with pain point mappings

3. **Step 2.3: Pain points with consequence chains (Component 3)**
   - For each pain point, trace:
     - 1st order (direct): Immediate tangible problem
     - 2nd order (operational): Downstream impact
     - 3rd order (strategic): Business-level consequence
   - Link backward to status quo, forward to capability
   - **Output:** 3-5 pain points with full consequence chains

4. **Step 2.4: Capabilities (Component 4)**
   - Document what users can DO
   - Link each capability to branded feature name
   - Link each capability to pain point it solves
   - **Output:** 3-5 capabilities with feature links

5. **Step 2.5: Functional benefits (Component 5)**
   - Document outcomes customers achieve
   - Include customer quote as proof for each
   - Mark "Not available" if no quote found
   - **Output:** 3-5 benefits with customer proof

6. **Step 2.6: Emotional & social benefits (Component 5.5)**
   - Extract 2 emotional benefits (how users feel)
   - Extract 2 social benefits (how others perceive them)
   - **Output:** 4 benefits with triggers/contexts

7. **Step 2.7: Features (Component 6)**
   - Use EXACT branded feature names
   - Document what each does and its benefit
   - Link to capabilities each powers
   - **Output:** 3-5 features with capability links

8. **Step 2.8: Cost of inaction (Component 7)**
   - Quantify ongoing costs of not solving
   - Include daily/weekly/monthly cost, cumulative impact, competitive risk
   - **Output:** 2-3 cost of inaction statements

9. **Step 2.9: Common objections (Component 8)**
   - Extract from FAQ, comparison pages, reviews
   - Document root cause and response framework for each
   - **Output:** 3-5 objections with responses

10. **Step 2.10: Core messaging blocks (Component 9)**
    - Distill tagline (max 7 words)
    - Create elevator pitch (1 sentence)
    - Create value proposition (3 bullets)
    - Extract proof point
    - Segment by audience
    - **Output:** Reusable messaging blocks

**Phase 2 Checkpoint:**
- [ ] All 10 components have content or explicit "Not available"
- [ ] All capabilities link to features
- [ ] All pain points have consequence chains
- [ ] All benefits have customer quotes or "Not available"

### Phase 3: Verification & Gaps

**Purpose:** Validate sources and document gaps.

**Steps:**

1. **Step 3.1: Source verification**
   - Confirm every claim has URL + access date
   - Confirm all quotes are verbatim (no paraphrasing)
   - Assign confidence levels (High/Medium/Low)
   - **Output:** Source verification complete

2. **Step 3.2: Data gaps documentation (Component 10)**
   - Document missing information
   - Document low confidence data
   - Document unlinked components
   - Provide recommendations
   - **Output:** Complete data gaps section

3. **Step 3.3: Quality verification**
   - Run pre-delivery checklist
   - Fix any issues found
   - **Output:** Verified output ready

**Phase 3 Checkpoint:**
- [ ] Every data point has source URL + access date
- [ ] All quotes are verbatim
- [ ] Confidence levels assigned
- [ ] Data gaps documented
- [ ] No invented content

---

## Core Frameworks

### 10-Component Messaging Library

| # | Component | Purpose | Descriptor Count |
|---|-----------|---------|------------------|
| 1 | **Description** | Core product positioning statement | 1 rich paragraph |
| 2 | **Status quo and alternatives** | Current state, DIY approaches, competitive alternatives | 3-5 descriptors |
| 3 | **Pain points** | Problems with consequence chains (1st→2nd→3rd order) | 3-5 descriptors |
| 4 | **Capabilities** | What product enables, linked to features | 3-5 descriptors |
| 5 | **Benefits (Functional)** | Outcomes with customer quotes as proof | 3-5 descriptors |
| 5.5 | **Benefits (Emotional & Social)** | How users feel and are perceived | 2 emotional + 2 social |
| 6 | **Features** | Branded feature names with descriptions | 3-5 descriptors |
| 7 | **Cost of inaction** | Consequences of not solving | 2-3 descriptors |
| 8 | **Common objections** | Typical pushback with response frameworks | 3-5 objections |
| 9 | **Core messaging blocks** | Tagline, elevator pitch, proof points | Distilled messages |
| 10 | **Data gaps** | Missing information and recommendations | As needed |

### Consequence Chain Framework

For every pain point, trace impact through three orders:

```
1st Order (Direct) → 2nd Order (Operational) → 3rd Order (Strategic)

Example:
"Manual scheduling takes 30 min/candidate" →
"Less time for outreach → fewer candidates in pipeline" →
"Longer time-to-hire → higher costs → decreased profit"
```

### Confidence Scoring

| Level | Definition | Required Evidence |
|-------|------------|-------------------|
| **High** | Direct statement from official source | URL + exact text |
| **Medium** | Inferred from multiple official signals | 2+ URLs + reasoning |
| **Low** | Single indirect source or interpretation | URL + explicit caveat |

---

## Output Format

### Standard Output Structure

```markdown
# Product messaging library: [Product Name]

- **Research date**: [YYYY-MM-DD]
- **Website**: [URL]
- **Category**: [Product category]
- **Total sources consulted**: [N]
- **Confidence summary**: [X] High / [Y] Medium / [Z] Low confidence data points

---

## 1. Description

[Core positioning paragraph with source citation]

---

## 2. Status quo and alternatives

### [Alternative name]

**Type**: Manual/DIY | Legacy tool | Direct competitor | Adjacent alternative
**Market category**: [Category name]

[2-3 sentences describing the alternative and its limitations]

- **Key limitation**: [One-liner]
- **Creates pain point** → [Pain point name]
- **Source**: [URL] | **Accessed**: [YYYY-MM-DD]
- **Confidence**: High/Medium/Low

---

## 3. Pain points

### [Pain point name]

[2-3 sentences describing the problem and business impact]

**Consequence chain:**
- **1st order (direct):** [Immediate problem]
- **2nd order (operational):** [Downstream impact]
- **3rd order (strategic):** [Business consequence]

- **Caused by** ← [Status quo name]
- **Addressed by** → [Capability name]
- **Source**: [URL] | **Accessed**: [YYYY-MM-DD]
- **Confidence**: High/Medium/Low

---

## 4. Capabilities

### [Capability name]

**Linked feature**: [Exact branded feature name]

[2-3 sentences describing what users can do]

- **Key message**: [One-liner]
- **Solves pain point** ← [Pain point name]
- **Source**: [URL] | **Accessed**: [YYYY-MM-DD]
- **Confidence**: High/Medium/Low

---

## 5. Benefits (Functional)

### [Benefit name]

[2-3 sentences describing the outcome]

- **Proof point**: [Stat or metric if available]
- **Source**: [URL] | **Accessed**: [YYYY-MM-DD]
- **Confidence**: High/Medium/Low

**Customer proof**:
> "[Exact verbatim quote]"

- **Customer**: [Name], [Title]
- **Company**: [Company name]
- **Quote source**: [URL] | **Accessed**: [YYYY-MM-DD]

---

## 5.5. Benefits (Emotional & Social)

### Emotional benefits
#### [Emotional benefit 1]
[1-2 sentences]
- **Trigger**: [What causes this feeling]

### Social benefits
#### [Social benefit 1]
[1-2 sentences]
- **Context**: [When this perception forms]

---

## 6. Features

### [Exact branded feature name]

[2-3 sentences describing what it does]

- **Powers capability**: [Capability name]
- **Key message**: [One-liner]
- **Source**: [URL] | **Accessed**: [YYYY-MM-DD]

---

## 7. Cost of inaction

### [Cost name]

[2-3 sentences describing consequences of inaction]

- **Daily/Weekly/Monthly cost**: [Quantified]
- **Cumulative impact**: [What this adds up to]
- **Competitive risk**: [How competitors gain advantage]

---

## 8. Common objections

| Objection | Root Cause | Response Framework |
|-----------|------------|-------------------|
| "[Verbatim objection]" | [What's behind it] | [How to address] |

### Objection 1: "[Verbatim objection]"

**Root cause:** [1-2 sentences]

**Response framework:**
- **Acknowledge**: [Validate the concern]
- **Reframe**: [Shift perspective]
- **Evidence**: [Proof point]

---

## 9. Core messaging blocks

### Tagline
[Max 7 words]

### Elevator pitch
"[Product] helps [ICP] [achieve X] by [doing Y], so they can [benefit Z]."

### Value proposition
- **[Benefit 1]**: [One sentence]
- **[Benefit 2]**: [One sentence]
- **[Benefit 3]**: [One sentence]

### Proof point
"[Stat or social proof]"

### Key messages by audience

| Audience | Primary Message | Supporting Proof |
|----------|-----------------|------------------|
| [Champion] | "[Message]" | [Proof] |
| [Economic Buyer] | "[Message]" | [Proof] |
| [User] | "[Message]" | [Proof] |

---

## 10. Data gaps and recommendations

### Missing information

| Component | What's Missing | Impact | Suggested Follow-up |
|-----------|----------------|--------|---------------------|
| [Component] | [Missing data] | [Impact] | [How to find] |

### Low confidence data

| Data Point | Current Value | Why Low Confidence | How to Verify |
|------------|---------------|--------------------| --------------|
| [Data] | [Value] | [Reason] | [Method] |

---

## Source appendix

| # | URL | Content Type | Access Date |
|---|-----|--------------|-------------|
| 1 | [URL] | [Type] | [Date] |

---

## Related context

**Built from:**
- `marketing/product-marketing/MMYY-positioning.md` (positioning strategy)
- `context/MMYY-icp-research.md` (persona pain points)
- `context/MMYY-competitor-*.md` (competitive differentiation)

**Feeds into:**
- Landing page copy, sales assets, all content outputs
```

---

## What Good Looks Like

### Example: Archive (Social Listening Platform)

**Input context:**
```
Website: archive.com
Product: Archive — Social listening and influencer marketing platform
```

**Expected output excerpt:**
```markdown
## 3. Pain points

### Manual influencer discovery

Brands spend hours scrolling social media trying to find relevant influencers. Without systematic tracking, they miss creators who already mention their brand or products.

**Consequence chain:**
- **1st order (direct):** 3-5 hours/week manually searching for influencers
- **2nd order (operational):** Missed UGC from existing brand mentions → lost content opportunities
- **3rd order (strategic):** Competitors with automation partner faster → lose market share

- **Caused by** ← Manual spreadsheet tracking
- **Addressed by** → Automated creator discovery
- **Source**: archive.com/product | **Accessed**: 2026-01-16
- **Confidence**: High
```

**Why this is good:**
- Consequence chain traces from immediate problem to strategic impact
- Clear backward/forward links to other components
- Source cited with date
- Confidence level assigned

### Anti-Examples (What to Avoid)

| Bad Pattern | Why It's Bad | Better Approach |
|-------------|--------------|-----------------|
| "Industry studies show 80% of teams..." | Invented statistic | Mark "Not available" or cite actual source |
| Paraphrased customer quote | Violates verbatim rule | Use exact quote or mark "Quote not available" |
| Pain point without consequence chain | Missing strategic context | Trace through 1st→2nd→3rd order impacts |
| Capability without feature link | Missing component connection | Always link to branded feature name |
| "Users feel empowered" (no source) | Unsubstantiated claim | Cite testimonial or mark "Inferred from..." |

---

## Anti-Hallucination Guardrails

1. **Never invent data.** If data cannot be found, mark explicitly as "Not available — [reason]"
2. **Never paraphrase quotes.** Use exact verbatim text only, or mark "No testimonial found"
3. **Never estimate metrics.** Mark missing stats as "[Data point needed]"
4. **Use "Example:" prefix** for illustrative scenarios not from real inputs
5. **Cite every claim.** Include URL and access date for all external claims
6. **Mark confidence levels.** High/Medium/Low with evidence type

---

## Quality Checklist (Pre-Delivery)

### Content Quality
- [ ] All 10 messaging components present in correct order
- [ ] Status quo includes Manual/DIY + at least one competitive alternative
- [ ] Every pain point has consequence chain (1st → 2nd → 3rd order)
- [ ] Every pain point links forward to a capability
- [ ] Every capability links to a branded feature name
- [ ] Every functional benefit includes customer quote or explicit "Not available"
- [ ] Emotional & social benefits section complete (2 + 2)
- [ ] Cost of inaction section complete (2-3 statements)
- [ ] Common objections section complete (3-5 with response frameworks)
- [ ] Core messaging blocks complete (tagline, elevator pitch, proof point)

### Source Quality
- [ ] Every quote is verbatim with source URL and access date
- [ ] Every descriptor has source URL and access date
- [ ] Confidence levels assigned with reasoning
- [ ] No invented, assumed, or paraphrased content

### Format Quality
- [ ] Output header includes skill name, date
- [ ] Correct heading hierarchy (H1 → H2 → H3)
- [ ] Consistent formatting throughout
- [ ] Data gaps section completed with recommendations
- [ ] Source appendix includes ALL referenced URLs

---

## Self-Evaluation Protocol

After generating product messaging output, automatically run these checks:

### Completeness Check
- [ ] All 10 messaging components present in correct order?
- [ ] Status quo includes Manual/DIY + at least one competitive alternative?
- [ ] Every pain point has consequence chain (1st → 2nd → 3rd order)?
- [ ] Every capability links to a branded feature name?
- [ ] Every functional benefit includes customer quote or explicit "Not available"?
- [ ] Core messaging blocks complete (tagline, elevator pitch, proof point)?

### Evidence Quality Check
- [ ] Every quote is verbatim with source URL and access date?
- [ ] Every descriptor has source URL and access date?
- [ ] Confidence levels assigned with reasoning?
- [ ] No invented, assumed, or paraphrased content?

### Guardrail Check
- [ ] No invented statistics or metrics?
- [ ] No paraphrased quotes (all verbatim)?
- [ ] "Not available" used for missing data (not filled with assumptions)?
- [ ] All consequence chains complete (not cut short)?

### Self-Roast Questions

1. "If the user verified every source URL, would all claims hold up?"
2. "Are my consequence chains actually traced through 3 orders, or did I shortcut?"
3. "Did I use exact branded feature names, or did I paraphrase?"
4. "Are the customer quotes truly verbatim, or did I clean them up?"
5. "Would a marketer be able to create landing pages directly from this?"

---

## Post-Output: Iteration Prompts

After delivering output, proactively offer these options:

### Refinement Prompts
1. "Should I add more depth to any component?"
2. "Want me to find more customer quotes for the benefits section?"
3. "Should I research additional competitors to sharpen differentiators?"

### Expansion Prompts
1. "Ready to create landing page copy from this messaging?"
2. "Should I generate sales battlecards from the objections section?"
3. "Want me to create audience-specific messaging variants?"

### Quality Prompts
1. "Any claims that need stronger sourcing?"
2. "Should I fill any data gaps with additional research?"
3. "Want me to verify low-confidence data points?"

---

## Integration with Other Skills

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
|-------|------------------|------------------------------|
| **positioning** | Category, differentiators, anchors | Frames description and core messaging |
| **icp-research** | Personas, pain points, VOC | Enriches pain points and benefits |
| **competitor-research** | Competitive alternatives, weaknesses | Sharpens status quo and differentiators |
| **tov-guidelines** | Voice patterns, vocabulary | Applies tone to messaging |

### Recommended workflow sequences

**Sequence 1: Full messaging stack**

```text
icp-research + competitor-research → positioning → product-messaging → landing-page-copy
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

## Changelog

| Version | Date | Changes |
|---------|------|---------|
| 2.1 | 2026-01-21 | Agentic enhancements: YAML frontmatter, visual flowchart, self-evaluation protocol, integration map |
| 2.0 | 2026-01-16 | Refactored to v2.0: structured phases, consequence chains, iteration prompts |
| 1.0 | Original | Initial skill creation with 10-component framework |
