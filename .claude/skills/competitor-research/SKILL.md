---
name: competitor-research
version: "2.7"
author: genesys-growth
last_updated: 2026-03-31
description: |
  Use when client needs deep analysis of a specific competitor.
  Use when positioning, sales-enablement, or product-messaging need competitive context.
  Use when user mentions competitor name or asks for "competitive analysis".
  Use when preparing battlecard content or competitive positioning.
  Use with --refresh flag to update an existing competitor dossier (living document mode).

# Agentic Layer Fields
dependencies:
  required: []
  recommended:
    - company-context

outputs:
  - type: competitor-profile
    feeds_into:
      - positioning
      - sales-enablement
      - product-messaging
  - type: comparison-matrix
    feeds_into:
      - positioning
      - sales-enablement
  - type: aggregate-insights
    feeds_into:
      - positioning
      - product-messaging
      - sales-enablement

triggers:
  auto_suggest_when:
    - "user mentions competitor name or competitive analysis"
    - "positioning skill needs competitive context"
    - "sales-enablement needs battlecard content"
    - "user has completed 2+ competitor deep dives for same client"
    - "user asks for 'aggregate analysis' or 'cross-competitor insights'"
    - "user asks to 'refresh' or 'update' competitor research"
  auto_run_when: null  # Always require confirmation

run_modes:
  - quick-scan    # Weekly: news, G2 check
  - deep-refresh  # Monthly: full 13-dimension research + aggregate

review_gate: 1  # Quick review (research output)

output_path: "context/"
---

# Competitor research

Run deep competitor analysis across 13 research dimensions for B2B SaaS companies. Produces structured insights with explicit confidence levels, source citations, and actionable data gaps.

**Knowledge type:** `competitor-intel`
**Maturity on first run:** emergent → validated after client review

## Attribution standard

**Inline attribution (simplified):**

Use concise inline source references for key data points. Do NOT use the verbose `[VERIFIED: url, date]` block syntax inline — it clutters the output.

- `(Source: Crunchbase)` — direct named source
- `(Source: Vendr)` — Vendr contract data (pricing fallback)
- `(Source: competitor website)` — direct competitor page
- `(Source: Reddit, r/[subreddit])` — community signal, treat as Low confidence unless corroborated
- `(Source: G2)` — review platform data
- Omit attribution only for facts that are self-evidently sourced (e.g., a feature listed on the competitor's features page)

**End-of-document audit trail:**

Every output ends with a **Sources & data quality** section (see output template). This table consolidates:
- All URLs with access dates
- Confidence level per dimension
- Data gaps with unverified claims and follow-up actions

**Quality threshold:** minimum 50% verified claims, maximum 20% estimated.

---

## Run Modes

This skill supports two run modes for different cadences:

### Quick scan (weekly)

**Duration:** ~30 min | **Trigger:** `/competitor-research --quick [competitor]`

Refreshes fast-moving data only. Does NOT re-research all 13 dimensions.

**Steps:**
1. Read existing competitor output file
2. Search the web for recent news — `"[competitor]" announcement OR launch OR funding` (last 7 days)
3. Check for new blog posts since last refresh
4. G2 rating check — has rating or review count changed?
5. Compare findings against existing output
6. Update "Recent Changes" section at top with date-stamped entries
7. Refresh only the sections where data changed (Company, Launches, Reviews)
8. Update "Last refreshed" date

**Output:** Updated competitor file with new "Recent Changes" entries. Sections without changes remain untouched.

### Deep refresh (monthly)

**Duration:** ~90 min | **Trigger:** `/competitor-research --refresh [competitor]`

Full 13-dimension research cycle. Rewrites entire output with latest data.

**Steps:**
1. Read existing competitor output file
2. Run full Phase 1-3 process (all 13 dimensions)
3. TrustPilot customer monitoring (optional, for B2B SaaS with customer-facing products)
4. Compare ALL findings against existing output
5. Produce "Recent Changes" section highlighting what's different from last refresh
6. Rewrite all sections with latest data
7. Archive change entries older than 4 weeks to bottom
8. Run Phase 4 aggregate analysis if 2+ competitors refreshed this cycle
9. Update "Last refreshed" date

**Output:** Fully refreshed competitor dossier with change log.

### First run (new competitor)

**Duration:** ~90 min | **Trigger:** `/competitor-research [competitor]` (no --refresh flag)

Standard full process — Phases 1-3 (or 1-4 for aggregate). No existing file to compare against.

---

## Living Dossier Refresh Protocol

When running in `--quick` or `--refresh` mode:

1. **Read first.** Before any research, read the existing competitor output file. This is your baseline.
2. **Compare, don't append.** New findings replace old data in the relevant section. Don't just add — update.
3. **"Recent Changes" at the top.** Every refresh adds date-stamped entries to the top of the file:
   ```
   ## Recent changes

   **2026-03-31:** Headcount grew from 150 → 180 (Source: LinkedIn). New blog post on AI guardrails.
   **2026-03-24:** Series C announced — $45M led by Sequoia (Source: TechCrunch).
   **2026-03-17:** G2 rating dropped from 4.6 to 4.4 — 3 new negative reviews about onboarding.
   ```
4. **Archive after 4 weeks.** Move entries older than 4 weeks to "Archived change logs" section at the bottom.
5. **"Last refreshed" date** at the top of every output.
6. **No-change = no entry.** If a dimension hasn't changed, don't add a change log entry for it.

---

## Process Flowchart

```text
┌──────────────────────────────────────────────────────────────┐
│                 COMPETITOR RESEARCH PROCESS                   │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 1: INPUT VALIDATION                                     │
│ □ Required: Competitor name, Website URL                      │
│ □ Optional: Market category, client context, specific Qs      │
│ → If ambiguous name: Confirm competitor identity with user    │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 2: DIMENSION RESEARCH (13 dimensions)                   │
│ Step 2.1: Company → funding, team, revenue                    │
│ Step 2.2: Product → features, differentiators                 │
│ Step 2.3: ICP → segments, personas, customers                 │
│ Step 2.4: Pricing → plans, model, value metric                │
│ Step 2.5: Reviews → G2, Capterra, sentiment                   │
│ Step 2.6: Content → blog, formats, lead magnets, events       │
│ Step 2.7: Launches → recent announcements                     │
│ Step 2.8: SEO/AEO → SERP positions                            │
│ Step 2.9: Technographics → integrations (limited)             │
│ Step 2.10: Openings → hiring signals                          │
│ Step 2.11: GTM → sales motion, outbound signals, messaging    │
│ Step 2.12: LinkedIn/Social → organic strategy, founder        │
│ Step 2.13: Paid advertising → LinkedIn/Meta/Google ads        │
│ ✓ Checkpoint: All dimensions researched, sources documented   │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 3: SYNTHESIS & GAPS                                     │
│ Step 3.1: Assign confidence levels (High/Med/Low)             │
│ Step 3.2: Write executive summary                             │
│ Step 3.3: Document data gaps with follow-up actions           │
│ Step 3.4: Run quality verification                            │
│ ✓ Checkpoint: No unsourced claims, gaps documented            │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 4: AGGREGATE ANALYSIS (Multi-Competitor)                │
│ Trigger: 2+ competitors researched for same client            │
│ Step 4.1: Identify cross-competitor patterns                  │
│ Step 4.2: Build threat matrix                                 │
│ Step 4.3: Analyze market positioning dynamics                 │
│ Step 4.4: Feature parity analysis                             │
│ Step 4.5: Credibility signal audit                            │
│ Step 4.6: Extract strategic recommendations                   │
│ ✓ Checkpoint: Aggregate insights documented                   │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ SELF-EVALUATION                                               │
│ □ Completeness: All 13 dimensions addressed?                  │
│ □ Evidence: Every data point has source or "Not available"?   │
│ □ Guardrails: No invented data? No unsourced claims?          │
│ → If issues found: Flag low-confidence areas                  │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ REVIEW GATE: Level 1 (Quick Review)                           │
│ Present: Executive summary, confidence breakdown              │
│ Actions: [Approve] [Dig deeper on X] [Research more]          │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ CHAIN SUGGESTIONS                                             │
│ → "Want me to research additional competitors?"               │
│ → "Ready to run positioning with this competitive context?"   │
│ → "Should I generate battlecard content from this?"           │
│ → "Ready for aggregate analysis across all competitors?"      │
│ → Save as reference example if positive feedback              │
└──────────────────────────────────────────────────────────────┘
```

---

## The Iron Law

**NO DATA POINT WITHOUT SOURCE.**

Every claim has a URL + access date. Every metric cites its origin. "Not available" is always better than invented data.

**No exceptions:**

- "This is widely known" → Still needs a source. Cite it.
- "I read this somewhere" → Find the URL or mark "Not available".
- "I can estimate this" → Estimates need explicit confidence levels and reasoning.
- "The user needs this fast" → Fast + wrong = useless. Take the time.

---

## Red Flags (Stop and Verify)

About to write revenue/funding without source → STOP. Cite Crunchbase, PitchBook, or mark "[Data needed]".

About to state competitor feature without verifying → STOP. Check their website/docs first.

About to invent customer logos → STOP. Only include logos you found on their site.

About to guess pricing → STOP. Research their pricing page or mark "Pricing not public".

About to claim market position without evidence → STOP. Cite G2, analyst report, or mark confidence level.

---

## Claude Code Triggers

**Invoke this skill when user says:**
- "Research this competitor: [name/URL]"
- "Competitor analysis for [company]"
- "Competitive intelligence on [company]"
- "Analyze [company] as a competitor"
- "Battlecard research for [competitor]"
- "Competitive landscape for [market]"
- "Compare [competitor 1] vs [competitor 2]"
- "What's [competitor] doing?"

**Do NOT invoke when:**
- User wants company qualification/traction → Use `company-context` skill
- User wants product messaging only → Use `product-messaging` skill
- User wants to research own company → Use `company-context` or `product-messaging`
- Quick question about one feature → Answer directly without full 13-dimension framework

---

## Input Requirements

### Required Inputs

| Input | Description | Source |
|-------|-------------|--------|
| **Competitor name** | Exact company/product name | User provides |
| **Website URL** | Competitor's website | User provides or confirm |

### Optional Inputs (improve quality)

| Input | How It Helps |
|-------|--------------|
| Market category | Helps with disambiguation and keyword selection |
| Client context | Current positioning helps sharpen analysis |
| Specific questions | Focus research on areas of interest |
| Research depth | Deep (default) or comparison matrix |

### Input Validation Checklist

Before proceeding, verify:
- [ ] Competitor name is unambiguous (if not, confirm with user)
- [ ] Website URL is correct and accessible
- [ ] Research mode confirmed (single deep dive or comparison matrix)

**If inputs are missing:** Ask for website URL. If name is ambiguous (e.g., "Bolt" could be multiple companies), confirm which competitor.

---

## Process (Step-by-Step)

### Phase 1: Confirmation & Setup

**Purpose:** Verify competitor identity and establish research scope.

**Steps:**

1. **Step 1.1: Confirm competitor identity**
   - Verify exact company/product name
   - Confirm website URL is correct
   - Check for name disambiguation issues
   - **Output:** Confirmed competitor details

2. **Step 1.2: Determine research mode**
   - Default: Single competitor deep dive (13 dimensions)
   - Alternative: Comparison matrix (3-6 competitors, core dimensions)
   - **Output:** Research mode confirmed

**Phase 1 Checkpoint:**
- [ ] Competitor name unambiguous
- [ ] Website URL verified
- [ ] Research mode selected

### Phase 2: Dimension Research

**Purpose:** Systematically research all 13 dimensions.

**Steps:**

1. **Step 2.1: Company research (Dimension 1)**
   - Search the web for company data: `"[competitor]" crunchbase funding`, `"[competitor]" series raised valuation`
   - Fetch about page from competitor website
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
     - Build list of competitor's known customers from case studies page and G2 reviewers
     - For top 10-15 high-profile customers, check TrustPilot: `"[customer name]" site:trustpilot.com`
     - Look for reviews mentioning "customer support", "chat", "bot", "AI", "automated"
     - Score each customer: Green Healthy / Yellow Warning / Red Problem
     - Flag Red customers prominently — these are direct proof points for sales battlecards
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
   - Run 5-10 SERP checks for key category keywords
   - Query patterns: `"[category keyword]"`, `"[competitor name] vs [category]"`, `"best [category] tool"`
   - Extract: competitor ranking position, featured snippet ownership, title/meta copy
   - Use `site:[competitor.com]` search to estimate indexed page count
   - If you have access to SEO tools (Ahrefs, Semrush), pull domain rating, organic traffic estimate, top keywords, and referring domains for higher confidence data
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
    - Search: `site:reddit.com "[competitor]" sales demo cold email` — surfaces buyer-reported sales experience
    - Extract: Sales motion (PLG/sales-led/hybrid), primary CTA, channel mix, outbound signals, messaging themes
    - **Output:** GTM profile with sources

12. **Step 2.12: LinkedIn / Social research (Dimension 12)**
    - Check linkedin.com/company/[competitor] — capture followers, about, recent posts
    - Search: `"[competitor]" site:linkedin.com/posts` for recent post titles and topics
    - Check founder/CMO LinkedIn profiles for post cadence and themes
    - Extract: Follower count + YoY growth, post frequency, content types, founder activity
    - Note: Impression and reach data require LinkedIn Analytics access — mark [UNAVAILABLE]
    - **Output:** LinkedIn/Social profile with sources

13. **Step 2.13: Paid advertising research (Dimension 13)**

    **IMPORTANT:** All three ad libraries are JS-rendered — raw HTML fetches will fail or return empty. Use browser-based scraping tools if available.

    **Google Ads Transparency Center (highest priority for B2B SaaS):**
    - Navigate to `https://adstransparency.google.com/?region=anywhere`
    - Search for competitor domain
    - Extract: active campaign count, ad copy themes, CTA patterns, geographic targeting
    - **If scraping fails:** Mark "Google Ads data unavailable — JS wall. Manual check at adstransparency.google.com required"

    **LinkedIn Ads Library:**
    - Check: `https://www.linkedin.com/ad-library/search?companyIds=[handle]`
    - Extract: ad types, creative themes, CTA patterns, running dates
    - **If no ads found:** Mark as verified absence — "No active LinkedIn Ads found (verified YYYY-MM-DD)"

    **Meta Ads Library:**
    - Fetch: `https://www.facebook.com/ads/library/?q=[competitor name]&search_type=keyword_unordered&active_status=active`
    - Extract: active ad count, creative formats, copy themes, CTA patterns

    - "No active ads found" is a high-confidence data point — treat as verified GTM signal, not a data gap
    - **Output:** Paid advertising profile per platform with confidence levels

**Phase 2 Checkpoint:**
- [ ] All 13 dimensions researched
- [ ] Sources documented for each finding
- [ ] "Not available" noted for missing data

### Phase 3: Synthesis & Gaps

**Purpose:** Compile findings and document limitations.

**Steps:**

1. **Step 3.1: Assign confidence levels**
   - High: Primary source, recent, verifiable
   - Medium: Secondary source, analyst estimate
   - Low: Inferred, single unverified source
   - **Output:** Confidence levels assigned

2. **Step 3.2: Compile executive summary**
   - 2-3 paragraphs summarizing key findings
   - Highlight competitive strengths and weaknesses
   - **Output:** Executive summary

3. **Step 3.3: Document data gaps**
   - What couldn't be found
   - What requires premium tools
   - Suggested follow-up actions
   - **Output:** Data gaps section

4. **Step 3.4: Quality verification**
   - Run quality checklist
   - Verify no unsourced claims
   - Confirm surprising claims corroborated
   - **Output:** Verified output

**Phase 3 Checkpoint:**
- [ ] Confidence levels assigned
- [ ] Executive summary written
- [ ] Data gaps documented
- [ ] No unsourced claims

### Phase 4: Aggregate Analysis (Multi-Competitor)

**Purpose:** Synthesize cross-competitor patterns into strategic intelligence after completing 2+ individual deep dives for the same client.

**Trigger conditions:**
- 2+ competitors researched for the same client project
- User explicitly requests aggregate analysis or cross-competitor insights

**Steps:**

1. **Step 4.1: Pattern identification**
   - Read all competitor deep dives in the client's competitors folder
   - Extract recurring themes across dimensions
   - Identify market dynamics
   - **Output:** Cross-competitor patterns summary

2. **Step 4.2: Threat matrix construction**
   - Rank competitors by threat level: PRIMARY / ENTERPRISE TIER / DIRECT ICP / STEALTH WATCH / LOW / DEFUNCT
   - Justify each ranking with evidence
   - Identify exploitable vulnerabilities per competitor
   - **Output:** Threat matrix table

3. **Step 4.3: Market positioning dynamics**
   - Map competitors on relevant spectrums (SMB↔Enterprise, Organic↔VC/PR, Feature depth, etc.)
   - Identify white space and crowded zones
   - **Output:** Positioning maps with narrative analysis

4. **Step 4.4: Feature parity analysis**
   - Build capability comparison table (all competitors × key features)
   - Classify each feature by market maturity: Commoditized / Differentiator / Emerging
   - **Output:** Feature parity matrix with maturity classification

5. **Step 4.5: Credibility signal audit**
   - Compare funding, awards, press, enterprise logos, founder visibility, content strategy
   - Identify where the client is ahead and behind on credibility signals
   - **Output:** Credibility comparison table with gap analysis

6. **Step 4.6: Strategic recommendations**
   - Extract 3-5 actionable recommendations from pattern analysis
   - Each recommendation includes: rationale, evidence, suggested actions, effort/impact scoring
   - **Output:** Strategic recommendations with evidence

**Phase 4 Checkpoint:**
- [ ] All individual deep dives referenced and cross-checked
- [ ] Threat rankings justified with evidence (not opinion)
- [ ] Feature parity table uses "Unknown" where client capabilities are unverified
- [ ] Strategic recommendations are actionable (not generic "be better")

---

## Core Frameworks

### 13 Research Dimensions

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

### Confidence Scoring

| Level | Definition | Example |
|-------|------------|---------|
| **High** | Primary source, recent, verifiable | Company blog, press release, official pricing page |
| **Medium** | Secondary source, analyst estimate | Sacra estimates, TechCrunch reporting, Tracxn data |
| **Low** | Inferred, single unverified source | Forum posts, old articles, indirect mentions |

### Competitor Disambiguation

Many company names are ambiguous. Common issues:

| Ambiguous Name | Possible Meanings |
|----------------|-------------------|
| Bolt | Ride-sharing, Fintech, Bolt.new (AI coding) |
| Cursor | AI code editor, Design tool |
| Base | Database, Base44 (AI app builder) |
| Linear | Issue tracking, Other |

**Resolution approach:**
1. Use domain-qualified searches: "bolt.new" not "bolt"
2. Include category context: "Cursor AI coding" not "Cursor"
3. Check for parent companies: Bolt.new is part of StackBlitz
4. When in doubt, confirm with user before starting

---

## Output Format

### Standard Output Structure (Single Competitor)

**IMPORTANT**: All competitor files must follow this exact structure. The title is always `# Competitor research: [Name]`.

```markdown
# Competitor research: [Competitor Name]

**Website**: [URL]
**Category**: [Market category]
**Research date**: [YYYY-MM-DD]
**Last refreshed**: [YYYY-MM-DD]

---

## Recent changes

**[YYYY-MM-DD]:** [Change description] (Source: [source])

---

## Executive summary

[2-3 paragraphs summarizing key findings, competitive strengths, weaknesses, and strategic implications]

---

## Confidence summary

| Confidence level | Data points |
|------------------|-------------|
| Verified         | [N]         |
| Inferred         | [N]         |
| Estimated        | [N]         |
| Unavailable      | [N]         |

---

## 1. Company

| Metric | Finding | Source |
|--------|---------|--------|
| Founded | [Year] | (Source: Crunchbase) |
| HQ | [Location] | (Source: LinkedIn) |
| Team size | [Count] | (Source: LinkedIn) |
| Total funding | [Amount] | (Source: Crunchbase) |
| Latest round | [Stage, amount, date] | (Source: TechCrunch) |
| Revenue estimate | [Amount/range] | (Source: Sacra) |

## 2. Product
## 3. ICP
## 4. Pricing
## 5. Reviews
## 6. Content
## 7. Launches
## 8. SEO/AEO
## 9. Technographics
## 10. Openings
## 11. GTM
## 12. LinkedIn / Social
## 13. Paid advertising

## Sources & data quality

| Dimension | Source | URL | Access date | Confidence |
|-----------|--------|-----|-------------|------------|

### Data gaps & unverified claims

| Dimension | Claim or gap | Why unverified | Follow-up action |
|-----------|--------------|----------------|------------------|

---

## Related context

**Built from:**
- `context/MMYY-company-context.md` (comparison baseline)
- Competitor website, public sources

**Feeds into:**
- `marketing/product-marketing/MMYY-positioning.md` (differentiation)
- `marketing/product-marketing/MMYY-product-messaging.md` (competitive alternatives)
```

[See full output template in Process section above for detailed structure per dimension]

---

## Anti-Hallucination Guardrails

1. **Never invent data.** Mark "Not available" or "Unknown" if not found
2. **Always cite sources inline.** Use `(Source: name)` for key data points
3. **Consolidate sources at the end.** Full URLs, access dates, and confidence levels go in the "Sources & data quality" table
4. **Acknowledge premium tool limits.** SEO and technographics need paid tools — state which tool was used
5. **Verify surprising claims.** If data seems unusual, search for corroboration
6. **Explicit gaps over false data.** "Not available" is always better than guessing
7. **Reddit is Low confidence by default.** Corroborate with G2/Capterra before upgrading to Medium
8. **Vendr pricing = Medium confidence.** User-negotiated data may differ from list price — always note this
9. **Ads "no data found" is not a data gap.** If scraping returns no ads, mark as "no active ads verified" — it's a high-confidence GTM signal

### Missing Data Labels

| Label | When to Use |
|-------|-------------|
| "Not available" | Data doesn't exist publicly |
| "Unknown" | Data may exist but not found |
| "Requires premium tool" | Data exists but needs paid access (Ahrefs, BuiltWith) |
| "Conflicting sources" | Multiple sources disagree |

---

## Quality Checklist (Pre-Delivery)

### Data Quality
- [ ] Every data point has source URL or explicit "Not available"
- [ ] Confidence levels assigned to key metrics
- [ ] No invented or estimated numbers without clear labeling
- [ ] Disambiguation confirmed for ambiguous names
- [ ] Surprising claims corroborated with second source

### Coverage Quality
- [ ] All 13 dimensions addressed (single competitor mode)
- [ ] Core 5 dimensions addressed (comparison matrix mode)
- [ ] Executive summary provides strategic insight
- [ ] Data gaps section completed with follow-up actions

### Format Quality
- [ ] Output header with date
- [ ] Tables properly formatted
- [ ] Confidence summary included
- [ ] Freshness noted for time-sensitive data

---

## Self-Evaluation Protocol

After generating competitor research output, automatically run these checks:

### Completeness Check
- [ ] All 13 dimensions addressed?
- [ ] Executive summary provides strategic insight?
- [ ] Data gaps section complete with follow-up actions?

### Evidence Quality Check
- [ ] Every data point has source URL or explicit "Not available"?
- [ ] Confidence levels assigned to all key metrics?
- [ ] No invented or estimated numbers without clear labeling?

### Guardrail Check
- [ ] No invented data? Every claim sourced?
- [ ] Disambiguation confirmed for ambiguous names?
- [ ] Surprising claims corroborated with second source?

### Self-Roast Questions

1. "If the user cross-checked this research, would any claims fail verification?"
2. "Am I being honest about data gaps, or hiding them in vague language?"
3. "Does the executive summary provide real strategic insight or just summarize facts?"
4. "Would a competitive intelligence analyst consider this thorough?"
5. "Are my confidence levels accurate, or am I being overconfident?"

---

## Integration with Other Skills

### Competitor-research feeds INTO these skills

| Skill | What It Receives | How It Uses It |
|-------|------------------|----------------|
| **positioning** | Competitive alternatives, market context | Alternative mapping, differentiation angles |
| **product-messaging** | Competitor weaknesses, positioning gaps | Sharpens client messaging, contrast points |
| **sales-enablement** | Full competitor profiles, weaknesses | Battlecard content, objection handling |

### Competitor-research receives FROM these skills

| Skill | What It Provides | How Competitor-research Uses It |
|-------|------------------|--------------------------------|
| **company-context** | Client context, market position | Provides comparison baseline |

### Recommended workflow sequences

**Sequence 1: Comprehensive competitive analysis**
```text
company-context → competitor-research → positioning
```

**Sequence 2: Full PMM stack**
```text
icp-research + competitor-research → positioning → product-messaging
```

---

## Changelog

| Version | Date | Changes |
|---------|------|---------|
| 2.7 | 2026-03-31 | Living dossier: added run modes, refresh protocol, TrustPilot monitoring |
| 2.4 | 2026-03-17 | Expanded from 11 → 13 dimensions |
| 2.3 | 2026-02-06 | Phase 4: Aggregate Analysis |
| 2.0 | 2026-01-16 | Refactored to v2.0: structured phases, confidence scoring |
| 1.0 | Original | Initial skill creation with 11 dimensions |
