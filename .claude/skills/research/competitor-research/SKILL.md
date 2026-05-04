---
name: competitor-research
version: '2.8'
last_updated: 2026-04-29
author: marketing-team
description: 'Performs deep 13-dimension competitor analysis with quantitative scoring rubric. Produces a competitor dossier
  containing executive summary, dimension-by-dimension breakdown, comparison matrix, aggregate insights, and threat level
  classification (PRIMARY through DEFUNCT). Supports --refresh flag to update existing dossiers as living documents. Triggers:
  "competitor analysis", "competitive research", competitor name mentions, "battlecard prep", or "competitive positioning".
  Upstream: recommended company-context. Downstream: feeds positioning, battlecards, product-messaging, and sales-enablement.
  NOT for ICP research (use /icp-research) or general company background (use /company-context).'
goal: Performs deep 13-dimension competitor analysis with quantitative scoring rubric.
outcome: Performs deep 13-dimension competitor analysis with quantitative scoring rubric. Produces a competitor dossier containing
  executive summary, dimension-by-dimension breakdown, comparison matrix, aggregate insights, and threat level classification
  (PRIMARY through DEFUNCT). Supports --refresh...
primitive: research
ontology_type: competitor-intel
review_gate: 1
inputs:
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
depends_on: []
feeds_into:
- positioning
- product-messaging
- sales-enablement
owned_by_agent: researcher
mcps_used:
- exa
- gdrive
- notion
push_targets:
- gdrive
- notion
triggers:
  slash_commands:
  - /competitor-research
  natural_language: []
status: draft
locked_by: null
locked_date: null
lock_version: null
sources_count: 0
context: fork
effort: max
paths: marketing/**
---

# Competitor research

Run a 13-dimension dossier on a B2B SaaS competitor. Output ships with explicit confidence levels, inline source citations, a consolidated Sources & data quality table, and a data-gaps section with follow-up actions. Knowledge type: `competitor-intel` (per `.claude/rules/ontology.md`); maturity: emergent → validated after client review.

## Research substrate

Default substrate: **Exa** (per `.claude/rules/exa-protocol.md`, auto-loaded). Primary tools: `find_similar_links_exa` (structural competitor discovery from a client URL), `web_search_exa` (news, voice, gap discovery), `web_fetch_exa` (clean comparison-page extraction). Migration window: prefer the plugin namespace `mcp__plugin_exa_exa__*` once installed; legacy `mcp__exa__*` still mounted as fallback. Worked examples + tool catalog: `.claude/skills/meta-skills/exa/`.

## When to run

Invoke when the user asks for: `competitor analysis for X`, `battlecard research for X`, `competitive landscape for [market]`, `compare X vs Y`, `what's [competitor] doing?`. Do **NOT** invoke for: company qualification (use `/company-context`), product messaging only (use `/product-messaging`), researching the user's own company (use `/company-context`), or single-feature questions (answer directly).

Three run modes — pick by cadence and depth needed:

- **First run** (~90 min) — `/competitor-research [competitor]`. New competitor, no existing dossier. Phases 1–3 (or 1–4 for aggregate).
- **Quick scan** (~30 min, weekly) — `/competitor-research --quick [competitor]` or `/loop 1w`. Refreshes fast-moving data only (news, Clay, G2, internal sources). Updates "Recent changes" header — sections without changes stay untouched.
- **Deep refresh** (~90 min, monthly) — `/competitor-research --refresh [competitor]` or `/loop 1M`. Full 13-dimension cycle with TrustPilot monitor and Phase 4 aggregate (if 2+ competitors refreshed this cycle).

Full cadence + refresh discipline → `references/refresh-protocol.md`. Visual phase map → `references/process-flowchart.md`.

**The Iron Law:** no data point without source. Every claim cites a URL + access date or is marked `[Not available]`. Estimates need explicit confidence + reasoning. "Fast + wrong = useless."

## Inputs

**Required:**

- `competitor name` — exact company/product name (e.g., `Linear`, `Lovable`).
- `website URL` — competitor's site (e.g., `linear.app`).

**Recommended (improve quality):**

- `market category` — disambiguates ambiguous names (e.g., `Bolt` could be ride-share, fintech, or `bolt.new`). See `references/steps/phase-1-confirmation-setup.md` for the disambiguation reference.
- `client context` — current positioning sharpens the comparative angle.
- `specific questions` — focus areas (e.g., "deep dive on their pricing model and outbound motion").
- `research mode` — `single deep dive` (default) or `comparison matrix` (3–6 competitors).

If competitor name is ambiguous (e.g., "Cursor", "Base", "Linear"), confirm with the user before starting. If website URL is missing, ask — don't guess.

## Steps

1. **Confirm scope and disambiguate** → `references/steps/phase-1-confirmation-setup.md`. Verify name + URL, select run mode, lock disambiguation.
2. **Pre-flight optional MCPs** → check Clay, Granola, Google Drive, CRM, Notion availability per `references/refresh-protocol.md` ("Optional internal intel sources"). For each available, queue the corresponding queries; for each missing, skip silently.
3. **Research 13 dimensions** → `references/steps/phase-2-dimension-research.md`. Order: Company → Product → ICP → Pricing → Reviews → Content → Launches → SEO/AEO → Technographics → Openings → GTM → LinkedIn/Social → Paid advertising. Each dimension has tool fallbacks (Ahrefs → Serper → manual; Apify → Firecrawl → manual). Frameworks + scoring → `references/competitor-data-schema.md` ("Core frameworks").
4. **TrustPilot customer monitor** (deep refresh only, customer-facing competitors only) → run inside Step 2.5 per the Phase 2 file. Score top 10–15 customers 🟢/🟡/🔴.
5. **Synthesize and assign confidence** → `references/steps/phase-3-synthesis-gaps.md`. Assign `[VERIFIED]/[INFERRED]/[ESTIMATED]/[UNAVAILABLE]` per claim, write 2–3-paragraph executive summary, document data gaps with follow-up actions.
6. **Aggregate analysis** (only if 2+ competitors researched for same client) → `references/steps/phase-4-aggregate-analysis.md`. Build threat matrix, feature parity table, credibility audit, 3–5 strategic recommendations. Save as `MMYY-aggregate-insights.md` in client's competitors folder.
7. **Apply attribution standard** — inline `(Source: X)` per claim (not the verbose `[VERIFIED: url, date]` block); consolidate full URLs + access dates + confidence in the **Sources & data quality** table at the end of the document. Quality threshold: ≥50% Verified, ≤20% Estimated.
8. **Write to client folder** per output template → `references/output-template.md` ("Inline canonical, v2.7" — 13 dimensions, TrustPilot sub-section, Recent changes header, Sources & data quality table). For matrix mode → `references/matrix-template.md` ("Compact alternative"). Search query patterns per dimension → `references/search-patterns.md`. Common source URL patterns → `references/source-urls.md`.
9. **Self-evaluate against quality gates** → `references/quality-gates.md`. Run completeness, evidence-quality, and guardrail checks before declaring "done".
10. **Push** to Notion (Competitor Research Database) and Google Docs (`client_folder/context/competitor-research/`) per the push targets in frontmatter. For refresh mode, update the existing Notion page rather than creating a duplicate.
11. **Offer iteration prompts** post-delivery → `references/iteration-prompts.md`. If user signals approval (`"great research"`, quick approval), offer to save the output as a reference example under `references/examples/{date}-{competitor-slug}.md`.

## What good looks like

### References

- **Output template (single competitor, canonical)** → `references/output-template.md` — full structure including Recent changes header, Confidence summary, 13 dimension sections, TrustPilot customer monitor, Sources & data quality table, Iteration prompts. Two formats included: detailed v2.0 and current canonical v2.7.
- **Comparison matrix template** → `references/matrix-template.md` — multi-competitor matrix (3–6 competitors, 5 core dimensions). Detailed and compact alternatives both included.
- **Frameworks + scoring rubric** → `references/competitor-data-schema.md` — centralized YAML schema for competitor data, plus the 13 dimensions table, 3-level confidence scoring, and single-competitor vs matrix mode definitions.
- **Living-dossier refresh protocol** → `references/refresh-protocol.md` — quick scan vs deep refresh cadences, "Recent changes" rolling log discipline, optional internal intel MCPs (Clay, Granola, Drive, CRM, Notion).
- **Per-phase walkthroughs** → `references/steps/phase-1-confirmation-setup.md`, `phase-2-dimension-research.md`, `phase-3-synthesis-gaps.md`, `phase-4-aggregate-analysis.md` — full step-by-step for each phase, including disambiguation, dimension-by-dimension search queries, MCP fallbacks, and aggregate analysis triggers.
- **Process flowchart (visual)** → `references/process-flowchart.md` — ASCII flowchart of the full execution path (input validation → 13 dimensions → synthesis → aggregate → self-eval → review gate → chain suggestions).
- **Search query patterns per dimension** → `references/search-patterns.md`.
- **Common source URL patterns** → `references/source-urls.md` (Crunchbase, G2, Vendr, Reddit, ad libraries, etc.).
- **Quality gates** → `references/quality-gates.md` — Iron Law, Red Flags, Anti-hallucination guardrails (9 rules), Missing-data labels, Pre-delivery checklist, Self-evaluation protocol with self-roast questions, Anti-examples.
- **Iteration prompts + skill auto-update** → `references/iteration-prompts.md` — post-delivery offers (refinement / expansion / quality), feedback-signal table, reference-example capture format, pattern-detection rules.
- **Gotchas + changelog + MCP integration table** → `references/gotchas-changelog.md` — fabrication risks, "company doesn't exist" trap, threat-level enforcement, full version history, MCP data integration table for Level 0 (heavy pulls) with D13 URL patterns.

### Examples

- **Linear** (single competitor, deep) → `references/examples/0226-linear.md` — issue-tracking platform, $1.25B+ valuation, $52M raised. Full 13-dimension dossier; demonstrates confidence-level discipline and Sacra revenue estimate handling.
- **Lovable** (single competitor, deep) → `references/examples/0226-lovable.md` — AI app builder. Demonstrates fast-moving company tracking and launch cadence analysis.

### Evaluations (binary pass/fail before declaring "done")

- ≥3 sources per major claim (revenue, funding, team size, pricing).
- ≥50% `[VERIFIED]` confidence; ≤20% `[ESTIMATED]`.
- Threat level set on every competitor: `PRIMARY` / `ENTERPRISE TIER` / `DIRECT ICP` / `STEALTH WATCH` / `LOW` / `DEFUNCT`.
- Inline `(Source: X)` on every key data point (no verbose `[VERIFIED: url, date]` blocks inline).
- Sources & data quality table at end-of-document with URLs + access dates + confidence per dimension.
- Data-gaps section non-empty if any dimension is incomplete or `[UNAVAILABLE]`.
- All 13 dimensions present (or marked `[Not available]` / `[Requires premium tool]` explicitly).
- Recent-changes header present in `--quick` and `--refresh` modes; "Last refreshed" date updated.
- Output title is `# Competitor research: [Name]` exactly — no aliases like "competitive intelligence analysis" or "Competitive Intelligence Report".
- Premium-tool limitations noted explicitly (Ahrefs absent → Serper or manual, BuiltWith absent → "Not available", JS-walled ad libraries → manual check noted).

## Push

- **Notion** → `Competitor Research Database` (per-client). Refresh runs UPDATE the existing page (use `mcp__claude_ai_Notion__notion-update-page`) — don't duplicate.

## Integration with other skills

| Direction | Skill | What flows |
|-----------|-------|-----------|
| **Feeds into** | `/positioning` | Competitive alternatives, market context → alternative mapping, differentiation angles |
| **Feeds into** | `/product-messaging` | Competitor weaknesses, positioning gaps → sharpens client messaging, contrast points |
| **Feeds into** | `/sales-enablement` (`/battlecards`, `/sales-deck`) | Full competitor profiles, weaknesses → battlecard content, objection handling |
| **Receives from** | `/company-context` | Client context, market position → comparison baseline |

**Recommended chains:**

- Comprehensive competitive analysis: `company-context → competitor-research → positioning`.
- Battlecard creation: `competitor-research → sales-enablement`.
- Full PMM stack: `icp-behavioural + competitor-research → positioning → product-messaging → sales-enablement`.

## Scheduling (recurring runs)

```
/loop 1w /competitor-research --quick [competitor-name]            # weekly quick scan, set-and-forget
/loop 1M /competitor-research --refresh [competitor-name]          # monthly deep refresh, review-and-approve

/schedule create --name "competitor-[name]-weekly"  --cron "0 9 * * 1" --prompt "/competitor-research --quick [name]"
/schedule create --name "competitor-[name]-monthly" --cron "0 9 1 * *" --prompt "/competitor-research --refresh [name]"
```

For multiple competitors in parallel: `/competitor-research --refresh --all` spawns one subagent per competitor in `references/competitors.json`.

## Pre-slim original

Pre-slim SKILL.md (1609 lines, v2.7) archived at `.claude/skills/_archive/competitor-research/SKILL-pre-slim-20260429.md`. See `references/gotchas-changelog.md` for the v2.8 changelog entry documenting the slim.
