---
name: icp-research
version: '4.2'
last_updated: 2026-04-30
author: marketing-team
description: 'Scrapes case studies, testimonials, and solutions pages from a target website to build structured ICP documentation.
  Produces TAM analysis, firmographic segments, champion and economic buyer personas, use case mapping, customer proof points,
  and voice-of-customer synthesis with normalized attributes. Requires website URL as primary input. Triggers: "ICP research",
  "ideal customer profile", "customer segment analysis", "persona research", "use case analysis", "who are their customers",
  or any URL provided for customer research. Upstream: recommended company-context. Downstream: feeds icp-behavioural, positioning,
  content-strategy, product-messaging, landing-page-copy, and outreach-emails. NOT for behavioural simulation (use /icp-behavioural)
  or interview prep (use /customer-interviews).'
goal: Scrapes case studies, testimonials, and solutions pages from a target website to build structured ICP documentation.
outcome: Scrapes case studies, testimonials, and solutions pages from a target website to build structured ICP documentation.
  Produces TAM analysis, firmographic segments, champion and economic buyer personas, use case mapping, customer proof points,
  and voice-of-customer synthesis with normalized...
primitive: research
ontology_type: icp-profile
review_gate: 1
inputs:
  required: []
  recommended:
  - company-context
outputs:
- type: icp-profile
  feeds_into:
  - positioning
  - product-messaging
  - website-copy
  - aeo-content
  - outreach-emails
  - sales-enablement
  - competitor-research
depends_on: []
feeds_into:
- aeo-content
- competitor-research
- website-copy
- outreach-emails
- positioning
- product-messaging
- sales-enablement
owned_by_agent: researcher
mcps_used: []
push_targets:
- gdrive
- notion
triggers:
  slash_commands:
  - /icp-research
  natural_language: []
status: draft
locked_by: null
locked_date: null
lock_version: null
sources_count: 0
context: fork
effort: max
---

# ICP research skill

Generate ideal customer profiles for B2B SaaS clients through systematic research and structured output.

## Report structure

The final ICP report follows this numbered section order:

| Section | Purpose |
|---------|---------|
| Header | Research date, website, category, confidence score (1-5) |
| 1. Executive summary | High-level synthesis of findings and strategic recommendations |
| 2. TAM analysis | Market sizing with targeting strategy per layer (TAM/SAM/SOM/ICP) |
| 3. Firmographics analysis | Geographic, industry, company segment patterns, and technographics |
| 4. Roles and personas | Core use case, Champion deep-dive, Economic Buyer deep-dive, buying journey |
| 5. Negative ICP | Who is NOT a fit, disqualification criteria, and red flags |
| 6. Customer proof points | Named customers, outcomes, and evidence with URLs |
| 7. Voice of customer synthesis | Language patterns, pain points, and outcome terminology |
| 8. ICP segment definitions | Scoring matrix, in-market signals, segment deep-dives |
| 9. Intent signals and buying triggers | Observable signals indicating purchase readiness |
| 10. Recommendations | Prioritization and messaging by segment |
| 11. Data gaps | Missing information and follow-up suggestions |
| 12. Source appendix | All sources with access dates, URLs, and confidence levels |

**Confidence score calculation:** Count High/Medium/Low data points. Score 5 if >70% High, Score 4 if >50% High, Score 3 if mixed, Score 2 if >50% Low, Score 1 if >70% Low.

---

## Output dimensions

Research produces structured outputs across these dimensions. **Full field schemas + table structures + persona deep-dive templates: [`references/dimensions.md`](./references/dimensions.md).**

| Dimension | What it covers |
|-----------|----------------|
| **TAM analysis** | TAM/SAM/SOM/ICP table with targeting strategy per layer + assumptions |
| **Firmographics** | Geography, industry, company segments + segment deep-dives + technographics + adjacent stack |
| **Technographics** | Required vs preferred tools by category (CRM, CDP, Analytics, etc.) with evidence |
| **Personas** | Champion (12 fields) + Economic Buyer (13 fields) + Users + buying journey + core use case |
| **Negative ICP** | Disqualification criteria + red flags from churn + objections that signal poor fit |
| **Customer proof points** | Named customers + outcome patterns with URL + date |
| **Voice of customer** | Terminology / pain / outcome / objection patterns with verbatim quotes |
| **Segments** | Scoring matrix (TAM × Ease of win × Strategic fit) + per-segment deep-dive + positioning |
| **Beachhead selection** (optional) | Pick ONE segment to dominate first using weighted scoring rubric |
| **Intent signals** | Company-level + persona-level signals with detection sources |

Each persona deep-dive includes a verbatim Channels & Influences map (communities, content, events, influencers) and a sourced testimonial. Each segment deep-dive includes Priorities, ICP-fit, Budget & sales cycle, Unique approach, and Proof points.

---

## Sorting rules

Apply consistently across all tables:

| Dimension | Sort order |
|-----------|------------|
| Decision role | **Champion → Economic Buyer → User → Influencer** |
| Company size | Enterprise → Mid-market → SMB → Startup |
| Frequency | Very high → High → Medium → Low |
| Confidence | High → Medium → Low |
| Customer concentration | High → Medium → Low |
| Priority | 1 → 2 → 3 → 4 |
| Industry presence | Strong → Moderate → Emerging |

---

## Workflow

The research runs in 3 phases. Read [`references/workflow.md`](./references/workflow.md) for the full step-by-step.

Phase summary:

1. **Data extraction** — discover key pages (customers, case studies, solutions, pricing, integrations, G2, LinkedIn) → extract raw data with URL+date per source → normalize attributes (geography, industry, company size, team size, tech stack)
2. **Analysis and synthesis** — identify patterns per segment → build Champion + Economic Buyer deep-dives → identify negative ICP + intent signals → collect proof points → document technographics → calculate TAM with targeting strategy → identify ICP as highest-priority segment below SOM
3. **Structured output** — generate the 12 numbered sections, apply sorting rules, include rich descriptions with URLs and dates

---

## Input requirements

### Required
- **Website URL** — primary company website

### Optional (improves quality)

| Input | Purpose |
|-------|---------|
| Case studies URL | Direct link to case studies page |
| Testimonials URL | Direct link to testimonials |
| Market context | Category, competitors, GTM approach |
| Sales call notes | Win/loss context, objections |
| Existing ICP docs | Validate or expand current understanding |

---

## Anti-hallucination guardrails

1. **Never invent customer names.** Only cite publicly referenced customers.
2. **Quote verbatim.** Use exact customer language in quotes.
3. **Mark confidence levels.** Tag data as High/Medium/Low confidence.
4. **Cite sources with URLs and dates.** Include URL and access date for every claim.
5. **Acknowledge gaps.** Explicit "Not available" for missing data.

| Confidence | Definition |
|------------|------------|
| High | Direct from official source, verifiable |
| Medium | Third-party source, multiple signals |
| Low | Single indirect source, inferred |

---

## Quality

Pre-delivery checklist (coverage / personas / segments / evidence): [`references/quality.md`](./references/quality.md).

---

## Reference files

| File | Purpose |
|------|---------|
| [`references/dimensions.md`](./references/dimensions.md) | Full field schemas + persona deep-dive templates + segment structures + intent signals |
| [`references/workflow.md`](./references/workflow.md) | 3-phase step-by-step (extraction → synthesis → structured output) |
| [`references/quality.md`](./references/quality.md) | Pre-delivery checklist |
| [`references/dimension-schemas.md`](./references/dimension-schemas.md) | Legacy field definitions (granular) |
| [`references/icp-output-template.md`](./references/icp-output-template.md) | Full report template with numbered sections |
| [`references/search-patterns.md`](./references/search-patterns.md) | Detailed search queries per data type |
| [`references/examples/example-strapi.md`](./references/examples/example-strapi.md) | Worked example: Strapi (headless CMS) |

---

## Related context

**Built from:**
- `MMYY-company-context.md` (company profile)
- `MMYY-competitor-*.md` (competitor profiles for market context)
- Win/loss analysis if available

**Feeds into:**
- `/icp-behavioural` (synthetic personas built on ICP foundation)
- `/positioning` (positioning targets ICP pain points)
- `/product-messaging` (messaging speaks to ICP personas)
- `/content-strategy` (content targets ICP channels and topics)
