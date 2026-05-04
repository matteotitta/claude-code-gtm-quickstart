---
name: tov-guidelines
version: '2.1'
last_updated: 2026-01-21
author: marketing-team
description: 'Analyzes existing client content (website, blog, social, docs) to extract voice patterns, vocabulary preferences,
  frequency scores, and do/don''t usage rules. Produces a two-phase output: Phase 1 TOV analysis (patterns extracted from
  source material) and Phase 2 TOV guidelines (codified voice rules for content production). Triggers: "tone of voice", "brand
  voice", "voice guidelines", "writing guidelines", "TOV audit", or starting a new content program. Upstream: recommended
  company-context, win-loss-analysis, competitor-research. Downstream: feeds linkedin-content, landing-page-copy, product-messaging,
  outreach-emails, and all content skills. NOT for visual brand tokens (use /brand-kit)
  TOV doc).'
goal: Analyzes existing client content (website, blog, social, docs) to extract voice patterns, vocabulary preferences, frequency
  scores, and do/don't usage rules.
outcome: 'Analyzes existing client content (website, blog, social, docs) to extract voice patterns, vocabulary preferences,
  frequency scores, and do/don''t usage rules. Produces a two-phase output: Phase 1 TOV analysis (patterns extracted from
  source material) and Phase 2 TOV guidelines (codified voice...'
primitive: research
ontology_type: tone-of-voice
review_gate: 2
inputs:
  required: []
  recommended:
  - company-context
outputs:
- type: tov-analysis
  feeds_into: []
- type: tov-guidelines
  feeds_into:
  - website-copy
  - linkedin-weekly-content
  - product-messaging
  - sales-enablement
  - outreach-emails
depends_on: []
feeds_into:
- website-copy
- linkedin-weekly-content
- outreach-emails
- product-messaging
- sales-enablement
owned_by_agent: researcher
mcps_used:
- exa
- firecrawl
push_targets:
- gdrive
- notion
triggers:
  slash_commands:
  - /tov-guidelines
  natural_language: []
status: draft
locked_by: null
locked_date: null
lock_version: null
sources_count: 0
context: fork
effort: high
---

# TOV guidelines

Extract actionable editorial tone of voice guidelines from a company's existing content. Two-phase workflow: Phase 1 analyzes website content to surface evidence-based voice patterns; Phase 2 codifies those patterns into guidelines that downstream content skills consume. User review gate sits between the two phases.

## When to run

- User says "tone of voice", "brand voice", "voice guidelines", "writing style guide", or asks to extract voice from a URL.
- Starting a new content program for a client and downstream skills (linkedin-content, landing-page-copy, product-messaging, outreach-emails) need a voice contract.
- Existing TOV is stale (>6 months) or content has drifted from documented voice.

**Don't run when:** user wants visual brand identity (use `brand-kit`), product messaging (use `product-messaging`), to write content directly (use the content skill with TOV as input), or just a quick voice description (answer directly).

## Inputs

| Input | Required | Source |
|-------|----------|--------|
| Company URL | yes | User |
| Founder context (transcript, notes, voice preferences) | optional | User / company-context |
| Existing brand guidelines (to update) | optional | User |
| Target audience | optional | icp-research / user |

**Validate before proceeding:** URL is accessible, site has homepage + 5-10 pages of content. If thin, flag sample-size limitation in output.

**Research substrate (Exa):** primary tool `web_search_exa` for founder voice harvesting via `site:linkedin.com` / `site:twitter.com` filters. Per `.claude/rules/exa-protocol.md`. Citation: `[VERIFIED: exa_search, {url}, accessed {YYYY-MM-DD}]`. Quality gate: ≥3 sources per major claim, ≥50% `[VERIFIED]`.

## Steps

Two phases. Phase 1 outputs `tov-analysis.md`. User reviews. Phase 2 outputs `tov-guidelines.md`.

### Phase 1 — Analysis

1. **Discover site structure** — fetch homepage, extract internal links, filter same-domain only, prioritize `/about`, `/manifesto`, `/values`, `/blog/*`, `/case-studies/*`, `/pricing`, `/faq`.
2. **Scrape 15-20 pages** in priority order: homepage → about/values → blog (3-5) → case studies (2-3) → pricing → FAQ → landing pages.
3. **Extract sentence-level patterns** — average length, person (1st/3rd), question frequency, imperative usage.
4. **Extract paragraph-level patterns** — average length, openings, transitions, evidence placement.
5. **Extract word-level patterns** — company vocabulary, customer/industry vocabulary, banned/avoided words, modifier frequency.
6. **Extract structural patterns** — headers (sentence vs title case), CTA placement and phrasing, proof stacking, section organization.
7. **Score frequency** — High (80%+ of pages), Medium (40-79%), Low (<40%), Conflict (contradictory).
8. **Build content-type voice mapping** — table of person/formality/CTA per page type (homepage, blog, case study, pricing).
9. **Generate voice-in-action examples** — generic → on-brand transformations, drawn from actual scraped text (never invented).
10. **Identify inconsistencies** — flag conflicts (e.g., homepage uses "I", pricing uses "we") for Phase 2 resolution.
11. **Document gaps** — what couldn't be determined; suggest founder interview questions.
12. **Write `tov-analysis.md`** using `references/analysis-template.md` (44-section canonical scaffold; compact alternative in same file).
13. **Present to user — Review gate.** User must confirm patterns, correct misidentifications, and answer gap questions before Phase 2.

### Phase 2 — Generation

14. **Incorporate user feedback** — apply corrections, resolve inconsistencies, fill gaps with founder answers.
15. **Generate `tov-guidelines.md`** using `references/tov-template.md` — primary reader, tone attributes with before/after, pattern library with LLM guidance, vocabulary lists, structure templates, anti-patterns. **Always include the AI-speak anti-patterns table from `references/ai-speak-anti-patterns.md`.**
16. **Add source attribution** — every guideline traces to a source URL; frequency scores carried forward; unresolved gaps marked "TBD — requires founder input".
17. **Self-evaluate** per `references/self-evaluation.md` (completeness, evidence, guardrails, self-roast). Surface improvement prompts to user when checks fail.
18. **Save approved output as reference example** if user explicitly approves — see `references/auto-update-protocol.md`.

## What good looks like

### References

- `references/process-flowchart.md` — full two-phase visual flowchart with review gate
- `references/content-analysis-guide.md` — pattern extraction framework (site discovery, scraping, scoring)
- `references/analysis-template.md` — Phase 1 output structure (44-section canonical + compact alternative scaffold)
- `references/tov-template.md` — Phase 2 output structure (canonical + compact alternative scaffold)
- `references/founder-interview-questions.md` — questions to fill gaps from scraping
- `references/quality-checklist.md` — pre-delivery verification (Phase 1 + Phase 2)
- `references/ai-speak-anti-patterns.md` — universal AI-speak table to include in every TOV output
- `references/self-evaluation.md` — completeness + evidence + guardrail checks, self-roast questions, improvement prompts
- `references/auto-update-protocol.md` — feedback signal detection, save-as-reference flow, pattern detection rules
- `references/integration-map.md` — feeds-into / receives-from skill graph + chain sequences

### Examples

- `references/examples/` — user-approved TOV outputs from prior runs (auto-populated by approval flow)

### Evaluations

A TOV output passes when:

- [ ] 15+ pages scraped, all pattern categories (sentence, paragraph, word, structural) have findings.
- [ ] Frequency scores based on actual counts (e.g., "5 of 6 pages, 83%"), not "usually" or "often".
- [ ] Every guideline traces to a source URL.
- [ ] All examples are from actual scraped text (no invented illustrative examples).
- [ ] Inconsistencies explicitly flagged, not papered over; gaps documented with founder questions.
- [ ] Phase 2 includes the AI-speak anti-patterns table (false contrast, wrapped bow, "Here's the thing", uniform rhythm, max-1 negation setup).
- [ ] No adjective-only descriptions ("friendly", "professional"); no vague guidelines ("use conversational language").
- [ ] All 6 critical questions answered: who reads / what tone sounds like / patterns repeat vs vary / words used / structure / what to refuse.

## Push

After delivery, offer downstream chains:

- "Want me to apply this TOV to landing-page-copy?"
- "Ready to generate linkedin-content with this voice?"
- "Should I run product-messaging with these guidelines as voice contract?"
- "Should I analyze competitor voice for differentiation contrast?"

If user signals approval ("great guidelines", "this captures our voice"): offer to save as reference example per `references/auto-update-protocol.md`.

If user corrects patterns: log the correction. After 3+ similar corrections across runs, propose a SKILL.md update.

**Reads from upstream:** `company-context` (positioning), `win-loss-analysis` (how team actually speaks), `competitor-research` (differentiation contrast).
**Feeds into:** landing-page-copy, linkedin-content, product-messaging, sales-enablement, outreach-emails, aeo-content, thought-leadership, newsletter. Full graph: `references/integration-map.md`.

**MCP substrate:** Firecrawl (`firecrawl_scrape`) for page content; YouTube `get_transcript` for founder spoken voice if videos exist; Exa `web_search_exa` for external brand content. Fallbacks: WebFetch, manual transcript analysis, WebSearch (flag as data gap).
