# Competitor Data Schema — Reference Guide

A centralized data architecture for managing competitor information across comparison pages, battlecards, and analysis. This schema ensures consistency and enables efficient page generation at scale.

---

## Why a Centralized Schema?

### Problems with ad-hoc competitor data:
- Inconsistent information across pages
- Outdated pricing in some places
- Duplicate research effort
- Hard to update when competitors change

### Benefits of centralized schema:
- **Single source of truth** — Update once, reflect everywhere
- **Scalable page generation** — Template + data = pages
- **Consistency** — Same facts across all content
- **Maintenance efficiency** — Track what needs updating

---

## Core Competitor Schema

```yaml
competitor:
  # Identity
  id: string                    # unique identifier (slug)
  name: string                  # Display name
  legal_name: string            # Legal entity name
  website: url
  logo_url: url

  # Categorization
  category: string              # Primary category
  subcategories: array          # Secondary categories
  positioning: string           # How they position themselves

  # Company data
  company:
    founded: year
    headquarters: string
    employee_count: number
    employee_count_source: string
    funding_total: number
    funding_stage: string       # Seed, Series A, etc.
    latest_round_date: date
    revenue_estimate: string    # Range or "Unknown"
    revenue_source: string

  # Product data
  product:
    tagline: string
    description: string         # 2-3 sentences
    core_features: array
    differentiators: array
    platforms: array            # Web, Desktop, Mobile, API
    integrations_count: number
    api_available: boolean

  # ICP data
  icp:
    company_sizes: array        # SMB, Mid-market, Enterprise
    industries: array
    personas: array             # Roles that use it
    named_customers: array
    customer_count_estimate: string

  # Pricing data
  pricing:
    model: string               # Per seat, usage, flat, hybrid
    value_metric: string        # What they charge for
    currency: string
    tiers:
      - name: string
        price: number
        billing: string         # monthly, annual
        includes: array
    free_tier: boolean
    free_trial: boolean
    trial_days: number
    enterprise_tier: boolean
    pricing_page_url: url
    last_verified: date

  # Reviews data
  reviews:
    g2:
      rating: number
      review_count: number
      url: url
    capterra:
      rating: number
      review_count: number
      url: url
    top_praised: array          # Themes from positive reviews
    top_criticized: array       # Themes from negative reviews
    last_updated: date

  # Competitive intelligence
  competitive:
    strengths: array
    weaknesses: array
    win_reasons: array          # Why customers choose them
    loss_reasons: array         # Why customers leave them
    common_objections: array    # Objections when selling against

  # Content/marketing signals
  marketing:
    primary_cta: string         # Free trial, Demo, Contact
    sales_motion: string        # PLG, Sales-led, Hybrid
    content_frequency: string
    top_content_topics: array

  # Metadata
  metadata:
    created: date
    last_updated: date
    last_verified: date
    data_quality: string        # High, Medium, Low
    notes: string
```

---

## Comparison-Specific Schema

For generating comparison pages, extend with:

```yaml
comparison_data:
  competitor_id: string

  # Feature comparison matrix
  features:
    - category: string
      features:
        - name: string
          your_product: string    # ✓, ✗, "Partial", "Add-on"
          competitor: string
          your_detail: string
          competitor_detail: string
          winner: string          # you, them, tie

  # Head-to-head summary
  versus:
    your_product_better_when: array
    competitor_better_when: array
    pricing_comparison: string
    migration_difficulty: string  # Easy, Medium, Hard

  # Page content
  content:
    hero_headline: string
    meta_title: string
    meta_description: string
    tldr_summary: string
    faq:
      - question: string
        answer: string
```

---

## Alternative Page Schema

For generating alternative pages:

```yaml
alternative_page:
  competitor_id: string
  page_type: string             # singular, plural

  # Pain points (why people leave competitor)
  switch_reasons:
    - pain_point: string
      detail: string
      source: string            # G2, interview, etc.

  # Migration info
  migration:
    difficulty: string
    time_estimate: string
    data_importable: array
    support_available: boolean
    migration_guide_url: url

  # Content
  content:
    hero_headline: string
    hero_subhead: string
    meta_title: string
    meta_description: string
    customer_quote: string
    customer_name: string
    customer_title: string
    customer_company: string
```

---

## Data Source Tracking

Every data point should track its source:

```yaml
data_point:
  value: any
  source: string              # URL or source name
  source_type: string         # Primary, Secondary, Inferred
  confidence: string          # High, Medium, Low
  verified_date: date
  expires: date               # When to re-verify
```

**Confidence levels:**
| Level | Definition | Example Sources |
|-------|------------|-----------------|
| High | Official/primary source | Pricing page, press release |
| Medium | Reliable secondary | G2, analyst report |
| Low | Inferred or dated | Old article, forum post |

---

## Example: Competitor Data File

```yaml
# /data/competitors/notion.yaml

competitor:
  id: notion
  name: Notion
  legal_name: Notion Labs, Inc.
  website: https://notion.so
  logo_url: https://notion.so/images/logo-ios.png

  category: Productivity
  subcategories:
    - Note-taking
    - Project management
    - Knowledge base
  positioning: "The connected workspace"

  company:
    founded: 2016
    headquarters: San Francisco, CA
    employee_count: 500
    employee_count_source: LinkedIn (Jan 2026)
    funding_total: 343000000
    funding_stage: Series C
    latest_round_date: 2021-10-08
    revenue_estimate: "$250-400M ARR"
    revenue_source: Sacra estimate (2025)

  product:
    tagline: "One workspace. Every team."
    description: "Notion is an all-in-one workspace combining notes, docs, wikis, and project management. Teams use it to build custom workflows for any use case."
    core_features:
      - Pages and databases
      - Templates
      - Integrations
      - Collaboration
      - AI assistant
    differentiators:
      - Flexible block-based editor
      - All-in-one workspace
      - Template ecosystem
    platforms:
      - Web
      - Desktop (Mac, Windows)
      - Mobile (iOS, Android)
    integrations_count: 70
    api_available: true

  icp:
    company_sizes:
      - Startup
      - SMB
      - Mid-market
      - Enterprise
    industries:
      - Technology
      - Media
      - Professional Services
    personas:
      - Product managers
      - Engineers
      - Operations
      - Marketing
    named_customers:
      - Figma
      - Pixar
      - Nike
      - Headspace
    customer_count_estimate: "30M+ users"

  pricing:
    model: Per seat
    value_metric: Users
    currency: USD
    tiers:
      - name: Free
        price: 0
        billing: monthly
        includes:
          - Unlimited pages
          - 7-day page history
          - 10 guest collaborators
      - name: Plus
        price: 10
        billing: monthly
        includes:
          - Unlimited file uploads
          - Unlimited page history
          - 100 guest collaborators
      - name: Business
        price: 18
        billing: monthly
        includes:
          - SAML SSO
          - Private teamspaces
          - Advanced analytics
      - name: Enterprise
        price: null
        billing: annual
        includes:
          - Advanced security
          - Audit log
          - Dedicated success manager
    free_tier: true
    free_trial: true
    trial_days: 14
    enterprise_tier: true
    pricing_page_url: https://notion.so/pricing
    last_verified: 2026-01-15

  reviews:
    g2:
      rating: 4.7
      review_count: 5200
      url: https://www.g2.com/products/notion
    capterra:
      rating: 4.7
      review_count: 2100
      url: https://www.capterra.com/p/notion
    top_praised:
      - Flexibility and customization
      - All-in-one functionality
      - Clean design
    top_criticized:
      - Performance with large workspaces
      - Learning curve
      - Offline functionality
    last_updated: 2026-01-10

  competitive:
    strengths:
      - Brand recognition
      - Template ecosystem
      - Flexibility
      - Free tier
    weaknesses:
      - Performance at scale
      - Specialized features less deep
      - Complex for simple use cases
    win_reasons:
      - Consolidating multiple tools
      - Customization needs
      - Team collaboration
    loss_reasons:
      - Need specialized tool
      - Performance concerns
      - Prefer simpler solution
    common_objections:
      - "Is it fast enough for our team size?"
      - "Can it replace [specialized tool]?"
      - "How's the learning curve?"

  marketing:
    primary_cta: "Get Notion free"
    sales_motion: PLG
    content_frequency: Weekly blog posts
    top_content_topics:
      - Productivity
      - Remote work
      - Team collaboration

  metadata:
    created: 2024-06-01
    last_updated: 2026-01-15
    last_verified: 2026-01-15
    data_quality: High
    notes: "Major competitor in productivity space"
```

---

## Usage Patterns

### Generating a Comparison Page

```python
# Pseudocode
def generate_comparison_page(your_product, competitor_id):
    competitor = load_competitor(competitor_id)
    comparison = load_comparison_data(competitor_id)
    template = load_template("you-vs-competitor")

    return render(template, {
        "competitor": competitor,
        "comparison": comparison,
        "your_product": your_product
    })
```

### Generating Alternative Pages

```python
def generate_alternatives_page(competitor_id, page_type):
    competitor = load_competitor(competitor_id)
    alt_data = load_alternative_data(competitor_id)
    template = load_template(f"{page_type}-alternative")

    return render(template, {
        "competitor": competitor,
        "alternative": alt_data
    })
```

### Bulk Updates

```python
def update_all_pricing():
    for competitor in load_all_competitors():
        if competitor.pricing.last_verified < 30_days_ago:
            new_pricing = fetch_pricing(competitor.website)
            competitor.pricing = new_pricing
            competitor.pricing.last_verified = today()
            save_competitor(competitor)
```

---

## Maintenance Workflows

### Weekly Tasks
- [ ] Check for pricing page changes on priority competitors
- [ ] Update review counts if significantly changed
- [ ] Log any competitor announcements

### Monthly Tasks
- [ ] Verify top 10 competitor pricing data
- [ ] Update review sentiment themes
- [ ] Add any new competitors to track
- [ ] Review data quality flags

### Quarterly Tasks
- [ ] Full audit of all competitor data
- [ ] Update feature comparisons
- [ ] Refresh screenshots
- [ ] Review and update competitive intelligence

---

## Data Quality Rules

### Required Fields (Must Have)
- id, name, website
- pricing.tiers (at least one)
- product.description
- reviews (at least G2 or Capterra)

### Recommended Fields (Should Have)
- company.employee_count
- pricing.last_verified
- competitive.strengths and weaknesses
- icp.company_sizes

### Nice to Have
- company.revenue_estimate
- named_customers
- marketing.content_frequency

### Validation Rules
1. `pricing.last_verified` must be within 30 days
2. `reviews.last_updated` must be within 90 days
3. All URLs must be valid
4. `data_quality` must reflect actual completeness

---

## File Organization

```
/data/
  /competitors/
    notion.yaml
    asana.yaml
    monday.yaml
    ...
  /comparisons/
    vs-notion.yaml
    vs-asana.yaml
    ...
  /alternatives/
    notion-alternative.yaml
    notion-alternatives.yaml
    ...
  /schema/
    competitor.schema.yaml
    comparison.schema.yaml
    alternative.schema.yaml
```

---

## Integration Points

### With competitor-research skill
- Populate schema during research
- Update when new research conducted

### With landing-page-copy skill
- Pull competitor data for comparison pages
- Generate page content from templates

### With sales-enablement skill
- Feed competitive intelligence to battlecards
- Provide objection handling content

### With programmatic-seo skill
- Enable scaled comparison page generation
- Support alternative page factories

---

## Core frameworks (canonical reference)

The schema above defines the data model. The frameworks below define the
research dimensions, confidence levels, and research modes that produce that
data.

### 13 research dimensions

| # | Dimension | What to Find | Primary Sources |
|---|-----------|--------------|-----------------|
| 1 | **Company** | Revenue, funding, team size, HQ | Crunchbase, Tracxn, LinkedIn |
| 2 | **Product** | Features, capabilities, differentiators | Website, docs, G2 |
| 3 | **ICP** | Segments, geos, company sizes | Case studies, solutions pages |
| 4 | **Pricing** | Plans, amounts, value metrics | Pricing page, G2 |
| 5 | **Reviews** | Ratings, sentiment, themes | G2, Capterra, TrustRadius |
| 6 | **Content** | Topics, formats, cadence, owned events | Blog, resources, LinkedIn, event pages |
| 7 | **Launches** | Recent product/feature announcements | LinkedIn, Product Hunt, press releases |
| 8 | **SEO/AEO** | Rankings, traffic, gaps | SERP analysis (limited) |
| 9 | **Technographics** | Tech stack, integrations | Integrations page (limited) |
| 10 | **Openings** | Job postings, hiring signals | Careers, LinkedIn Jobs |
| 11 | **GTM** | Sales motion, inbound/outbound mix, outbound signals, messaging | Website, job descriptions, LinkedIn |
| 12 | **LinkedIn / Social** | Organic posting strategy, content types, frequency, founder activity, follower count | LinkedIn company page, founder profiles |
| 13 | **Paid advertising** | Active ad campaigns, creative themes, ICP signals in copy, CTAs, spend signals | LinkedIn Ads Library, Meta Ads Library, Google Ads Transparency Center |

### Confidence scoring

| Level | Definition | Example |
|-------|------------|---------|
| **High** | Primary source, recent, verifiable | Company blog, press release, official pricing page |
| **Medium** | Secondary source, analyst estimate | Sacra estimates, TechCrunch reporting, Tracxn data |
| **Low** | Inferred, single unverified source | Forum posts, old articles, indirect mentions |

### Research modes

**Single competitor mode (default):**
- Full 13 dimensions
- Maximum depth
- Executive summary + detailed findings
- Data gaps with follow-up actions

**Comparison matrix mode:**
- 3-6 competitors
- Core dimensions only: Company, Product, Pricing, ICP, Reviews
- Tabular output
- Key differentiators summary
