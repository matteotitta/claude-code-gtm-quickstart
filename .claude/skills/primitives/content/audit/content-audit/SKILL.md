---
name: content-audit
version: '1.0'
last_updated: 2026-01-16
author: marketing-team
description: 'Audits existing content across channels (blog, LinkedIn, YouTube, newsletter, events) to establish a baseline
  before strategic planning. Produces a content inventory, per-channel quality scores, gap analysis, consistency assessment,
  and prioritized recommendations. Triggers: "content audit", "audit our content", "content gaps", "what content do they have",
  "assess their content". Feeds into content-strategy as foundational input. NOT for creating new content — this is diagnostic
  only.'
goal: Audits existing content across channels (blog, LinkedIn, YouTube, newsletter, events) to establish a baseline before
  strategic planning.
outcome: 'Audits existing content across channels (blog, LinkedIn, YouTube, newsletter, events) to establish a baseline before
  strategic planning. Produces a content inventory, per-channel quality scores, gap analysis, consistency assessment, and
  prioritized recommendations. Triggers: "content audit",...'
primitive: content
sub_primitive: audit
ontology_type: content-audit
review_gate: 2
inputs:
  required: []
  recommended: []
outputs:
- type: content-audit
  feeds_into:
  - content-strategy
depends_on: []
feeds_into:
- content-strategy
owned_by_agent: operator
mcps_used:
- exa
- gdrive
push_targets:
- gdrive
- notion
triggers:
  slash_commands:
  - /content-audit
  natural_language: []
status: draft
locked_by: null
locked_date: null
lock_version: null
sources_count: 0
context: fork
effort: high
---

# Content audit

Run a comprehensive content marketing audit for a B2B SaaS company across newsletter/blog, LinkedIn, YouTube, and events. Produces a content inventory, per-channel scores, pillar-mix analysis, gap analysis, success patterns, and prioritized recommendations. Diagnostic only — feeds into `/content-strategy`. Knowledge type: `content-audit` (per `.claude/rules/ontology.md`).

## Research substrate

Default substrate: **Exa** per `.claude/rules/exa-protocol.md` (auto-loaded). Primary tools: `crawling_exa` (site content inventory), `web_search_exa` (competitor benchmarks, channel discovery). Fall back to Firecrawl if `crawling_exa` unavailable. Migration window: prefer `mcp__plugin_exa_exa__*` once installed; legacy `mcp__exa__*` still mounted as fallback. Citation: `[VERIFIED: exa_search, {url}, accessed {YYYY-MM-DD}]`. Quality gate: ≥3 sources per major claim, ≥50% `[VERIFIED]`, no `WebSearch` fallback without flagging the gap.

## When to run

Invoke when the user asks for: `audit [company]'s content`, `content audit for [company]`, `analyze [company]'s content marketing`, `review [company]'s content channels`, `what content is [company] producing?`, `content performance analysis for [company]`, `audit their newsletter/blog/YouTube/LinkedIn`, `content marketing assessment`. Do **NOT** invoke for: individual post creation (use `/linkedin-content` or `/youtube-scripts`), strategy build (use `/content-strategy` — this skill feeds it), competitor content scan (use `/competitor-research` Dimension 6), TOV-only analysis (use `/tov-guidelines`), single-channel quick reviews (answer directly).

Two run modes:

- **Published-content audit** (default) — full 6-phase walkthrough across newsletter/blog, LinkedIn, YouTube, events. Use the rubric in `references/scoring-framework.md` and the 4-pillar mix in `references/frameworks.md`.
- **Pre-production validator** — when invoked with `mode=pre_production`, apply the 10-signal BOFU validator from `references/content-check-merged-2026-04-29.md` instead. Returns PASS/REVISE/REJECT verdict for a single piece of intent-stage content.

Visual phase map → `references/process-flowchart.md`.

## Inputs

**Required:**

- `company name` — exact company/product name.
- `website URL` — main site, accessible.

**Recommended (improve quality):**

- `newsletter URL` — Substack, Beehiiv, ConvertKit, Ghost, or blog RSS.
- `LinkedIn page or founder profile` — primary B2B social channel.
- `YouTube channel URL` — for video content assessment.
- `Luma/Eventbrite page` — for events content assessment.

**Optional:** API access (YouTube, LinkedIn), time range (default: last 6 months), specific questions, current content team size, content goals.

**Validation:** company name unambiguous, website accessible, at least one content channel URL confirmed, time range established. If channels missing, ask for at least newsletter OR LinkedIn URL — offer to search for others.

## Steps

1. **Discover content channels and confirm scope** → `references/steps/phases.md` (Phase 1). Fetch footer/nav, run `site:[domain] blog OR newsletter OR resources` and `site:linkedin.com / youtube.com / lu.ma / eventbrite.com` searches. Verify access, note rate limits, prioritize by activity, lock time range.
2. **Audit newsletter/blog** → `references/steps/phases.md` (Phase 2). Fetch archive, sample 10–15 recent posts, calculate cadence, categorize topics by pillar, assess formats and quality signals (headlines, CTAs, lead magnets, depth). Per-channel scraping methods → `references/channel-scraping-guide.md`.
3. **Audit LinkedIn** → `references/steps/phases.md` (Phase 3). Pull last 20–30 posts, calculate cadence, categorize formats (text/carousel/video/image/poll/article), map topics, assess engagement, sample 5–10 posts for voice and hook patterns.
4. **Audit YouTube (if applicable)** → `references/steps/phases.md` (Phase 4). Pull channel data (subs, video count), calculate cadence, categorize content types, note view counts on recent videos, sample 2–3 videos for production quality (audio, visuals, editing, branding, thumbnails).
5. **Audit events (if applicable)** → `references/steps/phases.md` (Phase 5). Pull events from Luma/Eventbrite/LinkedIn Events, calculate cadence, categorize types (webinar/workshop/meetup/conference), note virtual vs. in-person mix, assess community signals (attendance, speakers, recordings).
6. **Cross-channel synthesis** → `references/steps/phases.md` (Phase 6). Calculate total monthly volume, aggregate pillar mix vs. 40/25/25/10 target, identify gaps, assess voice/topic/brand consistency, surface success patterns, generate recommendations (quick wins, strategic, long-term), assign 1–5 scores per dimension.
7. **Apply scoring rubric** → `references/scoring-framework.md` for detailed per-dimension rubrics; `references/frameworks.md` for the 4-pillar definitions, 7-dimension audit table, 1–5 scale, and B2B benchmarks (newsletter, LinkedIn, YouTube, events).
8. **Pre-production validator path (only if `mode=pre_production`)** — apply the 10-signal BOFU rubric in `references/content-check-merged-2026-04-29.md` instead of Phases 2–6. Returns PASS/REVISE/REJECT verdict.
9. **Write output** per `references/output-template.md` (full structure: header, exec summary, scorecard, channel inventory, per-channel sections, cross-channel analysis, gap analysis, success patterns, recommendations, content-strategy input summary, data gaps, iteration prompts).
10. **Self-evaluate against quality gates** → `references/quality-gates.md`. Run anti-hallucination guardrails (6 rules), data-quality / analysis-quality / handoff-quality / format-quality checklists, anti-example check.
11. **Push** to Google Docs per the export destination in `Push` below. Run review gate Level 2 (spot check) — present executive summary, scorecard, channel audits, recommendations.
12. **Offer iteration prompts** → `references/iteration-prompts.md` (refinement, expansion, quality prompts; feedback signal table; reference-example capture protocol).

## What good looks like

### References

- **Output template (canonical)** → `references/output-template.md` — full output structure including exec summary, audit scorecard, channel inventory, 4 per-channel sections (newsletter/blog, LinkedIn, YouTube, events), cross-channel analysis, gap analysis, success patterns, 3-tier recommendations (quick wins, strategic, long-term), content-strategy input summary, data gaps, iteration prompts.
- **Per-phase walkthrough** → `references/steps/phases.md` — full step-by-step for each of the 6 phases (channel discovery, newsletter/blog, LinkedIn, YouTube, events, cross-channel synthesis), with checkpoints.
- **Process flowchart (visual)** → `references/process-flowchart.md` — ASCII flowchart of input validation → discover → scrape → analyze → synthesize → review.
- **Scoring framework (detailed rubrics)** → `references/scoring-framework.md` — per-dimension scoring rubric across volume, cadence, topics, formats, quality, engagement, voice. Calibration guidance.
- **Core frameworks** → `references/frameworks.md` — 4-pillar mix (Educational 40 / Personal 25 / Promotional 25 / Organizational 10), 7-dimension channel audit, 1–5 scoring scale, B2B benchmarks per channel, API integration notes (YouTube Data API v3, LinkedIn limited API, newsletter platforms, events platforms), MCP data integration table (Firecrawl, GTM, GSC, Exa).
- **Channel scraping guide** → `references/channel-scraping-guide.md` — per-channel access methods, scraping tools, rate limits, fallbacks.
- **Pre-production BOFU validator** → `references/content-check-merged-2026-04-29.md` — absorbed from `/content-check`. 10 strategic intent signals → PASS/REVISE/REJECT verdict for pre-production content. Use when `mode=pre_production`. Merge log: `references/merged-from.md`.
- **Quality gates** → `references/quality-gates.md` — anti-hallucination guardrails (6 rules), pre-delivery checklist (data / analysis / handoff / format), anti-examples table.
- **Iteration prompts + skill auto-update** → `references/iteration-prompts.md` — refinement / expansion / quality prompts, feedback-signal interpretation table, reference-example capture protocol, pattern-detection rules (3+ occurrences trigger).
- **Worked snippets** → `references/worked-snippets.md` — newsletter cadence analysis, cross-channel cascade assessment snippets demonstrating specific-numbers discipline. Plus changelog.

### Examples

- **B2B SaaS content audit (full)** → `examples/example-audit-b2b-saas.md` — DataSync (fictional). Demonstrates exec summary, scorecard, all 6 phases, cross-channel synthesis, gap analysis, recommendations, and content-strategy input summary in the canonical output format.

### Evaluations (binary pass/fail before declaring "done")

- All discovered channels documented with URL + active/inactive status + last-active date.
- Specific numbers everywhere (no "they post regularly" — instead "3.2 posts/month, every Tuesday").
- Sources linked for every key finding (specific posts, pages, content pieces).
- No invented metrics, engagement guesses, or assumed strategy intent.
- Pillar mix percentages calculated per channel and aggregate; compared to 40/25/25/10 target with gap shown.
- 1–5 scores assigned across volume, consistency, quality, pillar balance, cross-channel alignment, plus overall health.
- Recommendations split into quick wins (this week), strategic (30 days), long-term (next quarter).
- Content-strategy input summary completed (current baseline, key inputs, recommended focus).
- Voice patterns summarized for downstream `/tov-guidelines` handoff.
- Data gaps surfaced explicitly with workaround — no silent omissions.
- Output title is `# Content Audit: [Company Name]` exactly. Header includes website, audit period, prepared-by, channels audited, audit date.

## Push

- **Local file** → `marketing/content/audit/MMYY-content-audit.md` per the auto-routing rule (audit verb → `audit/` lane).

## Integration with other skills

| Direction | Skill | What flows |
|-----------|-------|-----------|
| **Feeds into** | `/content-strategy` | Baseline volume, pillar mix, gaps, voice patterns, successful formats → strategy creation foundation |
| **Feeds into** | `/tov-guidelines` | Voice patterns from LinkedIn voice analysis → TOV input |
| **Feeds into** | `/linkedin-content` | LinkedIn audit findings → post creation calibration |
| **Feeds into** | `/youtube-scripts` | YouTube audit findings → video strategy |
| **Related** | `/competitor-research` | Dimension 6 (Content) is a subset — use `/competitor-research` for comparative content scan across competitors |

**Recommended chains:**

- Build content engine: `content-audit → content-strategy → linkedin-content / aeo-content / youtube-scripts`.
- Voice extraction: `content-audit → tov-guidelines`.
- Competitive content benchmark: `content-audit (client) + competitor-research (Dimension 6, top 3 competitors) → content-strategy`.

## Pre-slim original

Pre-slim SKILL.md (1171 lines, v1.0) archived at `.claude/skills/_archive/content-audit/SKILL-pre-slim-20260429.md`. Slim performed 2026-04-29 — see `references/worked-snippets.md` ("Changelog") for the v1.2 entry.
