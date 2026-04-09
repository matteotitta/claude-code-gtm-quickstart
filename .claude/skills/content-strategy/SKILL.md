---
name: content-strategy
version: "1.2"
author: genesys-growth
last_updated: 2026-02-11
output_path: "marketing/content/"
description: |
  Use when client needs full content strategy with pillars and funnel mapping.
  Use when content-audit completed and ready for strategic planning.
  Use when user mentions "content strategy", "content pillars", or "90-day plan".
  Accepts any context dimension as input — ICP, competitors, messaging, TOV, brand identity, company context, content audit, market research.
---

# Content strategy

Generate comprehensive content strategies for B2B SaaS companies by synthesizing foundational research into an actionable content plan with pillars, channels, cadence, and execution roadmap.

---

## Process Flowchart

### Overview

```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│   INPUT     │───▶│ FOUNDATIONS │───▶│  PILLARS &  │───▶│  CHANNELS   │───▶│  EXECUTION  │───▶│   REVIEW    │
│ VALIDATION  │    │  & GOALS    │    │   FUNNEL    │    │  & CADENCE  │    │    PLAN     │    │   & CHAIN   │
└─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘
```

### Detailed Steps

```
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ INPUT VALIDATION                                                                             │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ Required: At least one context dimension (ICP, messaging, competitors, TOV, company context) │
│ Recommended: ICP research + product messaging (strongest foundation)                         │
│ Optional: Content audit, brand identity, team capacity, budget, market research              │
│ → Synthesizes whatever context is available into strategic pillars                            │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ PHASE 1: STRATEGY FOUNDATIONS                                                                │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ Define content goals (revenue, awareness, employer brand, customer success)                │
│ □ Identify 4-6 core topics from ICP and messaging                                            │
│ □ Define 3-5 content differentiators                                                         │
│ □ Map audience segments with content priorities                                              │
│ ✓ Checkpoint: Goals defined, topics mapped, differentiators articulated                      │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ PHASE 2: CONTENT PILLARS & FUNNEL STRATEGY                                                   │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ Define service-based pillars (30/25/20/15/10% mix)                                         │
│ □ Map funnel stages (TOFU 40%, MOFU 35%, BOFU 25%)                                           │
│ □ Create pillar x funnel matrix with example content                                         │
│ □ Define pillar formats and AI/automation throughline                                        │
│ □ Calculate content mix (both by pillar and by funnel stage)                                 │
│ ✓ Checkpoint: Service-based pillars defined, funnel mapped, matrix created                   │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ PHASE 3: CHANNEL STRATEGY                                                                    │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ Select channels (core: LinkedIn, Blog/Newsletter; bonus: Podcast, YouTube, Events)         │
│ □ Define anchor content (highest-effort, highest-value)                                      │
│ □ Design content cascade (anchor → derivatives)                                              │
│ □ Document channel specifications (format, frequency, metrics, tooling)                      │
│ ✓ Checkpoint: Channels selected, anchor defined, cascade mapped                              │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ PHASE 4: PLANNING & EXECUTION                                                                │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ Calculate volume targets (total monthly, per-channel, per-pillar)                          │
│ □ Define weekly posting cadence and production schedule                                      │
│ □ Design first 90 days (Month 1: Launch, Month 2: Educate, Month 3: Prove)                   │
│ □ Create recurring series inventory                                                          │
│ □ Build example week template                                                                │
│ ✓ Checkpoint: Volume targets set, cadence defined, 90-day plan outlined                      │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ SELF-EVALUATION                                                                              │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ All topics derived from ICP/messaging (not invented)?                                      │
│ □ Service-based pillars (not generic Educational/Personal/Promotional)?                      │
│ □ Mix percentages add to 100% (both pillar and funnel)?                                      │
│ □ Volume targets realistic for team capacity?                                                │
│ → If issues: Flag missing inputs, mark assumptions                                           │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌────────────────────────────────────────────┬────────────────────────────────────────────────┐
│ REVIEW GATE: Level 2 (Spot Check)          │ CHAIN SUGGESTIONS                              │
├────────────────────────────────────────────┼────────────────────────────────────────────────┤
│ Present: Foundations, pillars, channels,   │ → aeo-strategy (SEO/AEO research + article Q)  │
│          90-day plan, volume targets       │ → content-operations (operationalize strategy) │
│ Actions: [Approve] [Adjust mix] [Refine]   │ → linkedin-content (execute LinkedIn pillar)   │
│                                            │ → youtube-scripts (execute video pillar)       │
│                                            │ → product-launch (launch content integration)  │
└────────────────────────────────────────────┴────────────────────────────────────────────────┘
```

---

## Claude Code Triggers

**Invoke this skill when user says:**
- "Create a content strategy for [company]"
- "Content plan for [company]"
- "Content calendar for [company]"
- "What content should [company] create?"
- "Content marketing strategy"
- "Build a content program"
- "Social media strategy for [company]"
- "LinkedIn content strategy"
- "Podcast/YouTube strategy for [company]"
- "Newsletter strategy"

**Do NOT invoke when:**
- User wants individual posts only → Use `linkedin-content` or `youtube-scripts` skills
- User wants messaging framework → Use `product-messaging` skill
- User wants ICP research only → Use `icp-behavioural` skill
- User wants product launch plan → Use `product-launch` skill

---

## Input Requirements

This skill accepts any context dimension as input. The more context available, the stronger the strategy. It synthesizes whatever foundations exist into strategic pillars.

### Context Dimensions (provide what's available)

| Input | Description | Source | Impact |
|-------|-------------|--------|--------|
| **ICP Research** | Target audience segments, personas, pain points | `icp-research` skill output | High — drives pillar relevance and funnel mapping |
| **Product Messaging** | Positioning, capabilities, benefits, differentiators | `product-messaging` skill output | High — drives pillar selection and content angles |
| **Competitor Research** | Competitor content analysis, gaps, opportunities | `competitor-research` skill output | Medium — drives differentiation and gap-filling |
| **TOV Guidelines** | Tone of voice, vocabulary, patterns | `tov-guidelines` skill output | Medium — drives content style and consistency |
| **Company Context** | Company overview, market position, leadership | `company-context` skill output | Medium — drives narrative and brand pillars |
| **Brand Identity** | Visual guidelines, mood, signature elements | `brand-guidelines` skill output | Low-Medium — drives visual content specs |
| **Content Audit** | Existing content inventory and performance | User provides or manual audit | Medium — drives gap analysis and build-on strategy |
| **Market Research** | Industry trends, market dynamics, TAM/SAM | User provides or web research | Low-Medium — drives trend-based content angles |

### Minimum Viable Input

At least one of:
- ICP research (personas, pain points)
- Product messaging (positioning, differentiators)
- Company context (who they are, what they do)

### Input Validation Checklist

Before proceeding, verify:
- [ ] At least one context dimension available
- [ ] Company name and context clear
- [ ] Enough foundation to define service-based pillars (not generic ones)

**If inputs are thin:** Flag which context dimensions are missing and their impact. Offer to run prerequisite skills (ICP → Messaging → TOV → Competitors). Proceed with what's available but mark assumptions.

---

## Process (Step-by-Step)

### Phase 1: Strategy Foundations

**Purpose:** Define content goals, core topics, differentiators, and audience segments.

**Steps:**

1. **Step 1.1: Define content goals**
   - Extract business objectives from context
   - Map to content goal categories:
     - Revenue growth: Pipeline, meetings, conversions
     - Company awareness: Category leadership, brand recognition
     - Employer branding: Talent attraction
     - Customer success: Retention, expansion, advocacy
   - **Output:** 2-4 prioritized content goals with success metrics

2. **Step 1.2: Identify core topics**
   - Extract from product messaging: capabilities, pain points, differentiators
   - Extract from ICP: jobs to be done, challenges, vocabulary
   - Map topics to goals
   - **Output:** 4-6 core topic areas with goal alignment

3. **Step 1.3: Define content differentiators**
   - Analyze competitor content (if available)
   - Identify unique angles from positioning
   - Define what makes content distinctive
   - **Output:** 3-5 content differentiators

4. **Step 1.4: Map audience segments**
   - Pull from ICP research: personas, segments
   - Define content needs per segment
   - Prioritize by business impact
   - **Output:** Audience segment matrix with content priorities

**Phase 1 Checkpoint:**
- [ ] Content goals defined with metrics
- [ ] Core topics mapped to goals
- [ ] Differentiators articulated
- [ ] Audience segments prioritized

### Phase 2: Content Pillars & Funnel Strategy

**Purpose:** Define service-based content pillars, funnel stages, and mix ratios.

**Steps:**

1. **Step 2.1: Define service-based content pillars**
   Map pillars directly to the company's core services/offerings:

   **Example pillar structure (adapt to company context):**
   - **Service Pillar 1** (30%) — Core offering content (e.g., Positioning & Messaging)
   - **Service Pillar 2** (25%) — Secondary offering (e.g., Websites & Landing Pages)
   - **Service Pillar 3** (20%) — Tertiary offering (e.g., Launches & Campaigns)
   - **Service Pillar 4** (15%) — Supporting capability (e.g., Founder LinkedIn & Content)
   - **Operator Journey** (10%) — Personal stories, client work, behind the scenes

   **Important:** AI/automation/tooling is the THROUGHLINE across all pillars — not a separate topic.
   - **Output:** 4-5 service-based pillars with purposes and example formats

2. **Step 2.2: Map funnel stages (TOFU/MOFU/BOFU)**
   Every piece of content serves a funnel stage:

   | Stage | Purpose | Content Types | % Mix |
   |-------|---------|---------------|-------|
   | **TOFU** | Attract, educate, build awareness | Hot takes, frameworks, industry trends, contrarian POVs, "most companies get this wrong" | 40% |
   | **MOFU** | Nurture, demonstrate expertise | How-tos, process breakdowns, personal stories, tool deep-dives, "here's how I do it" | 35% |
   | **BOFU** | Convert, prove results | Case studies, testimonials, service spotlights, comparison content, "here's what happened" | 25% |

   - **Output:** Funnel stage distribution with content type mapping

3. **Step 2.3: Create pillar x funnel matrix**
   Map how each pillar appears at each funnel stage:

   ```
   Example Matrix:

   | Pillar | TOFU (Attract) | MOFU (Nurture) | BOFU (Convert) |
   |--------|----------------|----------------|----------------|
   | Positioning | "Why most positioning fails" | "My 4-step positioning framework" | "How [Client] nailed positioning" |
   | Websites | "Your homepage is lying to visitors" | "Homepage teardown: what works" | "[Client] website 3X conversions" |
   | Launches | "Launch day doesn't matter" | "Pre-launch checklist I use" | "[Product] launch case study" |
   ```

   - **Output:** Pillar x funnel matrix with example content

4. **Step 2.4: Define pillar formats**
   For each pillar, specify:
   - Format types by funnel stage
   - Example topics
   - Proof point types needed
   - AI/automation angle (throughline)
   - **Output:** Format inventory per pillar

5. **Step 2.5: Calculate content mix**
   Calculate both dimensions:

   **By pillar:**
   - Service Pillar 1: 30%
   - Service Pillar 2: 25%
   - Service Pillar 3: 20%
   - Service Pillar 4: 15%
   - Operator Journey: 10%

   **By funnel stage:**
   - TOFU: 40%
   - MOFU: 35%
   - BOFU: 25%

   - **Output:** Mix percentages with monthly counts for both dimensions

**Phase 2 Checkpoint:**
- [ ] Service-based pillars defined (not generic Educational/Personal/Promotional)
- [ ] Funnel stages mapped with content types
- [ ] Pillar x funnel matrix created
- [ ] Formats mapped to pillars and stages
- [ ] Mix ratios calculated (both dimensions)

### Phase 3: Channel Strategy

**Purpose:** Define channel selection, anchor content, and distribution hierarchy.

**Steps:**

1. **Step 3.1: Select channels**

   **Basic channels (include by default):**
   - Blog/Newsletter — Long-form authority content
   - LinkedIn — Primary B2B distribution channel

   **Bonus channels (include based on context):**
   - Podcast/YouTube — Anchor content creation (if founder available)
   - Events — Webinars, conferences (if budget/capacity allows)
   - X.com — Tech-savvy audience reach
   - Instagram/TikTok — Employer branding, younger demographics

   - **Output:** Selected channels with rationale

2. **Step 3.2: Define anchor content**
   - Identify highest-effort, highest-value content type
   - Usually: Podcast, YouTube, or Newsletter
   - This becomes the "content engine" that feeds derivative content
   - **Output:** Anchor content definition

3. **Step 3.3: Design content cascade**
   ```
   ANCHOR CONTENT (e.g., Podcast episode)
           ↓
   DERIVATIVE 1: Blog post / Newsletter (from transcript)
           ↓
   DERIVATIVE 2: LinkedIn posts (5-8 posts from key insights)
           ↓
   DERIVATIVE 3: Short-form video clips (for YouTube Shorts, Reels)
           ↓
   DERIVATIVE 4: Quote graphics, carousels
   ```
   - **Output:** Content cascade diagram

4. **Step 3.4: Define channel specifications**
   For each selected channel:
   - Format details
   - Frequency
   - Primary content pillar
   - Key metrics to track
   - Tooling recommendations
   - **Output:** Channel specification table

**Phase 3 Checkpoint:**
- [ ] Channels selected with rationale
- [ ] Anchor content defined
- [ ] Content cascade mapped
- [ ] Channel specs documented

### Phase 4: Planning & Execution

**Purpose:** Define volume targets, posting cadence, and first 90-day plan.

**Steps:**

1. **Step 4.1: Calculate volume targets**
   Based on mix ratios and channel capacity:
   - Total pieces per month
   - Per-channel breakdown
   - Per-pillar breakdown
   - **Output:** Volume targets table

2. **Step 4.2: Define posting cadence**
   Weekly rhythm:
   - Which days for which content types
   - Production vs. publishing schedule
   - Batching recommendations
   - **Output:** Weekly cadence template

3. **Step 4.3: Design first 90 days**
   **Month 1 — Launch & Foundation:**
   - Introduce key concepts
   - Establish positioning
   - Set up content systems

   **Month 2 — Education & Nurturing:**
   - Deep-dive content
   - Use case exploration
   - Comparison content

   **Month 3 — Proof & Conversion:**
   - Customer success stories
   - ROI demonstrations
   - Bottom-funnel content

   - **Output:** 90-day theme plan

4. **Step 4.4: Define recurring series**
   Create repeatable content formats:
   - Weekly series (e.g., "Tip Tuesday")
   - Monthly series (e.g., "Customer Spotlight")
   - Quarterly series (e.g., "Industry Report")
   - **Output:** Recurring series inventory

5. **Step 4.5: Create example week**
   Show one week in detail:
   - Day-by-day content
   - Production tasks
   - Publishing schedule
   - **Output:** Sample week template

**Phase 4 Checkpoint:**
- [ ] Volume targets calculated
- [ ] Weekly cadence defined
- [ ] 90-day plan outlined
- [ ] Recurring series created
- [ ] Example week demonstrated

### Phase 5: Metrics & Governance

**Purpose:** Define success metrics and content governance.

**Steps:**

1. **Step 5.1: Define metrics by channel**
   | Channel | Primary Metric | Secondary Metrics |
   |---------|---------------|-------------------|
   | Podcast | Subscribers | Downloads, retention |
   | Blog/Newsletter | Subscribers, open rate | Traffic, time on page |
   | LinkedIn | Followers, engagement | Profile views, DMs |
   | Pipeline | Qualified meetings | Content attribution |

   - **Output:** Metrics framework

2. **Step 5.2: Define content governance**
   - Approval workflow
   - Brand consistency checks
   - Quality checklist
   - Archive and refresh policy
   - **Output:** Governance framework

3. **Step 5.3: Document gaps and recommendations**
   - Missing inputs
   - Assumptions made
   - Follow-up research needed
   - **Output:** Gaps inventory

**Phase 5 Checkpoint:**
- [ ] Metrics defined per channel
- [ ] Governance framework documented
- [ ] Gaps noted

### Phase 6: Operationalization Bridge (Optional)

**Purpose:** Bridge from strategy to execution with operational systems. Recommend when scaling content production.

**When to implement:**
- Team of 2+ people producing content
- Publishing 8+ pieces/month across channels
- Multiple channels active (not just LinkedIn)
- Series-based content planned (not just standalone posts)

**What content operations provides:**
- Series architecture — turn pillars into multi-part series with narrative arcs
- Cross-channel sequencing — cascade design, weekly rhythm, channel coordination
- Production pipeline — Kanban stages, team roles, handoff workflows
- Channel optimization — per-platform algorithm guidance, lead capture, retargeting

---

## Core Frameworks

### Service-Based Content Pillars Framework

**Key principle:** Pillars should map to the company's actual services/offerings — not generic categories like "Educational" or "Promotional." AI/automation/tooling is the THROUGHLINE across all pillars, not a separate topic.

| Pillar | Purpose | % Mix | Example (GTM Consultancy) |
|--------|---------|-------|---------------------------|
| **Service Pillar 1** | Core offering authority | 30% | Positioning & Messaging |
| **Service Pillar 2** | Secondary offering | 25% | Websites & Landing Pages |
| **Service Pillar 3** | Tertiary offering | 20% | Launches & Campaigns |
| **Service Pillar 4** | Supporting capability | 15% | Founder LinkedIn & Content |
| **Operator Journey** | Personal connection | 10% | Client stories, behind the scenes |

**Adapting pillars to company context:**
- For a product company: Feature areas become pillars
- For a consultancy: Service lines become pillars
- For a platform: Use cases become pillars

### Funnel Stage Framework (TOFU/MOFU/BOFU)

Every piece of content serves a specific funnel stage:

| Stage | Purpose | Content Types | % Mix |
|-------|---------|---------------|-------|
| **TOFU** | Attract, build awareness | Hot takes, frameworks, industry trends, contrarian POVs, "most companies get this wrong" | 40% |
| **MOFU** | Nurture, demonstrate expertise | How-tos, process breakdowns, personal stories, tool deep-dives, "here's how I do it" | 35% |
| **BOFU** | Convert, prove results | Case studies, testimonials, service spotlights, comparison content, "here's what happened" | 25% |

### Pillar x Funnel Matrix

Map how each pillar appears at each funnel stage:

```markdown
| Pillar | TOFU (Attract) | MOFU (Nurture) | BOFU (Convert) |
|--------|----------------|----------------|----------------|
| Positioning | "Why most positioning fails" | "My 4-step framework" | "[Client] case study" |
| Websites | "Your homepage is lying" | "Homepage teardown" | "3X conversion results" |
| Launches | "Launch day doesn't matter" | "Pre-launch checklist" | "[Product] launch story" |
| LinkedIn | "LinkedIn isn't about posts" | "My posting workflow" | "[Founder] growth results" |
| Operator | "What I learned this month" | "Behind the scenes" | "Client work snapshot" |
```

### Content Flow Framework

```text
TENSION → EDUCATE → ACTIVATE → PROOF

Tension:     Create tension with the old. Acknowledge need for change.
Educate:     Introduce new → Explain by comparison → Adapt to new.
Activate:    Resources to implement the new.
Proof:       Case studies → Objection handling → Behind the scenes.
```

### Channel Priority Hierarchy

**Tier 1 — Core (Always recommend):**
- LinkedIn: Primary B2B distribution
- Blog/Newsletter: Owned authority content

**Tier 2 — Anchor (If capacity allows):**
- Podcast: Audio content engine
- YouTube: Video content engine

**Tier 3 — Amplification (Based on context):**
- X.com: Tech/startup audience
- Events: High-touch conversion
- Instagram/TikTok: Employer brand, younger demo

### Content Cascade Model

```
1 Anchor piece → 5-10 derivative pieces

Example:
1 Podcast episode (45 min)
  ↓
  1 Blog post (transcript + expansion)
  5 LinkedIn posts (key quotes, insights, clips)
  3 Short-form video clips (30-60 sec)
  1 Newsletter edition
  2 Quote graphics
```

---

## Output Format

### Standard Output Structure

```markdown
<!--
SKILL OUTPUT: Content Strategy
Generated: YYYY-MM-DD
Font: Inter (for rendering)
Version: 1.0
Company: [Company Name]
-->

# Content Strategy: [Company Name]

**Strategy period:** [Start date - End date]
**Based on:** ICP Research, Product Messaging, TOV Guidelines, Competitor Research
**Confidence:** [Score based on input completeness]

---

## 1. Strategy Foundations

### Content Goals

| Goal | Category | Success Metric | Priority |
|------|----------|----------------|----------|
| [Goal 1] | Revenue growth | [Metric] | 1 |
| [Goal 2] | Company awareness | [Metric] | 2 |
| [Goal 3] | [Category] | [Metric] | 3 |

### Core Topics

| Topic | Description | Goal Alignment |
|-------|-------------|----------------|
| [Topic 1] | [Description] | [Goal] |
| [Topic 2] | [Description] | [Goal] |

### Content Differentiators

1. **[Differentiator 1]:** [Description]
2. **[Differentiator 2]:** [Description]
3. **[Differentiator 3]:** [Description]

### Audience Segments

| Segment | Content Needs | Priority |
|---------|---------------|----------|
| [Segment 1] | [Needs] | High |
| [Segment 2] | [Needs] | Medium |

---

## 2. Content Pillars & Funnel Strategy

### Service-Based Content Pillars

**AI/Automation Throughline:** [How AI/tools appear across all pillars]

#### [Pillar 1 Name] (30% — ~X/month)
**Purpose:** [Purpose statement]

| Format | Funnel Stage | Example Topics |
|--------|--------------|----------------|
| [Format 1] | TOFU | [Topics] |
| [Format 2] | MOFU | [Topics] |
| [Format 3] | BOFU | [Topics] |

#### [Pillar 2 Name] (25% — ~X/month)
**Purpose:** [Purpose statement]

| Format | Funnel Stage | Example Topics |
|--------|--------------|----------------|
| [Format 1] | TOFU | [Topics] |
| [Format 2] | MOFU | [Topics] |
| [Format 3] | BOFU | [Topics] |

### Pillar x Funnel Matrix

| Pillar | TOFU (Attract) | MOFU (Nurture) | BOFU (Convert) |
|--------|----------------|----------------|----------------|
| [Pillar 1] | [Example] | [Example] | [Example] |
| [Pillar 2] | [Example] | [Example] | [Example] |

### Content Mix Summary

**By Pillar:**

| Pillar | % | Monthly Count | Key Formats |
|--------|---|---------------|-------------|
| [Pillar 1] | 30% | ~X | [Formats] |
| [Pillar 2] | 25% | ~X | [Formats] |
| **Total** | **100%** | **~X** | |

**By Funnel Stage:**

| Stage | % | Monthly Count | Content Types |
|-------|---|---------------|---------------|
| TOFU | 40% | ~X | Hot takes, frameworks, trends |
| MOFU | 35% | ~X | How-tos, deep-dives, stories |
| BOFU | 25% | ~X | Case studies, testimonials |
| **Total** | **100%** | **~X** | |

---

## 3. Channel Strategy

### Channel Selection

[Channel details per selected channel]

### Anchor Content

**Anchor format:** [Podcast / YouTube / Newsletter]

### Content Cascade

```
[ANCHOR CONTENT]
      ↓
[DERIVATIVE 1] — [Description]
      ↓
[DERIVATIVE 2] — [Description]
```

---

## 4. Planning & Execution

### Volume Targets

**Total monthly output:** ~X pieces

### Weekly Cadence

| Day | Production | Publishing |
|-----|------------|------------|
| Mon | [Task] | [Content type] |
| Tue | [Task] | [Content type] |

### First 90 Days

#### Month 1 — [Theme]
**Focus:** [Focus description]

#### Month 2 — [Theme]
**Focus:** [Focus description]

#### Month 3 — [Theme]
**Focus:** [Focus description]

### Recurring Series

| Series | Frequency | Channel | Pillar |
|--------|-----------|---------|--------|
| "[Series name]" | Weekly | [Channel] | [Pillar] |

---

## 5. Metrics & Governance

### Metrics by Channel

| Channel | Primary Metric | Secondary Metrics | Target |
|---------|---------------|-------------------|--------|
| [Channel] | [Metric] | [Metrics] | [Target] |

---

## 6. Gaps & Recommendations

### Missing Inputs

| Input | Impact | Recommendation |
|-------|--------|----------------|
| [Missing input] | [Impact] | [How to fill] |

---

## Iteration Prompts

After reviewing this strategy, consider:
1. "Should I create the LinkedIn content calendar for Month 1?"
2. "Want me to develop the podcast/YouTube episode plan?"
3. "Should I expand any content pillar with more topic ideas?"

---

## Related context

**Built from:**
- `marketing/product-marketing/MMYY-positioning.md` (positioning pillars)
- `marketing/product-marketing/MMYY-product-messaging.md` (messaging themes)
- `context/MMYY-icp-research.md` (audience channels and topics)

**Feeds into:**
- `marketing/content/social/` (social content calendar)
- `marketing/content/newsletter/` (newsletter topics)
- `marketing/content/thought-leadership/` (thought leadership pieces)
```

---

## What Good Looks Like

### Example 1: Content Goals Definition

**Input context:**
```
Company: Integrate.io (Data Delivery Platform)
ICP: Data Operators at enterprise companies
Position: Category creation for "Data Delivery Platform"
```

**Expected output:**
```markdown
### Content Goals

| Goal | Category | Success Metric | Priority |
|------|----------|----------------|----------|
| Pipeline generation | Revenue growth | Qualified meetings from content | 1 |
| Category leadership | Company awareness | "Data Delivery Platform" search volume | 2 |
| Data Operator role definition | Company awareness | Role adoption, community engagement | 3 |
| Top talent attraction | Employer branding | Quality applicants per role | 4 |
```

**Why this is good:**
- Goals are specific to company context
- Metrics are measurable
- Priorities are clear
- Aligns with category creation strategy

### Example 2: Service-Based Pillars with Funnel Mapping

**Expected output:**
```markdown
### Service-Based Content Pillars

**AI/Automation Throughline:** AI-powered data pipelines and automation appear across all pillars — not as a separate topic.

#### Data Pipeline Design (30% — ~10/month)
**Purpose:** Establish authority in core data architecture decisions

| Format | Funnel Stage | Example Topics |
|--------|--------------|----------------|
| "Most teams get this wrong" | TOFU | "Why your ETL pipeline is a ticking time bomb" |
| Architecture frameworks | MOFU | "The 3-layer data pipeline I use for every client" |
| Migration case studies | BOFU | "How [Client] migrated 2TB daily with zero downtime" |

#### Real-Time Sync (25% — ~8/month)
**Purpose:** Demonstrate expertise in operational data delivery

| Format | Funnel Stage | Example Topics |
|--------|--------------|----------------|
| Industry trends | TOFU | "Batch is dead. Here's what's replacing it." |
| Setup tutorials | MOFU | "Real-time Salesforce sync in 10 minutes" |
| Performance results | BOFU | "[Client] cut reporting lag from 24h to 5 min" |
```

**Why this is good:**
- Pillars map to actual service/product areas (not generic "Educational")
- Every format has explicit funnel stage assignment
- AI/automation is throughline, not separate pillar
- Mix percentages translate to monthly counts

### Anti-Examples (What to Avoid)

| Bad Pattern | Why It's Bad | Better Approach |
|-------------|--------------|-----------------|
| "Post regularly on LinkedIn" | No specifics | "5 LinkedIn posts/week: 2 educational, 1 personal, 2 promotional" |
| "Create valuable content" | No direction | "Educational guides on Data Operator workflows" |
| "Engagement metrics" | Too vague | "Target: 3% engagement rate, 50 comments/month" |
| Mix without math | Can't execute | "40% educational = 13 posts/month at 28 total" |

---

## Anti-Hallucination Guardrails

1. **Derive from inputs.** All topics, pillars, and themes must trace to ICP, messaging, or competitor research
2. **Don't invent metrics.** If current baselines unknown, mark as "Baseline TBD"
3. **Realistic volume.** Flag if recommendations exceed typical capacity
4. **Source recommendations.** Note which input (ICP, messaging, TOV) drove each recommendation
5. **Mark gaps.** Explicitly note missing inputs and their impact

---

## Quality Checklist (Pre-Delivery)

### Strategy Quality
- [ ] Goals defined with measurable metrics
- [ ] Core topics derived from ICP/messaging (not invented)
- [ ] Differentiators are specific and defensible
- [ ] Audience segments align with ICP research

### Pillars & Funnel Quality

- [ ] Service-based pillars defined (not generic Educational/Personal/Promotional)
- [ ] AI/automation throughline articulated
- [ ] Funnel stages (TOFU/MOFU/BOFU) mapped with content types
- [ ] Pillar x funnel matrix created
- [ ] Mix percentages add to 100% (both by pillar AND by funnel stage)
- [ ] Monthly counts calculated for both dimensions
- [ ] Formats are specific and actionable with funnel stage assignment

### Channel Quality
- [ ] Basic channels (LinkedIn, Blog/Newsletter) included
- [ ] Bonus channels justified with rationale
- [ ] Anchor content defined with cascade
- [ ] Metrics defined per channel

### Execution Quality
- [ ] Volume targets realistic for context
- [ ] Weekly cadence is actionable
- [ ] First 90 days themes build logically
- [ ] Recurring series are repeatable

---

## Post-Output: Iteration Prompts

After delivering output, proactively offer:

### Refinement Prompts
1. "Want me to adjust the content mix ratios?"
2. "Should I add/remove any channels?"
3. "Want different themes for the 90-day plan?"

### Expansion Prompts
1. "Should I create the detailed LinkedIn content calendar?"
2. "Want me to develop the podcast episode plan?"
3. "Should I expand any pillar with more topic ideas?"

### Quality Prompts
1. "Are the volume targets realistic for your team?"
2. "Does the cadence match founder availability?"
3. "Any topics that should be added or removed?"

---

## Skill Auto-Update Protocol

### Feedback Signal Detection

| User Signal | Interpretation | Action |
|-------------|----------------|--------|
| "Volume is too high/low" | Capacity mismatch | Log capacity preference |
| "Add [channel]" | Coverage gap | Log channel addition |
| "Remove [pillar]" | Pillar doesn't fit | Log pillar modification |
| "Good example week" | Success pattern | Capture as reference |
| "[Topic] doesn't fit" | Topic mismatch | Log topic refinement |
| Quick approval with few edits | Strong output | Reinforce patterns used |
| Heavy edits | Implicit correction | Analyze diff, learn pattern |

### Output as Reference Example

When user approves output with positive signal ("good strategy", quick approval):

1. **Ask:** "This content strategy met your expectations. Want me to save it as a reference example?"

2. **If approved:**
   - Extract the output (anonymize if requested)
   - Save to `examples/[date]-[client-slug].md`
   - Update "What Good Looks Like" section with link to new example

---

## Reference Files

| File | Purpose | Status |
|------|---------|--------|
| `references/output-template.md` | Full output template | ✓ Complete |
| `references/content-pillars-guide.md` | Pillar definitions and formats | ✓ Complete |
| `references/channel-playbooks.md` | Channel-specific guidance | ✓ Complete |

---

## Integration with Other Skills

| Skill | Relationship | Usage |
|-------|--------------|-------|
| **icp-research** | Provides input | Audience segments, personas, pain points |
| **product-messaging** | Provides input | Positioning, capabilities, differentiators |
| **competitor-research** | Provides input | Content gaps, competitor analysis |
| **tov-guidelines** | Provides input | Voice, vocabulary, patterns |
| **brand-guidelines** | Provides input | Visual guidelines for content |
| **linkedin-content** | Uses output | Execute LinkedIn pillar of strategy |
| **youtube-scripts** | Uses output | Execute video pillar of strategy |
| **product-launch** | Related | Launch content fits within strategy |

---

## Changelog

| Version | Date | Changes |
|---------|------|---------|
| 1.2 | 2026-02-11 | Broadened inputs to accept any context dimension (not just ICP + Messaging). Added Phase 6 operationalization bridge |
| 1.1 | 2026-01-16 | Added service-based pillars (replacing generic Educational/Personal/Promotional), TOFU/MOFU/BOFU funnel framework, pillar x funnel matrix |
| 1.0 | 2026-01-16 | Initial skill creation with v2.0 template structure |

---

## Web Research Integration

**Level:** 1 — Strategy (inherits upstream context, supplements with web research)

**Inherits from:** icp-research (personas, behavioral data), funnel-strategy (funnel stages)

### Research approach

| Source | What to gather | Method | When |
|--------|-------------|------|------|
| **Search performance data** | Search performance by query/page | Ask user for Google Search Console data or analytics screenshots | If available |
| **Competitor content** | Competitor content cadence, topics, channels | Web search for competitor blogs, LinkedIn profiles, newsletters | Always |
| **Industry benchmarks** | Content marketing benchmarks for the category | Web search for industry reports, benchmark studies | When setting volume targets |
| **Content planning context** | Meeting notes, internal discussions about content | Ask user for any relevant meeting notes or planning docs | If relevant discussions exist |
