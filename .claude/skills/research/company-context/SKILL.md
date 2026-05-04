---
name: company-context
version: '2.3'
last_updated: 2026-04-08
author: marketing-team
description: 'Gathers firmographics, traction signals, funding history, team composition, tech stack, hiring activity, and
  key decision-makers for a target company via Exa, Apollo, Firecrawl, and Apify MCP. Produces a structured company-context
  document with qualification score, ICP fit assessment, red flag analysis, and optional account brief (job postings, key
  people, outreach angles). Triggers: "company research", "company background", "qualify this prospect", "discovery call prep",
  "account brief", or any company URL provided for research. Upstream: none (root context skill). Downstream: feeds competitor-research,
  icp-research, client-discovery, positioning, client-proposals, and apollo-sequences. NOT for competitor analysis (use /competitor-research)
  or ICP personas (use /icp-research).'
goal: Gathers firmographics, traction signals, funding history, team composition, tech stack, hiring activity, and key decision-makers
  for a target company via Exa, Apollo, Firecrawl, and Apify MCP.
outcome: Gathers firmographics, traction signals, funding history, team composition, tech stack, hiring activity, and key
  decision-makers for a target company via Exa, Apollo, Firecrawl, and Apify MCP. Produces a structured company-context document
  with qualification score, ICP fit assessment, red flag...
primitive: research
ontology_type: company-context
review_gate: 1
inputs:
  required: []
  recommended: []
outputs:
- type: company-context
  feeds_into:
  - client-discovery
  - competitor-research
  - client-proposals
depends_on: []
feeds_into:
- client-discovery
- client-proposals
- competitor-research
owned_by_agent: researcher
mcps_used:
- apollo-io
- exa
- gdrive
push_targets:
- gdrive
- notion
triggers:
  slash_commands:
  - /company-context
  natural_language: []
status: draft
locked_by: null
locked_date: null
lock_version: null
sources_count: 0
context: fork
effort: max
paths: marketing/**, marketing/**
---

# Company context

Extract firmographics, traction signals, funding, team composition, tech stack, hiring activity, and decision-makers for a target company. Produces a markdown artifact with qualification score (0-25), ICP fit assessment, red flag analysis, and optional Apollo account brief. Output drops into any client or prospect folder and feeds discovery prep, competitor research, positioning, and proposal scoping.

## When to run

Invoke for "company research", "company background", "qualify this prospect", "discovery call prep", "account brief", or whenever the user provides a company URL for research.

Do NOT invoke for competitor analysis (`/competitor-research`), product messaging extraction (`/messaging`), ICP personas (`/icp-behavioural`), or casual website checks.

Skill chain: this is a root/gateway skill. Common downstream chains in `references/integration-map.md`.

## Inputs

**Required:** Company identifier — website URL, LinkedIn URL, or company name. If name is ambiguous (e.g., "Atlas", "Beam"), confirm with user before proceeding.

**Optional (improve quality):**
- LinkedIn company URL — sharper team size + org structure
- Specific questions — focus research on areas of interest
- Discovery call date — adds urgency context
- Account brief request — triggers Apollo enrichment (~1-2 credits, see `references/account-brief.md`)

**Substrate:** Exa-first per `.claude/rules/exa-protocol.md`. Primary tools `company_research_exa` and `web_search_exa`. MCP fallback chain in `references/mcp-integration.md`. Cite per ontology: `[VERIFIED: exa_search, {url}, accessed {YYYY-MM-DD}]`.

## Apify bulk-mode fallback (added 2026-05-01)

**Imported via:** `/steal` analysis 2026-05-01 (`.claude/discovery/0526-apify-linkedin-actors-steal-analysis.md`).

For ABM-scale company-context sweeps (>50 accounts in one run), Apollo's per-credit cost compounds — and Apollo doesn't index every company in the long tail. Bulk fallback:

| Tool | Use case | Cost |
|------|----------|------|
| `dev_fusion/Linkedin-Company-Scraper` | Bulk LinkedIn company URL → firmographics (name, industry, size, website, employee count, description, specialties) | $8/1k flat |

**MCP invocation pattern:**
```
mcp__apify__call-actor
  actor: "dev_fusion/Linkedin-Company-Scraper"
  input: {
    "company_urls": ["https://www.linkedin.com/company/...", ...]
  }
```

**Threshold rule:** Use Apollo `apollo_enrich_company` + Exa `company_research_exa` for <50 companies (richer data, qualification scoring depth). Use this Apify slot for >50 companies in one ABM-scale sweep where the per-account depth needed is firmographic-only.

**Concrete win:** A 100-firm account brief sweep using dev_fusion at $8/1k costs $0.80, vs Apollo at ~$50 in credits (60x cheaper at this scale).


## Steps

1. **Validate input.** Confirm company is identifiable. If name ambiguous, ask user for URL or clarification.
2. **Fetch website.** Pull homepage (positioning, customer signals), about page (story, team), careers page (hiring signals).
3. **Search funding.** Crunchbase, Tracxn, PitchBook, CB Insights, TechCrunch, Forbes, company press. Query patterns in `references/search-strategies.md`.
4. **Search revenue / team.** GetLatka, Growjo, LeadIQ, Owler, LinkedIn company page. Use revenue-from-team-size heuristics in `references/search-strategies.md` when sources are sparse.
5. **Extract customer signals.** Logo walls, case studies, "trusted by X" claims, G2/Capterra review counts.
6. **Assign confidence levels.** High = official source; Medium = reputable third-party; Low = aggregator/estimate. Map to `[VERIFIED] / [INFERRED] / [ESTIMATED]` per ontology. Detail in `references/qualification-rubric.md`.
7. **Identify conflicting data + document gaps.** Flag sources that disagree. Mark missing data as `[UNAVAILABLE: searched X, Y, Z]`. Suggest discovery questions to fill gaps.
8. **Calculate qualification score (0-25).** Five criteria × 0-5: stage fit, revenue fit, industry fit, marketing leader present, ICP signals. Rubric in `references/qualification-rubric.md`.
9. **Assess ICP fit signals.** Team signals, marketing gaps (opportunities), positioning complexity, intent signals — checklist in `references/qualification-rubric.md`.
10. **Check red flags.** Layoffs, funding drought, exec departures, pivots, hidden pricing, missing logos, high burn — checklist in `references/qualification-rubric.md`.
11. **Generate 3-5 key observations.** Discovery-call-ready insights and talking points.
12. **Optional — account brief mode.** If user requests, gate on Apollo credits, then run `apollo_get_organization_job_postings` (1 credit) + `apollo_search_people` (free, filtered to director+). Output hiring activity, key people, outreach angles. Spec in `references/account-brief.md`.
13. **Self-evaluate.** Run completeness, evidence, and guardrail checks per `references/self-evaluation.md`. Flag low-confidence areas before review gate.
14. **Render output.** Use the standard template in `references/output-template.md` (traction signals, funding details, team breakdown, qualification score, ICP fit, red flags, key observations, data gaps + optional account brief).
15. **Review gate (Level 1, quick review).** Present qualification score + traction signals. Then surface chain suggestions: competitors? discovery questions? client-discovery? Apollo sequence? Save as reference example if positive feedback.

## What good looks like

### References

- `references/output-template.md` — full markdown output structure + pre-delivery quality checklist
- `references/qualification-rubric.md` — target questions, priority sources, confidence scoring, qualification criteria, ICP fit signals, red flags, anti-hallucination guardrails
- `references/account-brief.md` — Apollo-credit-gated mode (job postings, key people, outreach angles)
- `references/self-evaluation.md` — completeness/evidence/guardrail checks + post-output iteration prompts
- `references/process-flowchart.md` — full visual flowchart of phases, checkpoints, review gate, chain suggestions
- `references/mcp-integration.md` — Exa-first substrate, MCP table (Exa, Firecrawl, Apollo, YouTube, Slack, Granola), fallback chain
- `references/integration-map.md` — feeds-into / receives-from skills, recommended workflow sequences, trigger phrases
- `references/anti-examples.md` — bad patterns, gotchas (invented data, wrong company, missing score, outdated signals, tech-stack speculation)
- `references/search-strategies.md` — search query templates, data source categories, revenue/team/funding heuristics
- `references/skill-improvement-log.md` — changelog (v1.0 → v2.3), feedback signals, reference-example capture format, pattern detection rules

### Examples

Worked examples (one per company) in `references/`:
- `example-lovable.md` — $6.6B AI app builder
- `example-cursor.md` — $29.3B AI IDE
- `example-vercel.md` — $9.3B frontend cloud
- `example-perplexity.md` — $20B AI answer engine
- `example-sierra.md` — $10B AI customer service
- `example-gamma.md` — $2.1B AI presentations
- `example-openai.md` — frontier AI labs

### Evaluations

- All 4 target questions answered (revenue, customers, funding, team) or marked `[UNAVAILABLE: searched X]`
- Every data point carries source + confidence level
- Qualification score calculated 0-25 with notes per criterion
- ICP fit + red flags checklists completed
- Data gaps section with discovery questions
- ≥3 sources per major claim, ≥50% `[VERIFIED]` per `.claude/rules/exa-protocol.md`
- No invented funding/revenue/team numbers — `[UNAVAILABLE]` notation when missing
- Confidence levels match the ontology mapping (High → verified, Medium → inferred, Low → estimated)

## Push


After delivery, propose: `/competitor-research`, `/discovery`, `/proposal`, or `/icp-research`. If user approves output as exemplary, capture as reference example per `references/skill-improvement-log.md`.
