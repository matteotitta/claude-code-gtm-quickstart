---
name: content-operations
version: '1.0'
last_updated: 2026-02-11
author: marketing-team
description: 'Operationalizes a completed content strategy into executable series arcs, cross-channel cascades, production
  pipelines, and content calendars. Produces serialized content plans, channel-specific sequences, production workflows, and
  scheduling frameworks. Depends on content-strategy for pillars and volume targets. Triggers: "content operations", "content
  pipeline", "content calendar", "serialize content", "operationalize the strategy", "turn this into a calendar". NOT for
  creating individual assets — downstream execution skills (linkedin-content, aeo-content, etc.) handle that.'
goal: Operationalizes a completed content strategy into executable series arcs, cross-channel cascades, production pipelines,
  and content calendars.
outcome: Operationalizes a completed content strategy into executable series arcs, cross-channel cascades, production pipelines,
  and content calendars. Produces serialized content plans, channel-specific sequences, production workflows, and scheduling
  frameworks. Depends on content-strategy for pillars...
primitive: content
sub_primitive: strategy
ontology_type: content-strategy
review_gate: 2
inputs:
  required:
  - content-strategy
  recommended: []
outputs:
- type: content-strategy
  feeds_into: []
depends_on:
- content-strategy
feeds_into: []
owned_by_agent: operator
mcps_used: []
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
effort: medium
disable-model-invocation: true
---

# Content operations

Take a completed content strategy and operationalize it. Design series arcs, sequence content across channels, build the production pipeline, and optimize per channel. This skill builds the system; downstream skills create individual assets.

## When to use

**Invoke when user says:** "operationalize this content strategy", "content operations / pipeline / calendar for {company}", "serialize our pillars", "how do we produce content at scale?", "set up content production workflow", "content cascade planning", "turn this strategy into a production system".

**Do NOT invoke when:** building the strategy itself (use `content-strategy`), creating individual posts (use `linkedin-content`, `youtube-scripts`), running a full founder LinkedIn program (use `founder-linkedin`), auditing existing content (use `content-audit`).

## Inputs

| Input | Required? | Source |
|-------|-----------|--------|
| Content strategy (pillars, funnel mix, channels, volume targets, series themes) | Required | `content-strategy` output |
| TOV guidelines | Recommended | `tov-guidelines` output |
| Team capacity (people, hours) | Recommended | User |
| Tool stack (Notion, Scripe, Canva, etc.) | Recommended | User |
| Existing calendar, performance data, lead capture setup, CRM details, budget | Optional | User |

**Validate before proceeding:** strategy with pillars + funnel mapping; channel selection defined; volume targets set; at least one of TOV / team capacity / tool stack. If strategy missing, run `content-strategy` first. Can proceed with pillars + channels minimum, but flag gaps.

## Process

Four phases. Each ends in a checkpoint that gates the next phase. Detailed step-by-step protocols, templates, and tables live in `references/`.

### Phase 1 — Content serialization → `references/serialization-playbook.md`

Turn strategic pillars into executable multi-part series with narrative arcs.

1. **Design series arcs per pillar** — 1-3 series per pillar, picking arc type (problem / mechanism / case-study / framework / opinion) per `references/frameworks-and-examples.md` (series architecture framework).
2. **Define installment structure** — hook escalation, knowledge progression, callback structure, cadence.
3. **Map funnel-stage formats** — assign each series to TOFU / MOFU / BOFU; verify mix matches strategy ratios (typical 40/35/25).
4. **Create series tracking framework** — status, installments published, performance, decision triggers (TWE > 2 → expand; < 0.5 → retire).

**Checkpoint:** every pillar has 1+ series with clear arc; installments show progression; funnel mapping verified; tracking ready.

### Phase 2 — Cross-channel sequencing → `references/sequencing-calendar.md`

Orchestrate how content flows across channels over time.

1. **Design cascade rules** — anchor → derivatives per channel with timing and adaptation rules. Targets 80% cascade efficiency (1 anchor → 6-10 derivatives) per the cascade efficiency model in `references/frameworks-and-examples.md`.
2. **Define channel cadence** — weekly rhythm per channel, coordinated cross-channel timing.
3. **Map cross-channel coordination** — lead / amplification / conversion channel roles + stagger rules.
4. **Build calendar planning protocol** — Sunday review checklist, backlog management (evergreen / timely / launch queues), buffer rules (2-week minimum, 1 reactive slot/week).

**Checkpoint:** cascade map complete, weekly rhythm defined per channel, channel roles assigned, Sunday review checklist documented.

### Phase 3 — Production pipeline & team → `references/pipeline-team-playbook.md`

Build the operational mechanics — Kanban pipeline, team roles, handoff workflows.

1. **Define pipeline stages** — Idea Backlog → Briefed → Draft → Review → Approved → Scheduled → Published → Analyzed, with owner + exit criteria per stage.
2. **Specify card fields** — pillar, funnel stage, channel, format, series, owner, due date, source, derivative parent.
3. **Map team roles + time commitments** — Content Lead / Writer / Designer / QA, scaled to Solo / Small / Full team. For solo: collapse Lead + Writer + QA into one person; designer freelance or AI-assisted.
4. **Define handoff workflows** — text content, video content, graphics content (each with stage-by-stage routing).

**Checkpoint:** pipeline stages set with exit criteria, card fields specified, roles adapted to team size, handoffs documented per content type.

### Phase 4 — Channel optimization & lead capture → `references/channel-optimization.md`

Make content work harder per platform, then capture results into pipeline.

1. **Apply channel algorithm optimization** — LinkedIn (360 Brew, Jan 2026: saves 5x likes, dwell time, no external links, first 90 min, no edits), YouTube (title+thumbnail, watch time, first 30s, SEO), Newsletter (subject line < 50 chars, Tue/Thu mornings, deliverability, UTMs), Podcast (title SEO, first 2 min, cross-promo).
2. **Configure lead capture** — 6 methods mapped to tools: engagement tracking (Trigify/Valley), profile views (Sales Nav), lead magnets (beehiiv/ConvertKit), connection downloads, website visits (RB2B/Clearbit), direct bookings (Cal.com).
3. **Define retargeting triggers** — warm DM, newsletter CTA, retargeting ads, email flow, connection request, content follow-up. Enrichment flow: capture → Clay → ICP score → CRM with content attribution tag.

**Checkpoint:** optimization applied per platform, capture methods configured with data flow, retargeting triggers defined with downstream skill references, enrichment flow documented.

### Self-evaluation

- Every pillar has at least one executable series?
- Cascade rules map anchor → derivatives for all active channels?
- Pipeline stages clear with ownership + handoffs?
- Channel optimization grounded in platform-specific evidence (cite source where possible)?
- Realistic for stated team capacity?

If issues: flag gaps, mark assumptions, do not invent performance data.

### Review gate (Level 2)

Present series plan, cascade map, pipeline, calendar, and optimization. Actions: [Approve] [Adjust] [Refine].

### Output

Use the standard playbook template in `references/frameworks-and-examples.md` (sections: series plan → cross-channel sequence → production pipeline → channel optimization & lead capture). Pre-delivery checklist + worked examples + anti-examples + iteration prompts also in that file.

## Chain suggestions

After approval: `linkedin-content` (execute LinkedIn series), `youtube-scripts` (video series), `social-selling` (lead capture plays), `outreach-emails` (email retargeting flows), `linkedin-infographics` (graphic derivatives).

## References

- `references/serialization-playbook.md` — Phase 1: series arc templates, installment patterns, funnel-stage formats.
- `references/sequencing-calendar.md` — Phase 2: cascade templates, Sunday planning checklist, backlog rules.
- `references/pipeline-team-playbook.md` — Phase 3: Kanban template, role definitions, handoff workflows.
- `references/channel-optimization.md` — Phase 4: algorithm guidance, lead capture methods, retargeting triggers.
- `references/frameworks-and-examples.md` — cross-phase frameworks (series architecture, cascade efficiency, pipeline velocity), output template, worked examples, anti-examples, quality checklist, iteration prompts, integrations table, MCP integration.
