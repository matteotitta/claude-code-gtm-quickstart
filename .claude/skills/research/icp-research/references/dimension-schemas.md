# Dimension schemas

Field definitions and normalization rules for ICP research.

---

## TAM analysis schema

Market opportunity sizing with explicit methodology.

### Required fields

| Field | Type | Description |
|-------|------|-------------|
| `tam_summary` | string (3-5 sentences) | Rich paragraph explaining market opportunity with methodology |
| `tam_value` | currency | Total addressable market in dollars |
| `sam_value` | currency | Serviceable addressable market |
| `som_value` | currency | Serviceable obtainable market |
| `methodology` | enum | "bottom-up" or "top-down" |

### Methodology definitions

| Methodology | When to use | Calculation |
|-------------|-------------|-------------|
| Bottom-up | When customer counts and pricing are available | (# of potential customers) × (average contract value) |
| Top-down | When market size reports are available | (Total market size) × (% addressable) × (% obtainable) |

### Assumptions documentation

Always document:
- Customer count estimates and sources
- Pricing assumptions and basis
- Market growth assumptions
- Competitive share assumptions

---

## Firmographics schema

Company attributes defining ideal customers.

### Geographic normalization

| Raw input | Normalized to |
|-----------|---------------|
| United States, USA, America | US |
| Canada, US & Canada, North American | North America |
| UK, Europe, European, Germany, France | EMEA |
| Asia, Japan, Australia, Singapore | APAC |
| Brazil, Mexico, South America | LATAM |
| Worldwide, International | Global |

### Industry verticals (standard list)

- Consumer Goods
- Beauty & Personal Care
- Apparel & Fashion
- Food & Beverage
- Health & Wellness
- E-commerce / Retail
- Technology / SaaS
- Finance / Fintech
- Healthcare
- Media & Entertainment
- Education
- Manufacturing
- Professional Services
- Aerospace / Defense
- Automotive
- Telecommunications
- Nonprofit

### Company size normalization

| Signals | Revenue band | Employee band |
|---------|--------------|---------------|
| Pre-seed, bootstrapped, <10 employees | <$1M | 1-10 |
| Seed, early-stage, small team | $1-10M | 11-50 |
| Series A, growth stage | $10-50M | 51-200 |
| Series B, scaling | $50-100M | 201-500 |
| Series C+, established | $100-500M | 501-1000 |
| Enterprise, Fortune 500 | $500M+ | 1000+ |

### Segment labels (sorted by size)

| Label | Employee count | Revenue range | Typical funding |
|-------|----------------|---------------|-----------------|
| Enterprise | 1,000+ | $500M+ | Public / PE |
| Mid-market | 100-1,000 | $50M-$500M | Series B-D |
| SMB | 10-100 | $1M-$50M | Seed-Series A |
| Startup | 1-50 | <$1M | Pre-seed / Bootstrapped |

### Tech stack normalization

Format: `Category (Tool)`

| Category | Example tools |
|----------|---------------|
| CRM | Salesforce, HubSpot, Pipedrive |
| E-commerce | Shopify, BigCommerce, WooCommerce |
| Email | Klaviyo, Mailchimp, Braze |
| CDP | Segment, mParticle, Rudderstack |
| Analytics | Amplitude, Mixpanel, Google Analytics |
| Ads | Meta, Google, TikTok |
| Attribution | Triple Whale, Northbeam, Rockerbox |
| Frontend | React, Next.js, Vue.js, Nuxt.js |
| Backend | Node.js, Python, PHP |
| Database | PostgreSQL, MongoDB, MySQL |
| Hosting | AWS, Azure, GCP, Vercel |

---

## Technographics schema

Technology prerequisites and common stack patterns indicating fit or readiness.

### Required vs Preferred classification

| Classification | Definition |
|----------------|------------|
| Required | Product dependency — cannot function without this tool/category |
| Preferred | Better fit — faster time-to-value or stronger integration |

### Technographics categories

| Category | Purpose | Example tools |
|----------|---------|---------------|
| CRM | Customer relationship management | Salesforce, HubSpot, Pipedrive |
| E-commerce | Commerce platforms | Shopify, BigCommerce, WooCommerce |
| Marketing automation | Email and automation | Klaviyo, Mailchimp, Braze, Marketo |
| CDP | Customer data platforms | Segment, mParticle, Rudderstack |
| Analytics | Product and web analytics | Amplitude, Mixpanel, Google Analytics, Posthog |
| Cloud | Infrastructure providers | AWS, Azure, GCP, Vercel |
| Data warehouse | Data storage | Snowflake, BigQuery, Redshift, Databricks |
| ERP | Enterprise resource planning | SAP, NetSuite, Oracle |
| Communication | Team communication | Slack, Microsoft Teams |
| Project management | Work management | Jira, Asana, Monday, Linear |

### Technographics table format

| Category | Required/Preferred | Common tools | Why it matters | Evidence |
|----------|-------------------|--------------|----------------|----------|
| [Category] | Required | [Tool names] | [Product dependency] | [Source] ([URL], [Date]) |
| [Category] | Preferred | [Tool names] | [Better fit reason] | [Source] ([URL], [Date]) |

---

## Personas schema

People who buy, influence, or use the product.

### Decision role definitions (sorted by authority)

| Role | Definition | Typical titles |
|------|------------|----------------|
| Economic Buyer | Signs contract, controls budget | VP+, Director, Head of |
| Champion | Drives evaluation, influences decision | Manager, Lead, Senior IC |
| User | Daily product user | IC roles, Specialists |
| Influencer | Provides input but doesn't decide | Adjacent team members |

### Required fields

| Field | Type | Description |
|-------|------|-------------|
| `name` | string | Persona identifier |
| `description` | string (3-5 sentences) | Rich summary of role context, typical day, reporting structure |
| `decision_role` | enum | Economic Buyer, Champion, User, Influencer |
| `frequency` | enum | Very high, High, Medium, Low |

### Core fields

| Field | Type | Sorting rule |
|-------|------|--------------|
| `titles` | list[string] | By frequency (most common first) |
| `responsibilities` | list[string] | By importance |
| `pain_points` | list[string] | By frequency |
| `goals` | list[string] | By priority |
| `buying_triggers` | list[string] | By frequency |

### Champion deep-dive template

The Champion is the person who feels the pain daily, drives the evaluation, and advocates internally.

| Field | Type | Description |
|-------|------|-------------|
| `titles` | list[string] | Title variations with context |
| `department_team_size` | string | Where they sit and typical team structure |
| `responsibilities` | string (2-3 sentences) | Key responsibilities in paragraph form |
| `jobs_to_be_done` | list[string] | 3-5 product-agnostic jobs |
| `success_metrics_kpis` | string (2-3 sentences) | How they're measured |
| `challenges` | string (2-3 sentences) | Things that make their job harder |
| `pain_points` | string (2-3 sentences) | Problems that hurt them directly |
| `current_alternatives` | string (1-2 sentences) | How they achieve goals without product |
| `problems_with_alternatives` | string (2-3 sentences) | Specific issues with current approach |
| `buying_behavior` | string (1-2 sentences) | How they discover and evaluate solutions |
| `channels_influences` | object | Communities, content sources, events, influencers |
| `testimonial` | string | Verbatim quote with name, title, company, usage description, URL, date |

### Economic Buyer deep-dive template

The Economic Buyer controls budget and makes the final purchasing decision.

| Field | Type | Description |
|-------|------|-------------|
| `titles` | list[string] | Title variations with seniority context |
| `department_team_size` | string | Where they sit, reporting structure, direct reports |
| `responsibilities` | string (2-3 sentences) | Key accountabilities and decisions |
| `jobs_to_be_done` | list[string] | 3-5 business-level jobs |
| `success_metrics_kpis` | string (2-3 sentences) | Business metrics they're accountable for |
| `challenges` | string (2-3 sentences) | Business-level obstacles |
| `pain_points` | string (2-3 sentences) | Business impacts creating urgency |
| `what_they_actually_care_about` | string (2-3 sentences) | Beyond stated concerns |
| `common_objections` | string (2-3 sentences) | Typical pushback during sales |
| `what_a_no_brainer_looks_like` | string (2-3 sentences) | Conditions making approval easy |
| `buying_behavior` | string (1-2 sentences) | How they evaluate and approve purchases |
| `channels_influences` | object | Communities, content sources, events, influencers |
| `testimonial` | string | Verbatim quote with name, title, company, URL, date |

### Channels & influences schema

| Field | Description | Examples |
|-------|-------------|----------|
| `communities` | Where they participate | LinkedIn groups, Slack communities, forums |
| `content_sources` | What they consume | Newsletters, podcasts, YouTube channels, blogs |
| `events` | What they attend | Conferences, webinars, meetups |
| `influencers` | Who they follow | LinkedIn, Twitter thought leaders |

---

## Customer proof points schema

Evidence from specific customers.

### Sorting rules

| Dimension | Sort order |
|-----------|------------|
| Company size | Enterprise → Mid-market → SMB → Startup |
| Outcome frequency | Very high → High → Medium → Low |
| Confidence | High → Medium → Low |

### Required fields

| Field | Type | Description |
|-------|------|-------------|
| `customer_name` | string | Company name (public references only) |
| `industry` | string | Normalized industry vertical |
| `size` | enum | Enterprise, Mid-market, SMB, Startup |
| `outcome` | string | Key quantified outcome |
| `confidence` | enum | High, Medium, Low |
| `source_url` | string | Link to case study or testimonial |

### Confidence definitions

| Level | Definition | Examples |
|-------|------------|----------|
| High | Direct from official source, verifiable | Case study page, press release |
| Medium | Third-party source, multiple signals | G2 review, news article |
| Low | Single indirect source, inferred | Forum mention, job posting |

---

## Voice of customer schema

Language patterns from customer communications.

### Frequency normalization

| Raw signals | Normalized to |
|-------------|---------------|
| 5+ mentions, appears in most sources | Very high |
| 3-4 mentions, appears in multiple sources | High |
| 2 mentions, appears in some sources | Medium |
| 1 mention, single source | Low |

### Required fields for each VOC category

| Category | Fields | Sorting |
|----------|--------|---------|
| Terminology | term, frequency, context, internal_equivalent | By frequency |
| Pain points | pain, phrasing, frequency, source | By frequency |
| Outcomes | outcome, phrasing, frequency, source | By frequency |
| Objections | objection, phrasing, frequency, source | By frequency |

### Quote requirements

- All customer phrasing must be verbatim
- Include source URL for every quote
- Never paraphrase or combine quotes
- Mark confidence level for each

---

## Segment schema

Distinct customer segments with targeting guidance.

### Required fields

| Field | Type | Description |
|-------|------|-------------|
| `name` | string | Segment identifier (descriptive) |
| `description` | string (4-6 sentences) | Rich narrative describing the segment |
| `segment_tam` | currency | Market opportunity for this segment |
| `positioning` | string | Lead message for this segment |

### Segment attributes table

| Attribute | Description | Source requirement |
|-----------|-------------|-------------------|
| Industry | Primary industries | Cite evidence |
| Company size | Size range | Cite evidence |
| Geography | Primary regions | Cite evidence |
| Primary persona | Buyer or Champion role | Cite evidence |
| Primary use case | Most common use case | Cite evidence |
| Buying trigger | What initiates purchase | Cite evidence |
| Key pain | Primary pain point | Cite evidence |
| Success metric | How they measure success | Cite evidence |

### Representative customers

- Minimum 2 named customers per segment
- All from public references only
- Include mix of sizes if available

---

## Sorting rules summary

Apply these sorting rules consistently across all tables:

| Dimension | Sort order |
|-----------|------------|
| Decision role | Champion → Economic Buyer → User → Influencer |
| Company size | Enterprise → Mid-market → SMB → Startup |
| Frequency | Very high → High → Medium → Low |
| Confidence | High → Medium → Low |
| Customer concentration | High → Medium → Low |
| Priority | 1 → 2 → 3 → 4 |
| Industry presence | Strong → Moderate → Emerging |
| Importance | Critical → High → Medium → Low |

---

## Intent signals schema

Observable events or behaviors indicating purchase readiness.

### Signal types

| Type | Definition | Examples |
|------|------------|----------|
| Company-level | Events at the organization level | New hires, funding, tech changes |
| Persona-level | Behaviors from individual buyers | Role changes, content engagement |

### Required fields

| Field | Type | Description |
|-------|------|-------------|
| `signal` | string | The observable event or behavior |
| `type` | enum | Company-level, Persona-level |
| `meaning` | string | What this signal indicates |
| `why_it_matters` | string | Buying implication |
| `detection_source` | string | Where to find this signal |

### Common company-level signals

| Signal | Meaning | Detection source |
|--------|---------|------------------|
| New executive hire (VP/Head/Director) | New leader = new tools + strategy | LinkedIn Sales Navigator, job boards |
| Open job postings in relevant department | Scaling team | LinkedIn, Indeed, Greenhouse |
| Funding announcement | Growth expected | Crunchbase, TechCrunch, LinkedIn |
| Tech stack change | Implementation moment | BuiltWith, G2, vendor announcements |
| Competitor displacement signals | Active evaluation | G2 reviews, job postings |
| Regulatory/compliance trigger | Mandatory requirement | Industry news, regulatory filings |
| M&A activity | Integration needs | Press releases, Crunchbase |

### Common persona-level signals

| Signal | Meaning | Detection source |
|--------|---------|------------------|
| Recent promotion/role change | More accountability | LinkedIn |
| Posts about relevant challenges | Feeling daily frustration | LinkedIn, Twitter |
| Joined relevant community | Active learning | Slack groups, LinkedIn groups |
| Attended relevant event | Active evaluation | Event attendee lists, LinkedIn activity |
| Engaged with competitor content | Evaluating alternatives | LinkedIn, content engagement |
| Tenure milestone in role | Seeking impact | LinkedIn |

### Signal strength classification

| Strength | Characteristics | Recommended action |
|----------|-----------------|-------------------|
| High | Multiple signals + recent timing | Immediate outreach |
| Medium | Single strong signal OR older timing | Nurture sequence |
| Low | Weak signal OR no recency | Monitor for additional signals |
