---
name: content-strategy
version: '1.2'
last_updated: 2026-02-11
author: marketing-team
description: 'Develops comprehensive content strategies with pillars, funnel mapping, channel mix, cadence, and a 90-day execution
  roadmap. Accepts any available context dimension as input (ICP, competitors, messaging, TOV, brand, company context, content
  audit). Produces strategic pillars, channel playbooks, volume targets, and quarterly calendar framework. Triggers: "content
  strategy", "content pillars", "90-day plan", "what should we publish", "content roadmap". Feeds into aeo-strategy, content-operations,
  and linkedin-content-guide. NOT for individual content pieces — use linkedin-content, aeo-content, or thought-leadership
  instead.'
goal: Develops comprehensive content strategies with pillars, funnel mapping, channel mix, cadence, and a 90-day execution
  roadmap.
outcome: Develops comprehensive content strategies with pillars, funnel mapping, channel mix, cadence, and a 90-day execution
  roadmap. Accepts any available context dimension as input (ICP, competitors, messaging, TOV, brand, company context, content
  audit). Produces strategic pillars, channel...
primitive: content
sub_primitive: strategy
ontology_type: content-strategy
review_gate: 2
inputs:
  required:
  - product-messaging
  recommended: []
outputs:
- type: content-strategy
  feeds_into:
  - linkedin-weekly-content
  - aeo-content
  - youtube-scripts
  - content-operations
depends_on:
- product-messaging
feeds_into:
- linkedin-weekly-content
- aeo-content
- youtube-scripts
- content-operations
owned_by_agent: pmm
mcps_used: []
push_targets:
- gdrive
- notion
triggers:
  slash_commands:
  - /content-strategy
  natural_language: []
status: draft
locked_by: null
locked_date: null
lock_version: null
sources_count: 0
context: fork
effort: high
---

# Content strategy

Synthesise foundational research (ICP, messaging, competitors, TOV, brand) into an actionable B2B SaaS content plan: service-based pillars, TOFU/MOFU/BOFU funnel mapping, channel mix, cadence, and a 90-day execution roadmap. Volume targets, recurring series, and a sample week make the strategy executable from day one.

## When to run

Invoke when the user asks for:
- "Create a content strategy / content plan / content marketing strategy for [company]"
- "Content calendar for [company]" or "build a content program"
- "What content should [company] create?" / "content roadmap"
- Channel-specific strategies: "social media strategy", "LinkedIn content strategy", "podcast/YouTube strategy", "newsletter strategy"

Do NOT invoke when:
- User wants individual posts only → `linkedin-content` or `youtube-scripts`
- User wants messaging framework → `product-messaging`
- User wants ICP research only → `icp-behavioural`
- User wants product launch plan → `product-launch`
- User wants SEO/AEO research and article queue → chain `aeo-strategy` after this skill

## Inputs

This skill accepts any context dimension. The more available, the stronger the strategy. It synthesises whatever foundations exist.

### Context dimensions

| Input | Source | Impact |
|-------|--------|--------|
| **ICP research** — segments, personas, pain points | `icp-behavioural` | High — drives pillar relevance + funnel mapping |
| **Product messaging** — positioning, capabilities, differentiators | `product-messaging` | High — drives pillar selection + content angles |
| **Competitor research** — content analysis, gaps | `competitor-research` | Medium — drives differentiation + gap-filling |
| **TOV guidelines** — voice, vocabulary, patterns | `tov-guidelines` | Medium — drives style + consistency |
| **Company context** — overview, market position, leadership | `company-context` | Medium — drives narrative + brand pillars |
| **Brand identity** — visual guidelines, mood | `brand-kit` | Low-Medium — drives visual content specs |
| **Content audit** — existing inventory + performance | `content-audit` | Medium — drives gap analysis + build-on |
| **Market research** — industry trends, TAM/SAM | User or research skills | Low-Medium — drives trend angles |

### Minimum viable input

At least one of: ICP research • product messaging • company context.

### Validation checklist

- [ ] At least one context dimension available
- [ ] Company name and context clear
- [ ] Enough foundation to define service-based pillars (not generic ones)

If inputs are thin: flag missing dimensions and their impact, offer to chain `icp-behavioural` → `product-messaging` → `tov-guidelines` → `competitor-research`. Proceed with what's available, but mark assumptions.

## Steps

The skill executes 6 phases. Detailed sub-steps + checkpoints in `references/steps/phase-walkthroughs.md`. Visual flowchart in `references/process-flowchart.md`. Frameworks (service-based pillars, TOFU/MOFU/BOFU, pillar × funnel matrix, content flow, channel hierarchy, content cascade) in `references/frameworks.md`. Pillar-design depth in `references/content-pillars-guide.md`. Channel-specific guidance in `references/channel-playbooks.md`. Narrative architecture mental models in `references/mental-models-for-content.md`.

1. **Validate inputs.** Check minimum viable input present. If thin, chain prerequisite skills or proceed with assumptions explicitly flagged.
2. **Phase 1 — Foundations.** Define 2-4 prioritised content goals (revenue / awareness / employer brand / customer success), 4-6 core topics from ICP+messaging, 3-5 differentiators, audience segment matrix.
3. **Phase 2 — Pillars + funnel.** Define 4-5 service-based pillars (30/25/20/15/10% mix) — NOT generic Educational/Personal/Promotional. AI/automation is the throughline across all pillars. Map TOFU 40% / MOFU 35% / BOFU 25%. Build the pillar × funnel matrix with named example content per cell. Calculate mix in both dimensions with monthly counts.
4. **Phase 3 — Channels.** Tier 1 (always): LinkedIn + Blog/Newsletter. Tier 2 (if capacity): Podcast/YouTube as anchor. Tier 3 (contextual): X.com, events, IG/TikTok. Pick anchor content (highest-effort, highest-value) and design the cascade (anchor → 5-10 derivatives). Document channel specs: format, frequency, primary pillar, metrics, tooling.
5. **Phase 4 — Planning + execution.** Calculate volume targets (total + per-channel + per-pillar). Define weekly cadence (production vs publishing). Design 90 days: Month 1 Launch & Foundation → Month 2 Education & Nurturing → Month 3 Proof & Conversion. List recurring series (weekly/monthly/quarterly). Build sample example week.
6. **Phase 5 — Metrics + governance.** Define metrics by channel (primary + secondary + targets). Document approval workflow + quality checklist + archive/refresh policy. Inventory gaps + assumptions + follow-up research.
7. **Phase 6 (optional) — Operationalisation bridge.** When 2+ team members, 8+ pieces/month, multiple active channels, or series-based content planned, chain into `content-operations` for series architecture, cross-channel sequencing, production pipeline, channel optimisation.
8. **Self-evaluation.** Verify: topics derived from inputs (not invented), pillars are service-based, mixes sum to 100% on both dimensions, volume realistic for capacity. Apply the anti-hallucination guardrails in `references/quality-and-governance.md`.
9. **Assemble output.** Use the standard structure in `references/output-template.md`: 1. Strategy foundations → 2. Pillars + funnel → 3. Channel strategy → 4. Planning + execution → 5. Metrics + governance → 6. Gaps + recommendations.
10. **Pre-delivery quality gate.** Run the four-block checklist (strategy / pillars+funnel / channel / execution) in `references/quality-and-governance.md`. If any check fails, fix or explicitly flag.
11. **Review gate (Level 2 — Spot Check).** Present foundations, pillars, channels, 90-day plan, volume targets. Actions: [Approve] [Adjust mix] [Refine].
12. **Iteration prompts.** Offer refinement / expansion / quality prompts (full menu in `references/quality-and-governance.md`).

## What good looks like

### References
- `references/process-flowchart.md` — visual end-to-end flowchart
- `references/steps/phase-walkthroughs.md` — Phase 1-6 detailed steps + checkpoints
- `references/frameworks.md` — service-based pillars, TOFU/MOFU/BOFU, pillar × funnel matrix, content flow, channel hierarchy, content cascade
- `references/content-pillars-guide.md` — pillar definitions and formats (in-depth)
- `references/channel-playbooks.md` — channel-specific guidance
- `references/mental-models-for-content.md` — narrative architecture mental models
- `references/output-template.md` — full output template (deliverable structure)
- `references/quality-and-governance.md` — anti-hallucination guardrails, pre-delivery checklist, iteration prompts, integration map, gotchas, auto-update protocol, MCP integration, Exa research substrate, changelog

### Examples
- `examples/example-linear.md` — Linear worked example (craft-led B2B SaaS in saturated category) showing single-persona discipline, three-pillar topic mix, weekly changelog cadence, and the "ship cadence IS the content" pattern

### Evaluations

Strategy quality:
- [ ] Goals are measurable and prioritised
- [ ] Core topics trace back to ICP/messaging (no inventions)
- [ ] Differentiators are specific and defensible
- [ ] Audience segments align with ICP

Pillars + funnel:
- [ ] Pillars are service-based (not Educational/Personal/Promotional)
- [ ] AI/automation is throughline, not a separate pillar
- [ ] TOFU/MOFU/BOFU mapped with content types
- [ ] Pillar × funnel matrix populated with named examples
- [ ] Mix percentages sum to 100% on both dimensions
- [ ] Monthly counts calculated for both dimensions
- [ ] Formats are specific with funnel stage assignment

Channel:
- [ ] LinkedIn + Blog/Newsletter included
- [ ] Bonus channels justified with rationale
- [ ] Anchor content defined with cascade
- [ ] Metrics defined per channel

Execution:
- [ ] Volume realistic for team capacity
- [ ] Weekly cadence is actionable
- [ ] 90-day themes build logically (Launch → Educate → Prove)
- [ ] Recurring series are repeatable

## Push

| Push to | Why |
|---------|-----|
| `aeo-strategy` | Add SEO/AEO research layer, keyword gaps, and the article queue for website/blog |
| `content-operations` | Operationalise the strategy with serialisation, production pipeline, calendar |
| `linkedin-content` | Execute the LinkedIn pillar of the strategy |
| `youtube-scripts` | Execute the video pillar of the strategy |
| `product-launch` | Slot launches into the strategy timeline |

Save the artifact in the client's `content/strategy/MMYY-content-strategy.md` per the auto-routing rule (verbs of "plan / decide / map" → `{lane}/strategy/`).
