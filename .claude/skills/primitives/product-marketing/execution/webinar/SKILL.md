---
name: webinar-brief
version: '1.0'
last_updated: 2026-01-17
author: marketing-team
description: Plans webinars with logistics, content outline, speaker prep, promotion strategy, and post-event follow-up. Produces
  run-of-show, promotion calendar, registration page copy, and nurture sequences. Triggers on "webinar", "webinar brief",
  "online event", "webinar planning", or "speaker prep". Consumes product-messaging or content-strategy as upstream input
  for topic and audience alignment.
goal: Plans webinars with logistics, content outline, speaker prep, promotion strategy, and post-event follow-up.
outcome: Plans webinars with logistics, content outline, speaker prep, promotion strategy, and post-event follow-up. Produces
  run-of-show, promotion calendar, registration page copy, and nurture sequences. Triggers on "webinar", "webinar brief",
  "online event", "webinar planning", or "speaker prep"....
primitive: product-marketing
sub_primitive: execution
ontology_type: launch-plan
review_gate: 2
inputs:
  required:
  - expert-pov
  - product-messaging
  recommended: []
outputs:
- type: launch-plan
  feeds_into: []
depends_on:
- expert-pov
- product-messaging
feeds_into: []
owned_by_agent: growth
mcps_used:
- exa
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
---

# Webinar Brief

Comprehensive webinar briefs covering the lifecycle: positioning, content, run-of-show, promotion, follow-up, repurposing.

## When to run

Trigger on "plan a webinar", "webinar brief / strategy / promotion plan", "run-of-show", "virtual event brief", "co-marketing webinar", "partner webinar". Skip if the user only needs slides (use presentation tools), demo script (`demo-script`), email sequence (`email-nurture`), or registration page copy (`landing-page-copy`). Full triggers and inputs in `references/quality-and-guardrails.md`.

## Inputs

Required: webinar topic, target audience, date/time, speakers. Optional but improve quality: product messaging (alignment), co-marketing partner, past webinar data (benchmarks), bonus content assets, demo environment, promotion budget. If required inputs are missing, ask for topic + date + speakers and confirm whether a live demo is included. Full input table in `references/quality-and-guardrails.md`.

## Steps

1. **Validate inputs** — topic, date, speakers, audience, format (live/recorded, demo/no demo). Mark unconfirmed logistics with `[CONFIRM: detail]`.
2. **Define positioning** — topic angle, promise, why now, differentiator. One-sentence positioning statement.
3. **Set goals + metrics** — registrations, attendance rate, engagement, pipeline. Mark targets `[TARGET]` if not benchmarked.
4. **Pick format** — solo / panel / interview / demo+Q&A / workshop. Match duration to format. See `references/format-templates.md`.
5. **Build content outline** — fit time-realistic sections (default 45-min: 5 intro / 10 context / 20 core / 5 application / 5 Q&A). Templates in `references/format-templates.md`.
6. **Write speaker prep** — talking points per section, transitions, Q&A anticipation.
7. **Create run-of-show** — T-30 tech check, T-15 speakers online, T-5 green room, 0:00 go live, section timings, close + stop recording. Owners on every row.
8. **Plan engagement moments** — polls, Q&A prompts, resource drops, live reactions, with timing.
9. **Build promotion calendar** — T-3 weeks → T-1 hour. Channels: email (3-4), LinkedIn, Twitter, partner. Owner on every row.
10. **Write promotional copy** — registration page (headline <70ch, sub <120ch, 3-5 bullets, speaker bios, form fields), 3-4 email invites, social posts, partner kit if co-marketing.
11. **Design follow-up sequences** — attendee (Day 0 recording, Day 2 takeaway, Day 5 demo offer) + no-show (Day 0 recording + FOMO).
12. **Plan repurposing** — blog post (Wk1), quote cards (Wk1-2), short clips (Wk1), podcast extract (Wk2).
13. **Define metrics review template** — registrations vs target, attendance rate, watch time, Q&A volume, demo requests, pipeline.
14. **Self-evaluate** — positioning differentiated? content time-realistic? all copy written? no invented speakers/metrics? Fix or flag.
15. **Present at Gate 2** — full brief, run-of-show, promotion calendar, follow-up. Suggest chains: `demo-script`, `email-nurture`, `landing-page-copy`.

Detailed phase-by-phase substeps and checkpoints in `references/process-detail.md`.

## What good looks like

**References**
- `references/format-templates.md` — selection matrix + 45-min thought leadership / 60-min panel / 30-min demo timings + default 45-min content allocation
- `references/process-detail.md` — Phase 1-4 substeps and checkpoints (strategic planning, content development, promotion, post-webinar)
- `references/process-flowchart.md` — full ASCII lifecycle diagram, Exa research substrate, suggested skill-update format
- `references/output-template.md` — full standard output: overview, positioning, speakers, content outline, run-of-show, engagement, promotion calendar (3wk/2wk/1wk/day-of), promotional copy (registration + 4 emails + LinkedIn), follow-up sequences (attendee + no-show), repurposing plan, success metrics, iteration prompts
- `references/quality-and-guardrails.md` — anti-hallucination rules, pre-delivery checklist, self-evaluation questions, review gate, input requirements, triggers/anti-triggers, skill auto-update protocol, integration map, MCP data integration, changelog

**Examples**
- `references/examples/` — saved when user signals positive outcome ("webinar was a hit", quick approval). Filename `[date]-[webinar-slug].md`.

**Evaluations** — self-eval gate before delivery: positioning clear+differentiated, content fits time, all copy written, no invented speakers/metrics, run-of-show complete with owners, promotion calendar covers full timeline, follow-up sequences both attendee + no-show, repurposing plan defined. Failures → fix or flag with `[CONFIRM]` / `[TARGET]`.

## Push

Output goes to client's `content/execution/MMYY-{webinar-slug}-brief.md` (or lifecycle/execution if positioned as nurture event). Chain forward: `demo-script` (for demo content), `email-nurture` (follow-up sequences), `landing-page-copy` (registration page), `linkedin-content` (promotional posts). Upstream context: `messaging`, `content-strategy`, `expert-pov`, `storytelling`. Research substrate: Exa per `.claude/rules/exa-protocol.md` (`web_search_exa` for topic + competitor event validation; cite `[VERIFIED: exa_search, {url}, accessed YYYY-MM-DD]`). Granola `search_meetings` if planning meetings exist.
