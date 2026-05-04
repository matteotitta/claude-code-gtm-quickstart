---
name: positioning
version: '2.4'
last_updated: 2026-03-03
author: marketing-team
description: Develops a positioning strategy with binary strategy selection, primary and secondary anchors, differentiators,
  and a positioning statement. Produces hero recommendation and one-liners for homepage and campaign use. Triggers on "positioning",
  "category definition", "differentiation", "how do we position", or "strategic foundation for messaging". Requires icp-behavioural
  and competitor-research as upstream inputs. Feeds into product-messaging and landing-page-copy. NOT for messaging libraries
  or taglines — use product-messaging instead.
goal: Develops a positioning strategy with binary strategy selection, primary and secondary anchors, differentiators, and
  a positioning statement.
outcome: Develops a positioning strategy with binary strategy selection, primary and secondary anchors, differentiators, and
  a positioning statement. Produces hero recommendation and one-liners for homepage and campaign use. Triggers on "positioning",
  "category definition", "differentiation", "how do we...
primitive: product-marketing
sub_primitive: strategy
ontology_type: positioning
review_gate: 2
inputs:
  required: []
  recommended:
  - icp-behavioural
  - competitor-research
  - win-loss-analysis
outputs:
- type: positioning-strategy
  feeds_into:
  - product-messaging
  - website-copy
  - sales-enablement
depends_on: []
feeds_into:
- website-copy
- product-messaging
- sales-enablement
owned_by_agent: pmm
mcps_used: []
push_targets:
- gdrive
- notion
triggers:
  slash_commands:
  - /positioning
  natural_language: []
status: draft
locked_by: null
locked_date: null
lock_version: null
sources_count: 0
context: fork
effort: max
---

# B2B positioning strategy

Develop clear, defensible positioning for B2B SaaS products. Synthesizes ICP + competitor + brand context into a binary strategy choice (category vs problem), primary/secondary anchors, defensible differentiators, and a positioning statement that survives the 5-second clarity test.

## When to run

Invoke when the user says:
- "Help me position [product/company]" / "Positioning strategy for [company]"
- "What category should we be in?" / "How do I differentiate from [competitor]?"
- "Our homepage isn't converting" / "Our messaging is confusing"
- "Should we niche down or go broad?" / "How do I explain what we do?"
- "Multi-product positioning help"

Do NOT invoke when:
- User wants landing page copy directly → `landing-page-copy`
- User wants full messaging library → `product-messaging` (run after positioning)
- User wants competitor research only → `competitor-research`
- User wants ICP research only → `icp-behavioural`

Workflow sequences:
- Greenfield: `positioning → product-messaging → landing-page-copy`
- Research-informed: `icp-behavioural → competitor-research → positioning → product-messaging`
- Audit fix: `website-pm-score → win-loss-analysis → positioning → landing-page-copy`

## Inputs

**Required:**
- Company/product name and basic description
- Website URL (accessible, fetchable)

**Recommended (improve quality):**
- `icp-behavioural` output → sharpens persona + problem anchors
- `competitor-research` output → enables competitive alternative mapping
- `win-loss-analysis` output → real decision criteria, objections
- Sales feedback → what's working in conversations
- `website-pm-score` output → clarity gaps to fix

**If inputs missing:** Ask for website URL. Offer to run `website-pm-score` first to assess current clarity. Identify founder type early (customer-focused / technology-focused / competition-focused) — drives the approach sequence.

## Steps

1. **Phase 1 — Discovery & current state.** Fetch website (homepage, pricing, about, product). Apply 5-second clarity test on H1+H2. Identify founder type. Extract current category / differentiation / ICP / problem claimed. → see `references/steps.md`
2. **Phase 2 — Anchor & alternative mapping.** Map 6 anchor types (Activity, Product Category, Use Case, Problem, Persona, Competitive Alternative). Map 5 alternative types (Manual/DIY, Legacy incumbent, Direct competitor, Adjacent tool, Status quo). Run Esner Decision Tree (Framework 13) to get a starting hypothesis. Score top combinations on Clarity / Differentiation / Relevance. Classify market maturity (emerging vs mature). → see `references/steps.md`
3. **Phase 3 — Strategy selection.** Choose binary strategy (category vs problem). Select primary anchor + secondary anchor + secondary angle archetype (Framework 14: Niche / Low-Cost / Premium / Unique Attribute / Lite — max 2). Define 2-3 defensible differentiators (delivery / guarantee / focus / proprietary). Determine market focus with TAM math. Pick primary competitive alternative.
4. **Run clarity ladder.** Compress positioning to 1 word, 1 phrase, 1 sentence, 1 paragraph. If any level fails, revisit anchor or differentiator selection.
5. **Run guarantee test.** For each differentiator: would you guarantee with money on the line? Verdict Pass / Fail / Partial. Cross-reference proof type per anchor (Framework 15: Activity → Before/After, Use Case → Workflow + Outcome, Category → Comparative, Competitive Alt → Switch/Upgrade).
6. **Map strategic implications.** Document what each decision implies for messaging direction, ICP sharpening, competitive counter-positions. If competitor-research available, include voice calibration. These feed product-messaging, icp-behavioural, tov-guidelines.
7. **Compose output.** Use template at `references/output-template.md`. Anchor-specific positioning statement template:
   - Activity: "We help [persona] [do activity] — replacing [manual process] with [product mechanism]."
   - Use Case: "We help [persona] [accomplish use case] without [key friction] — by [differentiated approach]."
   - Product Category: "We are a [category] that [key differentiator] — unlike [competitive alternative] which [weakness]."
   - Competitive Alternative: "We're a [leader]-alternative that [key upgrade] — for [persona] who [unmet need]."
8. **Channel emphasis guidance.** Same positioning, different facet leads per channel: homepage → primary anchor; thought leadership → Activity/Use Case; comparison pages → Competitive Alternative; sales discovery → Use Case/Activity; case studies → proof type matching primary anchor.
9. **Self-evaluation.** Run completeness, evidence, guardrail checks. Surface improvements. → see `references/evaluations.md`
10. **Review gate (Level 2).** Present full strategy + decisions. Approve or iterate.
11. **Suggest chain.** If approved: "Want me to run `product-messaging` next?" Tight coupling.

Frameworks reference (15 total): all detailed in `references/frameworks.md`. Anti-patterns + gotchas: `references/anti-patterns.md`. Changelog + MCP integration: `references/changelog.md`.

## What good looks like

### References

- `references/frameworks.md` — All 15 positioning frameworks (Fletch 1-12, Esner 13-15)
- `references/steps.md` — Phase 1/2/3 detailed walkthroughs + flowchart
- `references/output-template.md` — Standard markdown output structure
- `references/examples.md` — Worked examples + reference example capture format
- `references/evaluations.md` — Self-evaluation + auto-update protocol
- `references/anti-patterns.md` — Anti-patterns + gotchas
- `references/changelog.md` — Version history + MCP integration notes
- `references/fletch-positioning-posts.md` — 96 synthesized Fletch posts
- `references/esner-positioning-framework.md` — Esner 3-Step framework source

### Examples

- Worked contract-management example with H1/H2 fail → pass → see `references/examples.md`
- User-approved outputs saved to `references/examples/[date]-[client-slug].md`

### Evaluations

- 5-second clarity test passes (H1+H2 answer "which tools" or "which tasks")
- Decision tree hypothesis recorded AND validated against scoring matrix
- Secondary angle archetype selected from Framework 14 (max 2)
- Clarity ladder passes at all 4 levels (word / phrase / sentence / paragraph)
- All differentiators have guarantee test verdicts (Pass / Fail / Partial)
- Proof types align to primary anchor per Framework 15
- No "platform for X" alone, no invented categories, no "AI-powered" as primary differentiator
- ≤3 differentiators (focus discipline)
- Activity anchor used only when no software category exists
- TAM math is realistic (ACV × customers needed) — not hopeful thinking
- Strategic implications mapped for messaging, ICP, competitive (and voice if competitor data available)

## Push

- `client_folder/strategy/` (Google Docs) — strategic foundation for client review
- Notion "Positioning Database" — searchable record across engagements
- Output filename: `MMYY-positioning.md` per CLAUDE.md naming convention
- Feeds into: `product-messaging` (description + core blocks), `landing-page-copy` (hero formula), `sales-enablement` (battlecard positioning), `competitor-research` (focuses analysis on selected primary alternative), `tov-guidelines` (voice calibration if produced)
