# Qualification rubric — frameworks

The scoring + assessment frameworks used by company-context to qualify a prospect or qualify a target client engagement.

## Target questions

Every company context output must answer:

1. **Revenue** — current annual revenue or ARR range
2. **Customers** — customer count or range
3. **Funding** — total funding raised and latest round
4. **Team** — team size with functional breakdown

## Priority data sources

**Funding & valuation (High confidence)**
- Crunchbase, Tracxn, PitchBook, CB Insights
- TechCrunch, Forbes funding announcements
- Company press releases and blog

**Revenue estimates (Medium confidence)**
- GetLatka, Growjo, LeadIQ, Owler
- SEC filings (if public or filed)
- News articles with specific figures

**Team size (Medium confidence)**
- LinkedIn company page
- Company careers/about page
- Crunchbase, Tracxn employee counts

**Customer signals (Variable confidence)**
- Website logo walls, case studies, testimonials
- G2, Capterra, TrustRadius reviews
- "Trusted by X companies" statements

## Confidence scoring

| Level | Definition | Example sources |
|-------|------------|-----------------|
| **High** | Official source, recent, verifiable | Press release, company blog, SEC filing, Crunchbase verified |
| **Medium** | Reputable third-party | TechCrunch, Tracxn, PitchBook, news articles |
| **Low** | Aggregator/estimate, indirect | Growjo, LeadIQ estimates, LinkedIn extrapolation, industry benchmarks |

Maps to the ontology confidence ladder per `.claude/rules/ontology.md`: High → `[VERIFIED]`, Medium → `[INFERRED]`, Low → `[ESTIMATED]`. Use `[UNAVAILABLE]` for missing data.

## Qualification criteria (score 0-25)

| Criteria | Score range | What to look for |
|----------|-------------|------------------|
| **Stage fit (Series A+)** | 0-5 | Funding stage matches target |
| **Revenue fit ($1M+ ARR)** | 0-5 | ARR estimate or signals |
| **Industry fit (B2B SaaS/AI/DevTools)** | 0-5 | Category alignment |
| **Marketing leader present** | 0-5 | VP/Head of Marketing, PMM, Content |
| **ICP signals** | 0-5 | Marketing gaps, positioning complexity |

## ICP fit signals

**Team signals:**
- Has VP/Head of Marketing, Head of PMM, or Head of Content/SEO
- Marketing team exists (not just founder doing GTM)

**Marketing gaps (opportunities):**
- Website doesn't pass design test
- Website doesn't pass PMM test (unclear positioning/messaging)
- Missing persona/use case/segment/product/integration pages
- Recent launches don't pass launch test
- Founder has no optimized LinkedIn profile
- No consistent founder posting/engagement
- No branded infographics/images

**Positioning complexity:**
- Horizontal/adjacent to multiple personas/use cases
- Horizontal/adjacent to multiple categories
- 5-10+ competitors across multiple categories

**Intent signals:**
- Recently raised funding
- Has PMM/content job opening
- Uses relevant tech (Webflow, LinkedIn, Substack, Clay, Claude, GPT)
- LinkedIn post showing intent to invest in PMM/content/AI

## Red flags

- Recent layoffs announced
- No funding in 3+ years (runway concerns)
- Founder/exec departures
- Pivot signals in messaging history
- Pricing page hidden or unclear
- No customer logos or case studies (very early stage)
- High burn rate relative to revenue

## Anti-hallucination guardrails

1. **Never invent traction data.** If data cannot be found, mark "Not available — searched [sources]".
2. **Always cite sources.** Include source name and date for every data point.
3. **Assign confidence levels.** High/Medium/Low based on source quality.
4. **Note conflicting data.** When sources disagree, document both.
5. **Explicit gaps.** Always include Data Gaps section with discovery questions.
