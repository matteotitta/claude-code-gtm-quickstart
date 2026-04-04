---
name: company-context
version: "1.0"
description: |
  Use when building foundational context about your own company.
  Use when starting a new GTM context system and need a company baseline.
  Use when other skills need company foundation (revenue, funding, team, market position).
  Use when onboarding Claude Code to understand your business.

dependencies:
  required: []
  recommended: []

outputs:
  - type: company-context
    feeds_into:
      - competitor-research
      - icp-research
      - positioning

output_path: "context/"

triggers:
  auto_suggest_when:
    - "user wants to build company context"
    - "user is setting up their GTM system"
    - "user mentions needing a company baseline"
  auto_run_when: null  # Always require confirmation

review_gate: 1  # Quick review (research output)
---

# Company context

Build deep foundational context about your own company by combining your insider knowledge with web research. Output is a markdown artifact saved to `context/` that becomes the baseline for all downstream skills (competitor research, ICP, positioning, messaging).

---

## Process flowchart

```text
+--------------------------------------------------------------+
|                  COMPANY CONTEXT PROCESS                      |
+--------------------------------------------------------------+
                              |
                              v
+--------------------------------------------------------------+
| PHASE 1: INSIDER KNOWLEDGE INTERVIEW                         |
| [] Ask operator what they already know                        |
| [] Capture: team structure, channels, metrics, growth stage   |
| [] Capture: internal challenges, upcoming priorities          |
| [] Capture: what context they wish Claude had                 |
| -> Get the operator's perspective before hitting the web      |
+--------------------------------------------------------------+
                              |
                              v
+--------------------------------------------------------------+
| PHASE 2: WEB RESEARCH                                        |
| Step 2.1: Fetch website -> homepage, about, careers, pricing  |
| Step 2.2: Search funding -> Crunchbase, TechCrunch            |
| Step 2.3: Search revenue/team -> GetLatka, LinkedIn            |
| Step 2.4: Extract customer signals -> logos, case studies      |
| Checkpoint: 4 target questions researched                     |
+--------------------------------------------------------------+
                              |
                              v
+--------------------------------------------------------------+
| PHASE 3: MERGE & RECONCILE                                   |
| Step 3.1: Cross-reference insider knowledge with web data     |
| Step 3.2: Flag discrepancies for operator to clarify          |
| Step 3.3: Fill gaps with operator input where web falls short |
| Checkpoint: Insider + web data reconciled                     |
+--------------------------------------------------------------+
                              |
                              v
+--------------------------------------------------------------+
| PHASE 4: CONFIDENCE ASSESSMENT                                |
| Step 4.1: Assign confidence levels (High/Med/Low)             |
| Step 4.2: Identify conflicting data                           |
| Step 4.3: Document data gaps                                  |
| Checkpoint: All data points have confidence levels            |
+--------------------------------------------------------------+
                              |
                              v
+--------------------------------------------------------------+
| PHASE 5: STRATEGIC SNAPSHOT                                   |
| Step 5.1: Summarize market position and growth stage          |
| Step 5.2: Document current GTM motion and channels            |
| Step 5.3: Identify key context gaps for downstream skills     |
| Step 5.4: Generate key observations                           |
| Checkpoint: Strategic snapshot complete                       |
+--------------------------------------------------------------+
                              |
                              v
+--------------------------------------------------------------+
| SELF-EVALUATION                                               |
| [] Completeness: All target questions answered?               |
| [] Evidence: Every data point has source or "Not available"?  |
| [] Guardrails: No invented data? Gaps documented?             |
| -> If issues found: Flag low-confidence areas                 |
+--------------------------------------------------------------+
                              |
                              v
+--------------------------------------------------------------+
| REVIEW GATE: Level 1 (Quick Review)                           |
| Present: Traction signals, strategic snapshot                 |
| Actions: [Approve] [Dig deeper] [Fill gap]                    |
+--------------------------------------------------------------+
                              |
                              v
+--------------------------------------------------------------+
| CHAIN SUGGESTIONS                                             |
| -> "Want me to research your competitors?"                    |
| -> "Should I build your ICP profile?"                         |
| -> "Ready to work on positioning?"                            |
+--------------------------------------------------------------+
```

---

## Claude Code triggers

**Invoke this skill when user says:**
- "Build company context"
- "Set up my company baseline"
- "Research my company: [URL/name]"
- "Get traction data for my company"
- "Company context for [name]"
- "What does the web say about us?"
- "Help Claude understand my company"

**Do NOT invoke when:**
- User wants competitor analysis -> Use `competitor-research` skill
- User wants product messaging extraction -> Use `product-messaging` skill
- User wants ICP research -> Use `icp-research` skill
- User just wants to check their own website -> Answer directly

---

## Input requirements

### Required inputs

| Input | Description | Source |
|-------|-------------|--------|
| **Company identifier** | Website URL or company name | User provides |

### Optional inputs (improve quality)

| Input | How it helps |
|-------|--------------|
| LinkedIn company URL | More accurate team size and org structure |
| Growth stage | Helps calibrate research expectations |
| Key metrics the operator already knows | Reduces research time, improves accuracy |

### Input validation checklist

Before proceeding, verify:
- [ ] Company can be identified (URL or name provided)
- [ ] Operator has confirmed this is their own company

**If inputs are missing:** Ask user for their company website URL. If they provide just a name, confirm the correct company before proceeding.

---

## Process (step-by-step)

### Phase 1: Insider knowledge interview

**Purpose:** Capture what the operator already knows before doing web research. They work here — their knowledge is the highest-confidence source.

**Ask these questions (adapt based on context already available):**

1. **Company basics**
   - What does your company do in one sentence?
   - What's your growth stage? (pre-seed, seed, Series A, Series B+, bootstrapped, etc.)
   - How many people on the team? Rough functional breakdown?

2. **Go-to-market**
   - What's your primary GTM motion? (product-led, sales-led, hybrid)
   - What marketing channels are you active on today?
   - What's working well? What's not?

3. **Market position**
   - Who do you consider your top 3-5 competitors?
   - What do you think your main differentiator is?
   - What category would you place yourself in?

4. **Current priorities**
   - What are you working on this quarter?
   - What's the biggest challenge your marketing team faces?
   - What context do you wish Claude had about your business?

**Phase 1 checkpoint:**
- [ ] Operator has shared what they know
- [ ] Growth stage identified
- [ ] GTM motion understood
- [ ] Competitor landscape sketched
- [ ] Current priorities captured

**Important:** Don't block on getting every answer. If the operator wants to skip questions, note the gaps and move to web research. You can circle back.

### Phase 2: Web research

**Purpose:** Supplement insider knowledge with public traction data.

**Steps:**

1. **Step 2.1: Fetch company website**
   - Use WebFetch on homepage for positioning and customer signals
   - Use WebFetch on about page for company story and team
   - Use WebFetch on careers page for hiring signals
   - Use WebFetch on pricing page for packaging signals
   - **Output:** Website content with key signals

2. **Step 2.2: Search for funding data**
   - Use WebSearch: `"[company]" funding series raised`
   - Check: Crunchbase, TechCrunch, Forbes funding announcements
   - **Output:** Funding history with sources
   - **Note:** If bootstrapped (per operator input), skip funding search and document as "Bootstrapped — confirmed by operator"

3. **Step 2.3: Search for revenue/team data**
   - Use WebSearch: `"[company]" employees ARR revenue`
   - Check: GetLatka, Growjo, LinkedIn company page
   - **Output:** Revenue and team estimates with confidence
   - **Note:** The operator likely knows these numbers — web research validates or supplements

4. **Step 2.4: Extract customer signals**
   - Logo walls and case studies from website
   - "Trusted by X companies" statements
   - G2/Capterra reviews for customer count signals
   - **Output:** Customer signals with sources

**Phase 2 checkpoint:**
- [ ] Website fetched and analyzed
- [ ] Funding data searched (or marked bootstrapped)
- [ ] Revenue/team data searched
- [ ] Customer signals extracted

### Phase 3: Merge and reconcile

**Purpose:** Combine insider knowledge with web research into a single coherent picture.

**Steps:**

1. **Step 3.1: Cross-reference insider knowledge with web data**
   - Where do they agree? Use the higher-confidence version
   - Where do they disagree? Flag for the operator
   - **Output:** Reconciled data points

2. **Step 3.2: Flag discrepancies**
   - "Your website says X but you mentioned Y — which is current?"
   - "Web sources estimate Z but you said W — should we use your number?"
   - **Output:** Discrepancies resolved

3. **Step 3.3: Fill gaps**
   - What couldn't be found via web research?
   - Ask operator to fill critical gaps (revenue range, customer count)
   - Mark remaining gaps as "Not available"
   - **Output:** Complete data set with gaps documented

**Phase 3 checkpoint:**
- [ ] All data points reconciled
- [ ] Discrepancies flagged and resolved
- [ ] Remaining gaps documented

### Phase 4: Confidence assessment

**Purpose:** Score data quality and identify what's still missing.

**Steps:**

1. **Step 4.1: Assign confidence levels**
   - High: Confirmed by operator OR official source (press release, company blog, SEC filing)
   - Medium: Reputable third-party (TechCrunch, Crunchbase) without operator confirmation
   - Low: Aggregator/estimate (Growjo, LeadIQ, LinkedIn extrapolation)
   - **Output:** Confidence level for each data point

2. **Step 4.2: Identify conflicting data**
   - Note when sources disagree (even after reconciliation)
   - **Output:** Conflicts documented

3. **Step 4.3: Document data gaps**
   - What couldn't be found or confirmed
   - Mark priority: critical (blocks downstream skills) vs. nice-to-have
   - **Output:** Gap inventory with priority

**Phase 4 checkpoint:**
- [ ] All data points have confidence levels
- [ ] Conflicts identified
- [ ] Gaps documented with priority

### Phase 5: Strategic snapshot

**Purpose:** Synthesize everything into actionable context for downstream skills.

**Steps:**

1. **Step 5.1: Summarize market position and growth stage**
   - Where the company sits in its market
   - Growth stage and trajectory
   - **Output:** Market position summary

2. **Step 5.2: Document current GTM motion and channels**
   - Primary motion (PLG, sales-led, hybrid)
   - Active channels and what's working
   - **Output:** GTM snapshot

3. **Step 5.3: Identify key context gaps for downstream skills**
   - What does competitor-research need that's missing?
   - What does ICP-research need that's missing?
   - What does positioning need that's missing?
   - **Output:** Downstream readiness checklist

4. **Step 5.4: Generate key observations**
   - 3-5 strategic observations about the company's current position
   - Focus on what's actionable for marketing work
   - **Output:** Key observations

**Phase 5 checkpoint:**
- [ ] Market position summarized
- [ ] GTM motion documented
- [ ] Downstream gaps identified
- [ ] Key observations generated

---

## Core frameworks

### Target questions

Every company context output must answer:

1. **Revenue**: Current annual revenue or ARR range
2. **Customers**: Customer count or range
3. **Funding**: Total funding raised and latest round (or bootstrapped status)
4. **Team**: Team size with functional breakdown

### Priority data sources

**Insider knowledge (highest confidence)**
- Operator-provided data confirmed by their direct experience
- Internal metrics shared by the operator

**Funding and valuation (high confidence)**
- Crunchbase, Tracxn, PitchBook, CB Insights
- TechCrunch, Forbes funding announcements
- Company press releases and blog

**Revenue estimates (medium confidence)**
- GetLatka, Growjo, LeadIQ, Owler
- SEC filings (if public or filed)
- News articles with specific figures

**Team size (medium confidence)**
- LinkedIn company page
- Company careers/about page
- Crunchbase, Tracxn employee counts

**Customer signals (variable confidence)**
- Website logo walls, case studies, testimonials
- G2, Capterra, TrustRadius reviews
- "Trusted by X companies" statements

### Confidence scoring

| Level | Definition | Example sources |
|-------|------------|-----------------|
| **High** | Confirmed by operator OR official source, recent, verifiable | Operator-confirmed, press release, company blog, SEC filing, Crunchbase verified |
| **Medium** | Reputable third-party without operator confirmation | TechCrunch, Tracxn, PitchBook, news articles |
| **Low** | Aggregator/estimate, indirect | Growjo, LeadIQ estimates, LinkedIn extrapolation, industry benchmarks |

---

## Output format

### Standard output structure

```markdown
<!--
SKILL OUTPUT: Company Context
Generated: YYYY-MM-DD
Version: 1.0
-->

# Company context: [Company Name]

**Website**: [URL]
**LinkedIn**: [URL if available]
**One-liner**: [What they do in one sentence]
**Growth stage**: [Pre-seed / Seed / Series A / Series B+ / Bootstrapped]
**GTM motion**: [Product-led / Sales-led / Hybrid]
**Research date**: [Today's date]

---

## Traction signals

| Metric | Finding | Confidence | Source | Date |
|--------|---------|------------|--------|------|
| Revenue | [Amount/range] | High/Med/Low | [Source name] | [Date found] |
| Customers | [Count/range] | High/Med/Low | [Source name] | [Date found] |
| Funding | [Total raised or "Bootstrapped"] | High/Med/Low | [Source name] | [Date found] |
| Team size | [Count] | High/Med/Low | [Source name] | [Date found] |

---

## Funding details

- **Total raised**: [Amount or "Bootstrapped"]
- **Latest round**: [Stage, amount, date, lead investor]
- **Valuation**: [If known]
- **Key investors**: [List]

*If bootstrapped, replace this section with:*
- **Funding model**: Bootstrapped
- **Revenue-funded since**: [Year if known]

---

## Team breakdown

| Function | Count | Notes |
|----------|-------|-------|
| Engineering | [#] | [Source/estimate] |
| Sales | [#] | [Source/estimate] |
| Marketing | [#] | [Source/estimate] |
| Other | [#] | [Source/estimate] |

---

## GTM snapshot

### Current motion

- **Primary motion**: [Product-led / Sales-led / Hybrid]
- **Key channels**: [List active marketing channels]
- **What's working**: [From operator input]
- **What's not working**: [From operator input]

### Market position

- **Category**: [How the company positions itself]
- **Primary differentiator**: [From operator + web research]
- **Key competitors**: [Top 3-5 named by operator]

---

## Current priorities

- [Priority 1 from operator input]
- [Priority 2 from operator input]
- [Priority 3 from operator input]

---

## Key observations

- [Strategic observation about market position]
- [Observation about GTM opportunity or gap]
- [Observation about what downstream skills should focus on]
- [Observation about competitive dynamics]
- [Observation about growth trajectory]

---

## Data gaps

| Gap | Priority | Why it matters |
|-----|----------|---------------|
| [What could not be found] | Critical / Nice-to-have | [Which downstream skill needs this] |

---

## Downstream readiness

| Skill | Ready? | Missing context |
|-------|--------|-----------------|
| /competitor-research | Yes/Partial/No | [What's needed] |
| /icp-research | Yes/Partial/No | [What's needed] |
| /positioning | Yes/Partial/No | [What's needed] |

---

## Iteration prompts

After reviewing this context, consider:
1. "Want me to research your competitors?"
2. "Should I build your ICP profile?"
3. "Ready to start on positioning?"

---

## Skill improvement notes

**What worked well:**
- [Auto-captured]

**Potential improvements:**
- [Auto-captured]
```

---

## What good looks like

### Example: Well-rounded company context

**Input context:**
```
Company: Acme Analytics (acmeanalytics.io)
Goal: Build company baseline for GTM context system
Operator says: "We're a Series A analytics platform for e-commerce. 45 people, $8M ARR, raised $12M total. Main competitors are Mixpanel, Amplitude, and Heap. We're mostly PLG but adding a sales motion."
```

**Expected output excerpt:**
```markdown
# Company context: Acme Analytics

**Website**: https://acmeanalytics.io
**LinkedIn**: https://linkedin.com/company/acme-analytics
**One-liner**: E-commerce analytics platform for product and marketing teams
**Growth stage**: Series A
**GTM motion**: Hybrid (PLG + emerging sales motion)
**Research date**: 2026-04-04

---

## Traction signals

| Metric | Finding | Confidence | Source | Date |
|--------|---------|------------|--------|------|
| Revenue | $8M ARR | High | Operator-confirmed | 2026-04 |
| Customers | 500+ (estimated from website) | Medium | Website logo wall | 2026-04 |
| Funding | $12M total | High | Operator-confirmed + Crunchbase | 2026-04 |
| Team size | 45 | High | Operator-confirmed | 2026-04 |
```

**Why this is good:**
- Operator-confirmed data is marked High confidence
- Web-sourced data supplements but doesn't override operator input
- Growth stage and GTM motion captured upfront
- Downstream readiness tells the operator what to do next

### Anti-examples (what to avoid)

| Bad pattern | Why it's bad | Better approach |
|-------------|--------------|-----------------|
| Skipping the insider interview | Misses highest-confidence data | Always ask what they know first |
| "Revenue: ~$10M" (no source) | Invented estimate | Use operator-confirmed number or mark "Not available" |
| Treating operator like a stranger | This is their company — they know things | Lean on their input, validate with web research |
| Only using web data | Ignores the best source: the operator | Merge insider + web, prefer insider for known facts |
| No GTM snapshot section | Misses critical context for downstream skills | Always document current motion and channels |
| "I couldn't find much" | Unhelpful gap documentation | Specify what was searched and what the operator might provide |

---

## Anti-hallucination guardrails

1. **Never invent traction data.** If data cannot be found and the operator doesn't provide it, mark "Not available — searched [sources]"
2. **Always cite sources.** Include source name and date for every data point
3. **Assign confidence levels.** High/Medium/Low based on source quality
4. **Operator-confirmed data gets High confidence.** They work there — they know their own numbers
5. **Note conflicting data.** When sources disagree, document both and ask the operator
6. **Explicit gaps.** Always include Data Gaps section with priority levels

---

## Quality checklist (pre-delivery)

### Data quality
- [ ] All four target questions answered or marked "Not available"
- [ ] Every data point has source and confidence level
- [ ] Operator-confirmed data clearly labeled as High confidence
- [ ] Conflicting data noted
- [ ] No invented or estimated numbers without clear labeling

### Context quality
- [ ] GTM snapshot completed (motion, channels, what's working)
- [ ] Market position documented (category, differentiator, competitors)
- [ ] Current priorities captured from operator input
- [ ] Key observations are actionable for downstream skills

### Format quality
- [ ] Output header with date
- [ ] Tables properly formatted
- [ ] Data gaps section completed with priority levels
- [ ] Downstream readiness section completed

---

## Self-evaluation protocol

After generating company context output, automatically run these checks:

### Completeness check

- [ ] All 4 target questions answered (revenue, customers, funding, team)?
- [ ] GTM snapshot section completed?
- [ ] Market position documented?
- [ ] Downstream readiness assessed?
- [ ] Any placeholders remaining?

### Evidence quality check

- [ ] Every data point has source and confidence level?
- [ ] Operator-confirmed data clearly marked?
- [ ] Conflicting data documented when sources disagree?
- [ ] Data gaps section complete with priority?
- [ ] No invented or estimated numbers without clear labeling?

### Guardrail check

- [ ] No invented traction data?
- [ ] Every claim has source citation?
- [ ] "Not available — searched [sources]" used for missing data?
- [ ] Operator knowledge treated as highest-confidence source?

### Self-roast questions

Ask internally:

1. "If the operator checked this against their internal dashboards, would any claims fail?"
2. "Am I being honest about confidence levels, or overconfident on web estimates?"
3. "Would this context actually help downstream skills produce better output?"
4. "Did I capture enough about the operator's priorities and challenges?"
5. "Did I actually search all priority sources, or shortcut?"

### Improvement suggestions

Based on evaluation, surface to user:

> "This company context could be stronger if [specific improvement]. Want me to [action]?"

Example prompts:

- "Revenue data has low confidence — can you share your approximate ARR range?"
- "Your website doesn't mention your team size — how many people are on the team?"
- "I found different founding dates across sources — which year did you start?"

---

## Post-output: Iteration prompts

After delivering output, proactively offer:

### Refinement prompts
1. "Should I dig deeper on any metric?"
2. "Want to update any data points with your internal numbers?"
3. "Anything missing that you think Claude should know?"

### Expansion prompts
1. "Ready to research your competitors?"
2. "Should I build your ICP profile?"
3. "Want me to start on positioning?"

### Quality prompts
1. "Any data points that seem off?"
2. "Should I search additional sources?"
3. "Want me to fill any specific data gap?"

---

## Integration with other skills

### Company-context feeds INTO these skills

| Skill | What it receives | How it uses it |
|-------|------------------|----------------|
| **competitor-research** | Company context, market position, named competitors | Provides comparison baseline and competitor list |
| **icp-research** | Company context, customer signals, GTM motion | Informs persona research and segmentation |
| **positioning** | Company context, market position, differentiators | Provides the foundation for positioning strategy |

### Company-context receives FROM these skills

| Skill | What it provides | How company-context uses it |
|-------|------------------|----------------------------|
| (None — this is the gateway skill) | — | — |

### Recommended workflow sequences

**Sequence 1: Full context build**

```text
company-context -> competitor-research -> icp-research -> positioning
```

**Sequence 2: Quick positioning sprint**

```text
company-context -> positioning -> product-messaging
```

**Sequence 3: Content-first approach**

```text
company-context -> tov-guidelines -> content-strategy
```

---

## Changelog

| Version | Date | Changes |
|---------|------|---------|
| 1.0 | 2026-04-04 | Initial version adapted for marketing operators building context on their own company |
