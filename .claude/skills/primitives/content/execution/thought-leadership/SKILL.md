---
name: thought-leadership
version: '1.0'
last_updated: 2026-01-16
author: marketing-team
description: 'Creates long-form thought leadership articles and whitepapers through a 3-phase human-in-the-loop process (outline,
  draft, polish). Produces publication-ready articles with contrarian angles, evidence-backed arguments, and TOV-matched prose.
  Depends on expert-pov and transcript-analysis for source material. Triggers: "thought leadership article", "long-form content",
  "whitepaper", "write an article about X", "expand this insight into a piece". Feeds into newsletter editions and linkedin-expert-posts
  as anchor content. NOT for short-form social posts — use linkedin-content instead.'
goal: Creates long-form thought leadership articles and whitepapers through a 3-phase human-in-the-loop process (outline,
  draft, polish).
outcome: Creates long-form thought leadership articles and whitepapers through a 3-phase human-in-the-loop process (outline,
  draft, polish). Produces publication-ready articles with contrarian angles, evidence-backed arguments, and TOV-matched prose.
  Depends on expert-pov and transcript-analysis for...
primitive: content
sub_primitive: execution
ontology_type: thought-leadership
review_gate: 2
inputs:
  required:
  - expert-pov
  - content-strategy
  recommended: []
outputs:
- type: thought-leadership
  feeds_into: []
depends_on:
- expert-pov
- content-strategy
feeds_into: []
owned_by_agent: content
mcps_used:
- exa
push_targets:
- gdrive
- notion
triggers:
  slash_commands:
  - /thought-leadership
  natural_language: []
status: draft
locked_by: null
locked_date: null
lock_version: null
sources_count: 0
effort: high
---

# Thought Leadership

## When to run

Long-form articles, essays, whitepapers, or guest posts where the user has a contrarian or non-obvious angle they want to publish. Three human-approval gates (Phase 1 pyramid, Phase 2 prose, Phase 3 polish). Skip for LinkedIn posts (`linkedin-content`), newsletter copy, or website copy. Triggers, anti-triggers, and pre-flight checklist → `references/phase-templates-and-protocols.md`.

## Inputs

| Input | Status | Source |
|-------|--------|--------|
| Topic / core insight | Required | User — must be specific and contrarian |
| Target audience | Required | ICP research or user-specified |
| Core argument | Required | User or collaboratively developed |
| ICP research | Recommended | `clients/[client]/icp-behavioural.md` |
| Product messaging | Recommended | `clients/[client]/product-messaging.md` |
| Content strategy | Recommended | Pillars + roadmap |
| Competitor positions | Recommended | Identifies white space |
| Source material, word count, publication context | Optional | LinkedIn 800-1500 / blog 1500-2500 / guest 2000-3500 |

Client CLAUDE.md is auto-loaded — apply its voice/messaging anchors. Full input matrix and pre-flight checklist in `references/phase-templates-and-protocols.md`.

## Steps

1. **Validate inputs** — topic specific, audience known, contrarian angle present, user has time for 3 review cycles.
2. **Phase 1.1 — Clarify core insight.** Ask: "What's the one thing you want the reader to believe after reading this that they didn't believe before?"
3. **Phase 1.2 — Identify audience starting point.** Current belief, gap to governing thought, anticipated objections.
4. **Phase 1.3 — Build the pyramid.** Governing Thought → 2-4 Key Line Arguments → Supporting Evidence per key line. Use the template in `references/phase-templates-and-protocols.md`. Pyramid theory + MECE deep-dive in `references/pyramid-principle-guide.md`.
5. **Phase 1.4 — Test structure.** MECE check (no overlap, fully supports governing thought) + "so what?" test on every level.
6. **Phase 1 deliverable + STOP.** Wrap in the Phase 1 checkpoint format. Wait for explicit "Approved — proceed to Phase 2" before continuing.
7. **Phase 2.1 — Map pyramid to prose sections.** Governing thought → opening, key lines → sections, objections → inline or dedicated, "so what?" → closing.
8. **Phase 2.2 — Write opening.** Hook → Context → Thesis → optional Roadmap. **Phase 2.3 — Expand each section:** Headline → Lead → Evidence → Transition. **Phase 2.4 — Write closing:** Restate → Synthesize → Implications → CTA.
9. **Phase 2 deliverable + STOP.** Three title options + full prose outline. Wrap in Phase 2 checkpoint format. Wait for "Approved — proceed to Phase 3".
10. **Phase 3.1 — Apply TOV.** Operator authority, prescriptive confidence, framework-driven clarity, candid partnership, specificity over superlatives, conversational warmth. Em dashes with spaces, sentence case headlines, numerals, banned-word check. Quick checklist → `references/tov-checklist.md`.
11. **Phase 3.2 — ICP guardrails.** Would target ICP care? Right sophistication? Would they share this with their team?
12. **Phase 3.3 — Anti-hallucination guardrails.** No invented client names/metrics/quotes. Mark missing data as `[Data point needed]`. Verify proof points or flag as `[Example — verify before publishing]`.
13. **Phase 3.4 — 100 Posts Test.** "If I published 100 posts like this, would the aggregate feel authentic to my voice and brand?" Plus final read-aloud check.
14. **Phase 3 deliverable + final STOP.** Wrap as `THOUGHT LEADERSHIP FINAL — PHASE 3` with quality report and items-for-review. Wait for "Approved — ready to publish".
15. **Push to chains.** After approval, offer LinkedIn teaser, standalone quote pulls, email intro, or newsletter summary. Suggest `/linkedin-content`, `/email-nurture`, or update `/content-strategy` plan.

Format guidelines per platform → `references/format-guidelines.md`. Phase output wrappers, checkpoint dialogues, MECE details, Exa research substrate, and full auto-update protocol → `references/phase-templates-and-protocols.md`.

## What good looks like

**References** — `references/pyramid-principle-guide.md` (Minto deep-dive), `references/tov-checklist.md` (voice quick-check), `references/format-guidelines.md` (per-platform word counts and structure), `references/phase-templates-and-protocols.md` (verbatim phase templates, checkpoints, anti-hallucination guardrails, integration map, auto-update protocol, MCP/Exa substrate).

**Examples** — `examples/worked-example-gtm-engineer.md` (full 3-phase walkthrough), `examples/top-performing-examples.md` (validated patterns).

**Evaluations** — Governing thought is contrarian and specific (not commodity wisdom). Key lines are MECE. Every claim has verified source or `[Example — verify]` flag. No banned words: solutions, leverage, synergy, scalable, best-in-class, game-changer, innovative, cutting-edge, very, really, basically, just. Three checkpoints honoured (no skipping ahead). Passes 100 Posts Test. Cites `[VERIFIED: exa_search, {url}, accessed {YYYY-MM-DD}]` for any external claim per `.claude/rules/ontology.md` and `.claude/rules/exa-protocol.md`.

## Push

After Phase 3 approval, route the artifact to: `linkedin-content` (teaser posts + standalone quotes), `email-nurture` (newsletter share), `content-strategy` (add to pillar plan). Save approved final to `examples/[date]-[topic-slug].md` if user signals "performed well". Integration map and feedback-pattern auto-update protocol → `references/phase-templates-and-protocols.md`.
