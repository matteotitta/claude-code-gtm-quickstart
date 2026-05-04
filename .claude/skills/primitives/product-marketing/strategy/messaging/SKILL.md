---
name: product-messaging
version: '2.1'
last_updated: 2026-01-21
author: marketing-team
description: Builds a 10-component messaging library from website and product research. Produces value propositions, key differentiators,
  taglines, CTA variants, and proof points organized into a messaging hierarchy. Triggers on "product messaging", "messaging
  library", "capabilities and benefits", "value props", or "messaging framework". Requires positioning as upstream input.
  Feeds into landing-page-copy, outreach-emails, sales-enablement, and linkedin-content. NOT for positioning strategy — use
  positioning instead.
goal: Builds a 10-component messaging library from website and product research.
outcome: Builds a 10-component messaging library from website and product research. Produces value propositions, key differentiators,
  taglines, CTA variants, and proof points organized into a messaging hierarchy. Triggers on "product messaging", "messaging
  library", "capabilities and benefits", "value...
primitive: product-marketing
sub_primitive: strategy
ontology_type: messaging
review_gate: 2
inputs:
  required: []
  recommended:
  - positioning
  - icp-behavioural
  - competitor-research
outputs:
- type: product-messaging-library
  feeds_into:
  - website-copy
  - sales-enablement
  - linkedin-weekly-content
  - outreach-emails
  - product-launch
depends_on: []
feeds_into:
- website-copy
- linkedin-weekly-content
- outreach-emails
- product-launch
- sales-enablement
owned_by_agent: pmm
mcps_used:
- gdrive
- notion
push_targets:
- gdrive
- notion
triggers:
  slash_commands: []
  natural_language: []
status: draft
locked_by: null
locked_date: null
lock_version: null
sources_count: 0
context: fork
effort: high
---

# Product messaging

Builds a 10-component messaging library from website and product research. Output ships as the source of truth for all downstream marketing assets — landing pages, sales enablement, LinkedIn content, outreach. Knowledge type: `messaging` (per `.claude/rules/ontology.md`); maturity: emergent → validated after team review → canonical when locked. Visual phase map → `references/process-flowchart.md`.

## When to run

Invoke when the user asks for: `product messaging for [URL/company]`, `messaging library for [product]`, `extract messaging from [website]`, `product messaging framework`, `capabilities and benefits for [company]`, `what are [product]'s differentiators?`, `pain points and capabilities for [URL]`. Do **NOT** invoke for: competitor analysis only (use `/competitor-research`), landing page copy directly (use `/landing-page-copy` — run this first), ICP research only (use `/icp-behavioural`), or single-feature questions (answer directly without full framework).

**The Iron Law:** no messaging output without source verification. Every claim cites URL + access date or is marked `[Not available]`. Every quote is verbatim. Every consequence chain traces 1st→2nd→3rd order. Full guardrails + red flags + anti-hallucination rules → `references/quality-gates.md`.

## Inputs

**Required:**

- `website URL` — primary product website (verify it loads).
- `product name` — exact product/company name (confirm if ambiguous, e.g., "Bolt" could be ride-share, fintech, or `bolt.new`).

**Recommended (improve quality):**

- `target ICP context` — focuses messaging on relevant segments.
- `competitor context` — sharpens differentiators (use `/competitor-research` output if available).
- `internal docs` — provides claims not on website.
- `customer quotes` — fills gaps in testimonial coverage.

**Upstream skill outputs (if available, read first):**

- `positioning` (primary) — frames Description and core messaging blocks.
- `icp-behavioural` — enriches pain points and benefits with VoC data.
- `competitor-research` — sharpens status quo and differentiators.
- `tov-guidelines` — applies tone to messaging.

If website URL is missing, ask. If product name is ambiguous, confirm before starting.

## Steps

1. **Validate inputs** → verify URL accessible, product name confirmed, ICP context confirmed if not obvious. Pull upstream skill outputs (positioning, icp-behavioural, competitor-research) into context if available.
2. **Phase 1 — Discovery research** → `references/steps/phase-1-discovery.md`. Fetch core pages (homepage, features, pricing, customers, about — 5+ pages with URLs + access dates). Search external data (G2, testimonials, vs-pages) per Exa protocol (`.claude/rules/exa-protocol.md`). Extract branded feature names verbatim before structured extraction begins. Detailed search/scraping patterns → `references/extraction-patterns.md`.
3. **Phase 2 — Structured extraction** → `references/steps/phase-2-extraction.md`. Extract all 10 components in order: Description → Status quo & alternatives → Pain points (with consequence chains) → Capabilities → Functional benefits → Emotional & social benefits → Features (branded names) → Cost of inaction → Common objections → Core messaging blocks. Frameworks + descriptor counts + link graph → `references/frameworks.md`.
4. **Phase 3 — Verification & gaps** → `references/steps/phase-3-verification.md`. Source-verify every claim (URL + access date), confirm verbatim quotes, assign confidence levels (High/Medium/Low → `[VERIFIED]/[INFERRED]/[ESTIMATED]`), document data gaps + recommendations as Component 10.
5. **Apply attribution standards** → per `.claude/rules/ontology.md`: `[VERIFIED: source_type, reference]`, `[INFERRED: from X + Y]`, `[ESTIMATED: reasoning]`, `[UNAVAILABLE]`. Quality threshold for client-deliverable strategy outputs: ≥60% verified, ≤10% estimated.
6. **Self-evaluate against quality gates** → `references/quality-gates.md`. Run completeness, evidence-quality, and guardrail checks. Answer self-roast questions honestly.
7. **Write to client folder** per output template → `references/output-template.md`. File path: `messaging/MMYY-messaging.md` (or per client CLAUDE.md folder map). Header includes skill name, generated date, font (Inter), version.
8. **Push** to Notion (Product Messaging Database) and Google Docs (`client_folder/strategy/`) per push targets in frontmatter. For refresh runs, UPDATE existing pages rather than duplicating.
9. **Offer iteration prompts** post-delivery → `references/iteration-prompts.md`. If user signals approval ("great messaging" / quick approval), offer to save as a reference example under `references/examples/{date}-{product-slug}.md`.

## What good looks like

### References

- **Output template** → `references/output-template.md` — full markdown template covering all 10 components with source/confidence formatting, source appendix, and skill improvement notes.
- **Frameworks + scoring rubric** → `references/frameworks.md` — 10-component table, JTBD framing (optional Component 0), consequence chain framework with worked example, confidence scoring rubric, descriptor-count caps, component link graph (status quo → pain → capability → feature → benefit → quote).
- **Quality gates** → `references/quality-gates.md` — Iron Law, red flags, anti-hallucination guardrails (6 rules), anti-examples table, pre-delivery checklist, self-evaluation protocol with self-roast questions, gotchas (generic copy, missing hierarchy, tagline-first, unsourced proof, ignored status quo).
- **Process flowchart (visual)** → `references/process-flowchart.md` — ASCII flowchart of full execution path (input validation → discovery → extraction → verification → self-eval → review gate → chain suggestions).
- **Per-phase walkthroughs** → `references/steps/phase-1-discovery.md`, `phase-2-extraction.md`, `phase-3-verification.md` — full step-by-step for each phase including search patterns, extraction order, and checkpoints.
- **Extraction patterns** → `references/extraction-patterns.md` — search and scraping patterns per messaging component (homepage, features, pricing, testimonials, G2, comparison pages).
- **Iteration prompts + skill auto-update + MCP integration** → `references/iteration-prompts.md` — post-delivery refinement/expansion/quality offers, integration tables (feeds-into, receives-from), recommended workflow sequences, feedback signal table, reference-example capture format, pattern-detection rules, MCP data integration (Slack/Granola conditional pulls), changelog.

### Examples

- **Archive** (social listening platform) → `references/example-archive.md` — full 10-component dossier; demonstrates consequence chain discipline (manual influencer discovery → missed UGC → competitive market-share loss).
- **Linear** (issue-tracking platform) → `references/example-linear.md` — demonstrates branded-feature-name discipline and pricing-page extraction.
- **Notion** (productivity platform) → `references/example-notion.md` — demonstrates emotional + social benefits extraction and audience-segmented core messaging blocks.

### Evaluations (binary pass/fail before declaring "done")

- All 10 components present in correct order (or explicit `[Not available]` per component with reason).
- Status quo includes Manual/DIY + at least one named competitive alternative.
- Every pain point has a complete 1st→2nd→3rd order consequence chain (not cut short).
- Every pain point links forward to a capability; every capability links to a branded feature name.
- Every functional benefit includes a verbatim customer quote or explicit "Not available" with reason.
- Emotional + social benefits section complete: 2 emotional + 2 social.
- Cost of inaction section quantified (daily/weekly/monthly cost stated, not abstract).
- Common objections section complete (3-5 objections with root cause + Acknowledge/Reframe/Evidence response).
- Core messaging blocks complete: tagline ≤7 words, elevator pitch (1 sentence), 3-bullet value prop, proof point, audience-segmented messages.
- Every claim has source URL + access date; every quote verbatim; confidence level assigned (High/Medium/Low → `[VERIFIED]/[INFERRED]/[ESTIMATED]`).
- ≥60% `[VERIFIED]` confidence; ≤10% `[ESTIMATED]` (per ontology threshold for client deliverables).
- Data gaps section non-empty if any component is incomplete or low-confidence; recommendations provided for filling each gap.
- Source appendix lists ALL referenced URLs with access dates.
- Output title is `# Product messaging library: [Product Name]` exactly — no aliases.

## Push

- **Notion** → `Product Messaging Database` (per-client). Refresh runs UPDATE the existing page (`mcp__claude_ai_Notion__notion-update-page`) — don't duplicate.

Integration map (feeds-into / receives-from / recommended chains) → `references/iteration-prompts.md` ("Integration with other skills").

## Pre-slim original

Pre-slim SKILL.md (1,048 lines, v2.1) archived at `.claude/skills/_archive/messaging/SKILL-pre-slim-20260429.md`. See `references/iteration-prompts.md` ("Changelog") for the v2.2 entry documenting the slim.
