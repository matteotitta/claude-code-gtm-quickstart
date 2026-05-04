# Output dimensions — full field schemas

Detailed schemas for every output dimension in the ICP report. The body of SKILL.md lists these dimensions; this file specifies their fields, table structures, and required deep-dive content. See also `dimension-schemas.md` (legacy field definitions).

---

## TAM analysis

Market opportunity sizing with explicit methodology, assumptions, and targeting strategy.

| Field | Description |
|-------|-------------|
| TAM summary | Rich paragraph explaining total addressable market with methodology |
| TAM calculation table | Metric, value, source/basis, and **targeting strategy** for each layer |
| ICP row | Below SOM: highest priority segment based on research findings |
| Assumptions | Documented assumptions underlying each estimate |

**TAM table structure:**

| Metric | Value | Source/basis | Targeting strategy |
|--------|-------|--------------|-------------------|
| TAM | $XB | [Methodology] | Long-term market awareness and category leadership |
| SAM | $XM | [Qualification] | Segment-specific campaigns and channel strategy |
| SOM | $XM | [Capture estimate] | Direct sales and targeted ABM |
| **ICP** | $XM | [Research findings] | Highest-priority accounts for immediate focus |

---

## Firmographics

Company attributes that define ideal customers with segment deep-dives.

| Field | Description |
|-------|-------------|
| Geography summary | Paragraph with regional patterns and evidence |
| Geography table | Regions sorted by concentration, with URL + date evidence |
| Industry summary | Paragraph explaining vertical patterns |
| Industry table | Industries sorted by presence, with URL + date evidence |
| Company segments summary | Paragraph describing size/stage patterns |
| Segments table | Enterprise → Mid-market → SMB → Startup |
| **Segment deep-dives** | For each segment: Priorities, ICP-fit, Budget & sales cycle, Unique approach, Proof points |
| **Technographics** | Required tools, integrations, and tech stack indicators |
| Adjacent stack | Common tools and integrations |

**Company segment deep-dive structure:** for each segment (Enterprise, Mid-market, SMB), include:
- **Priorities:** Key priorities within today's market trends and dynamics
- **ICP-fit:** Why this segment is a good fit for our product
- **Budget & sales cycle:** Spending power and typical cycle length
- **Unique approach:** How we target this segment uniquely
- **Proof points:** Stats of impact from representatives with URLs and dates

---

## Technographics

Required technology prerequisites and common stack patterns.

| Category | Purpose |
|----------|---------|
| CRM | Salesforce, HubSpot, Pipedrive |
| E-commerce | Shopify, BigCommerce, WooCommerce |
| Marketing automation | Klaviyo, Mailchimp, Braze, Marketo |
| CDP | Segment, mParticle, Rudderstack |
| Analytics | Amplitude, Mixpanel, Google Analytics, Posthog |
| Cloud | AWS, Azure, GCP, Vercel |
| Data warehouse | Snowflake, BigQuery, Redshift, Databricks |
| ERP | SAP, NetSuite, Oracle |
| Communication | Slack, Microsoft Teams |
| Project management | Jira, Asana, Monday, Linear |

**Technographics table structure:**

| Category | Required/Preferred | Common tools | Why it matters | Evidence |
|----------|-------------------|--------------|----------------|----------|
| [Category] | Required | [Tool names] | [Product dependency or integration] | [Source] ([URL], [Date]) |
| [Category] | Preferred | [Tool names] | [Better fit or faster time-to-value] | [Source] ([URL], [Date]) |

---

## Personas

Who buys and uses the product, with explicit Champion and Economic Buyer deep-dives.

| Field | Description |
|-------|-------------|
| Persona overview | Paragraph summarizing buying committee structure |
| Personas table | Sorted: **Champion → Economic Buyer → User → Influencer** |
| **Core use case** | Business process definition with steps, scenarios, alternatives, drivers, outcomes |
| **Champion deep-dive** | Explicit template (12 fields below) |
| **Economic Buyer deep-dive** | Explicit template (13 fields below) |
| User deep-dive(s) | Additional personas who use the product daily |
| Use cases by role | Champion first, then by seniority |
| Alternatives mentioned | Competitors and substitutes with URLs |
| Buying journey | Champion → Economic Buyer → User columns |

### Core use case structure

- **Use case statement:** 1-2 sentences defining the business process
- **Key steps:** Numbered steps in the process
- **Core scenarios:** 3-4 typical scenarios
- **Current alternatives:** Competitors, Manual, DIY approaches
- **Business drivers:** What drives the need
- **Desired outcomes:** What success looks like

### Champion deep-dive (12 fields)

The Champion is the person who feels the pain daily, drives the evaluation, and advocates internally for the solution.

1. **Titles:** Title variations with context (e.g., "Manager of X, Senior Y, Lead Z")
2. **Department & team size:** Where they sit and typical team structure
3. **Responsibilities:** Key responsibilities in paragraph form (2-3 sentences)
4. **Jobs to be done:** 3-5 product-agnostic jobs they're trying to accomplish
5. **Success metrics / KPIs:** How they're measured and what success looks like
6. **Challenges:** Things that make their job harder
7. **Pain points:** Problems that hurt them directly
8. **Current alternatives:** How they currently achieve goals without this product
9. **Problems with alternatives:** Specific issues with current approach
10. **Buying behavior:** How they typically discover and evaluate solutions
11. **Channels & influences:** Communities, content, events, and influencers they trust
12. **Testimonial:** Verbatim quote from case study with name, title, company, and description of product usage

**Channels & influences format:**
- **Communities:** LinkedIn groups, Slack communities, forums (RevGenius, Pavilion, specific subreddits)
- **Content sources:** Newsletters, podcasts, YouTube channels, blogs they follow
- **Events:** Conferences, webinars, meetups they attend
- **Influencers:** People they follow and trust on LinkedIn, Twitter, etc.

### Economic Buyer deep-dive (13 fields)

The Economic Buyer controls budget and makes the final purchasing decision.

1. **Titles:** Title variations with context (e.g., "VP of X, Director of Y, Head of Z")
2. **Department & team size:** Where they sit, reporting structure, direct reports
3. **Responsibilities:** Key responsibilities in paragraph form (2-3 sentences)
4. **Jobs to be done:** 3-5 business-level jobs they're trying to accomplish
5. **Success metrics / KPIs:** Business metrics they're accountable for
6. **Challenges:** Business-level obstacles they face
7. **Pain points:** Business impacts that create urgency
8. **What they actually care about:** Beyond stated concerns — what drives decisions
9. **Common objections:** Typical pushback during sales process
10. **What a "no-brainer" looks like:** Conditions that make approval easy
11. **Buying behavior:** How they evaluate and approve purchases
12. **Channels & influences:** Where they get information and who they trust
13. **Testimonial:** Verbatim quote from case study with name, title, company

**Channels & influences format (for Economic Buyer):**
- **Communities:** Executive networks, industry associations, peer groups
- **Content sources:** Industry reports, analyst briefings, executive newsletters
- **Events:** Leadership summits, board meetings, industry conferences
- **Influencers:** Analysts, advisors, peer executives they respect

---

## Negative ICP

Identifying who is NOT a fit helps sales disqualify quickly and avoid bad-fit deals.

| Field | Description |
|-------|-------------|
| Disqualification criteria | Table of attributes that indicate poor fit |
| Red flags | Warning signs from churned or unsuccessful customers |
| Objection patterns | Objections that signal poor fit vs. legitimate concerns |

**Disqualification criteria table:**

| Criterion | Threshold | Why it matters | Evidence |
|-----------|-----------|----------------|----------|
| Company size | [Too small/too large] | [Resource/complexity mismatch] | [Source] |
| Technical prerequisites | [Missing requirement] | [Product won't work] | [Source] |
| Budget constraints | [Below minimum] | [Can't afford proper implementation] | [Source] |
| Use case mismatch | [Specific scenario] | [Product not designed for this] | [Source] |

**Objections that signal poor fit:**

| Objection | Why it signals poor fit | Contrast with legitimate version |
|-----------|------------------------|----------------------------------|
| [Objection] | [Root cause] | [How qualified prospects phrase similar concerns] |

---

## Customer proof points + Voice of customer

| Field | Description |
|-------|-------------|
| Proof points overview | Paragraph synthesizing evidence quality |
| Named customers table | With URL and date for each source |
| Outcome patterns | Quantified results with URL and date |
| VOC overview | Paragraph explaining terminology patterns |
| Terminology / pain / outcome / objection patterns | All with URL and date |

---

## Segments

Distinct customer segments with comprehensive targeting guidance.

| Field | Description |
|-------|-------------|
| Segment overview | Paragraph explaining segmentation logic |
| Scoring matrix | TAM × Ease of win × Strategic fit = Score |
| In-market signals | Observable signals by segment |
| Per-segment definition | Full attribute table with URL + date evidence |
| **Segment deep-dives** | Priorities, ICP-fit, Budget & sales cycle, Unique approach, Proof points |
| Positioning recommendation | Lead message for segment |

For each ICP segment include: Priorities, ICP-fit, Budget & sales cycle, Unique approach, Proof points (with customer name, title, description, URL, date).

---

## Beachhead selection (optional)

Pick ONE segment to dominate first.

**Scoring rubric:**

| Criterion | Weight | Description |
|-----------|--------|-------------|
| TAM opportunity | 30% | Revenue potential in this segment |
| Ease of win | 30% | Short sales cycle, clear pain, few competitors |
| Strategic fit | 20% | Does winning here create leverage for adjacent segments? |
| Reference-ability | 20% | Will wins here produce case studies that unlock other segments? |

**Decision:** Score each segment 1-5 on each criterion. Multiply by weight. Highest composite score = recommended beachhead.

**When to use:** Early-stage clients choosing initial focus, or established clients expanding into new segments.

---

## Intent signals and buying triggers

Observable events or behaviors indicating purchase readiness.

| Field | Description |
|-------|-------------|
| Overview | Paragraph explaining signal detection strategy |
| Company-level signals | Events at the organization level |
| Persona-level signals | Behaviors from individual buyers |
| Signal sources | Where to detect each signal |

**Intent signals table structure:**

| Signal | Type | What it means | Why it matters | Detection source |
|--------|------|---------------|----------------|------------------|
| [Signal name] | Company-level | [Interpretation] | [Buying implication] | [LinkedIn, Crunchbase, BuiltWith, etc.] |
| [Signal name] | Persona-level | [Interpretation] | [Buying implication] | [LinkedIn, G2, etc.] |

**Common company-level signals:** new executive hire (VP/Head/Director of relevant function); open job postings; funding announcement; tech stack change; competitor displacement signals; regulatory/compliance trigger; M&A activity.

**Common persona-level signals:** recent role change or promotion; LinkedIn posts about relevant challenges; engagement with competitor content; event attendance or speaking; community participation; content consumption patterns.

---

## Rich description requirements

Every section must include contextual paragraphs, not just tables. All evidence must include URL and access date.

| Section | Required prose |
|---------|----------------|
| Each macro section (1-12) | Opening paragraph (3-5 sentences) summarizing findings |
| Each industry vertical | 2-3 sentences explaining why this industry fits and evidence |
| Each company segment | Deep-dive with Priorities, ICP-fit, Budget & sales cycle, Unique approach, Proof points |
| Champion persona | Full deep-dive with all 12 fields including Channels & influences |
| Economic Buyer persona | Full deep-dive with all 13 fields including Channels & influences |
| Core use case | Full definition with steps, scenarios, alternatives, drivers, outcomes |
| Each ICP segment | Deep-dive with Priorities, ICP-fit, Budget & sales cycle, Unique approach, Proof points |
| Negative ICP | Disqualification criteria, red flags, and objection patterns |
| Intent signals | Company-level and persona-level signals with detection sources |
| Data gaps | Paragraph explaining impact of missing data and mitigation |

**Paragraph quality checklist:** opens with the key insight, not setup; includes specific evidence (names, numbers, sources); includes URL and date for all evidence; explains the "so what" — why this matters; avoids generic language that could apply to any company.
