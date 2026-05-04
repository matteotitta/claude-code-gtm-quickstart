# Phase 2: Dimension research

**Purpose:** Systematically research all 13 dimensions.

---

## Steps

1. **Step 2.1: Company research (Dimension 1)**
   - **If Clay MCP available (preferred):** Use `find-and-enrich-company` with competitor domain — pulls funding, headcount growth, recent news, tech stack, competitors in one call. Confidence: High.
   - **Fallback (no Clay):** Search funding: `"[competitor]" crunchbase funding`, search valuation: `"[competitor]" series raised valuation`, fetch about page
   - Extract: Founded, HQ, team size, funding, revenue, headcount growth trend, recent news
   - **Output:** Company profile with sources

2. **Step 2.2: Product research (Dimension 2)**
   - Fetch homepage and features page
   - Fetch documentation if available
   - Extract: Core description, key features, differentiators, platform
   - **Output:** Product profile with sources

3. **Step 2.3: ICP research (Dimension 3)**
   - Fetch customers/case studies page
   - Fetch solutions/industries page
   - Search: `site:reddit.com "[competitor]" use case who uses` — validate segments and uncover niche use cases not on their website
   - Extract: Company size, industries, personas, geos, named customers
   - **Output:** ICP profile with sources

4. **Step 2.4: Pricing research (Dimension 4)**
   - **Step 1:** Fetch `/pricing` page directly
   - **Step 2 (if hidden/gated):** Search `site:g2.com "[competitor]" pricing` — extract plan names, price ranges from review snippets
   - **Step 3 (if still missing):** Search `site:vendr.com "[competitor]"` — Vendr publishes negotiated SaaS contract data; mark findings as `(Source: Vendr)`
   - **Step 4 (if still missing):** Search `site:reddit.com "[competitor]" pricing cost per seat` — extract user-reported pricing, negotiation outcomes, plan details; mark as `(Source: Reddit)`, Low confidence
   - **Step 5 (if all fail):** Mark "Pricing not public — pricing page, G2, Vendr, and Reddit checked"
   - Extract: Model, plans, free tier, enterprise availability, value metric
   - **Output:** Pricing profile with sources

5. **Step 2.5: Reviews research (Dimension 5)**
   - Search: `site:g2.com "[competitor]" reviews`
   - Search: `site:capterra.com "[competitor]" reviews`
   - Search: `site:reddit.com "[competitor]" review` — unfiltered sentiment, bugs, feature complaints
   - Search: `site:reddit.com "[competitor]" problems issues` — surfaces pain points not visible on review platforms
   - Extract: Ratings, review count, sentiment themes, pros/cons, Reddit community signals
   - Note: Reddit findings = Low confidence unless corroborated by G2/Capterra patterns
   - **TrustPilot customer monitoring (optional, deep refresh only):**
     - Build list of competitor's known customers from case studies page, Clay data, G2 reviewers
     - For top 10-15 high-profile customers, check TrustPilot: `"[customer name]" site:trustpilot.com`
     - Look for reviews mentioning "customer support", "chat", "bot", "AI", "automated"
     - Score each customer: 🟢 Healthy (stable/improving) / 🟡 Warning (some support complaints) / 🔴 Problem (clear negative trend)
     - Flag 🔴 customers prominently — these are direct proof points for sales battlecards
     - Skip this step if competitor doesn't deploy customer-facing products
   - **Output:** Reviews profile with sources + TrustPilot monitor table (if applicable)

6. **Step 2.6: Content research (Dimension 6)**
   - Fetch blog and resources page
   - Extract: Topics, formats, frequency, lead magnets
   - **Output:** Content profile with sources

7. **Step 2.7: Launches research (Dimension 7)**
   - Search: `"[competitor]" launch announcement [current year]`
   - Search: `site:producthunt.com "[competitor]"`
   - Extract: Product launches, feature announcements (last 3 months)
   - **Output:** Launches profile with sources

8. **Step 2.8: SEO/AEO research (Dimension 8)**
   - **If Ahrefs MCP available (preferred):**
     - `ahrefs.domain_overview({ target: "[competitor.com]" })` → DR, traffic estimate
     - `ahrefs.organic_keywords({ target: "[competitor.com]", limit: 20 })` → top keywords
     - `ahrefs.backlinks({ target: "[competitor.com]", limit: 10 })` → referring domains
     - Confidence: High
   - **If Ahrefs NOT available — use Serper.dev (free fallback):**
     - Requires `SERPER_API_KEY` env var (sign up at serper.dev — 2500 free searches/month)
     - Run 5-10 SERP checks for key category keywords using `WebFetch` or `mcp__exa__web_search_exa`
     - Query patterns: `"[category keyword]"`, `"[competitor name] vs [category]"`, `"best [category] tool"`
     - Extract: competitor ranking position, featured snippet ownership, title/meta copy
     - Use `site:[competitor.com]` search to estimate indexed page count
     - Confidence: Medium (SERP positions accurate; traffic estimates and DR not available without Ahrefs)
   - **If no tools available:** Manual SERP checks for 3-5 key category keywords only
     - Confidence: Low
   - Extract: Domain rating (if Ahrefs), organic traffic estimate, top keywords, SERP positions, indexed pages
   - **Output:** SEO profile with confidence level based on data source

9. **Step 2.9: Technographics research (Dimension 9)**
   - Fetch integrations page
   - Check job postings for tech stack hints
   - Note: Full data requires BuiltWith access
   - Extract: Integrations, visible tech signals
   - **Output:** Technographics profile (limited without premium tools)

10. **Step 2.10: Openings research (Dimension 10)**
    - Fetch careers page
    - Search: `site:linkedin.com/jobs "[competitor]"`
    - Extract: Open roles, hiring departments, seniority, locations
    - **Output:** Openings profile with sources

11. **Step 2.11: GTM research (Dimension 11)**
    - Analyze website messaging and CTAs
    - Check founder LinkedIn activity
    - Search job postings for SDR/BDR/outbound roles — mention of sequencing tools (Outreach, Salesloft, Apollo) signals active outbound
    - Search: `site:reddit.com "[competitor]" sales demo cold email` — surfaces buyer-reported sales experience, outbound aggressiveness, SDR quality
    - Extract: Sales motion (PLG/sales-led/hybrid), primary CTA, channel mix (inbound vs. outbound vs. paid vs. organic), outbound signals, messaging themes
    - **Output:** GTM profile with sources

12. **Step 2.12: LinkedIn / Social research (Dimension 12)**
    - Fetch linkedin.com/company/[competitor] — capture followers, about, recent posts
    - Search: `"[competitor]" site:linkedin.com/posts` for recent post titles and topics
    - Check founder/CMO LinkedIn profiles for post cadence and themes
    - Extract: Follower count + YoY growth, post frequency, content types (product/thought leadership/customer/events), founder activity
    - Note: Impression and reach data require LinkedIn Analytics access — mark [UNAVAILABLE]
    - **Output:** LinkedIn/Social profile with sources

13. **Step 2.13: Paid advertising research (Dimension 13)**

    **IMPORTANT:** All three ad libraries are JS-rendered — raw HTML fetches will fail or return empty. Use Apify actors (preferred) or Firecrawl browser mode.

    **Google Ads Transparency Center (highest priority for B2B SaaS):**
    - **Option A — Apify (preferred):**
      1. `mcp__apify__search-actors` with query `"Google Ads Transparency"` — select highest-rated actor
      2. Fetch actor input schema with `mcp__apify__fetch-actor-details`
      3. Call actor with `{ "advertiserDomain": "[competitor.com]" }` or equivalent input
      4. Extract: active campaign count, ad copy themes, CTA patterns, geographic targeting
    - **Option B — Firecrawl browser:**
      1. `mcp__firecrawl__firecrawl_browser_create` — launch browser session
      2. Navigate to `https://adstransparency.google.com/?region=anywhere`
      3. Search for competitor domain in the search input
      4. `mcp__firecrawl__firecrawl_browser_execute` — extract ad cards from results
    - **If both fail:** Mark "Google Ads data unavailable — JS wall. Manual check at adstransparency.google.com required" in data gaps table
    - Note: Google paid search is HIGH probability for B2B SaaS at scale — always attempt this check

    **LinkedIn Ads Library:**
    - **Option A — Apify (preferred):**
      1. `mcp__apify__search-actors` with query `"LinkedIn Ads Library scraper"`
      2. Call actor with `{ "companyHandle": "[competitor-linkedin-handle]" }` or `{ "companyUrl": "linkedin.com/company/[handle]" }`
      3. Extract: ad types (sponsored content, message ads, lead gen forms), creative themes, CTA patterns, running dates
    - **Option B — Firecrawl:**
      1. Direct scrape: `https://www.linkedin.com/ad-library/search?companyIds=[handle]`
      2. If JS-blocked: use `mcp__firecrawl__firecrawl_browser_create` + execute
    - **If no ads found:** Mark as verified absence — "No active LinkedIn Ads found (verified YYYY-MM-DD)" — absence is a high-confidence signal that this competitor is sales-led or organic-first

    **Meta Ads Library:**
    - Fetch: `https://www.facebook.com/ads/library/?q=[competitor name]&search_type=keyword_unordered&active_status=active`
    - Extract: active ad count, creative formats, copy themes, CTA patterns
    - For B2B enterprise: low probability of Meta activity — mark "No Meta ads found" if not found (not a data gap)

    - "No active ads found" is a high-confidence data point — treat as verified GTM signal, not a data gap
    - **Output:** Paid advertising profile per platform with confidence levels

---

## Phase 2 checkpoint

- [ ] All 13 dimensions researched
- [ ] Sources documented for each finding
- [ ] "Not available" noted for missing data
