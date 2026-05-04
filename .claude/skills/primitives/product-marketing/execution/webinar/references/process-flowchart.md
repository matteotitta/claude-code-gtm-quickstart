# Webinar process flowchart (full ASCII)

Original lifecycle visualisation. Use as the reference diagram when explaining the skill flow to a stakeholder.

## Overview

```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│   INPUT     │───▶│  STRATEGIC  │───▶│  CONTENT    │───▶│ PROMOTION   │───▶│   REVIEW    │
│ VALIDATION  │    │  PLANNING   │    │   & RUN     │    │ & FOLLOW-UP │    │   & CHAIN   │
└─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘
```

## Detailed steps (full)

```
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ INPUT VALIDATION                                                                             │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ Required: Webinar topic, target audience, date/time, speakers                                │
│ Optional: Product messaging, co-marketing partner, past webinar data, demo environment       │
│ → If missing: Ask for topic, date, speakers; confirm if includes live demo                   │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ PHASE 1: STRATEGIC PLANNING                                                                  │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ Define webinar positioning (topic angle, promise, why now, differentiator)                 │
│ □ Set goals and metrics (registrations, attendance rate, engagement, pipeline)               │
│ □ Select format (solo presentation, panel, interview, demo + Q&A, workshop)                  │
│ ✓ Checkpoint: Positioning defined, goals set, format selected                                │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ PHASE 2: CONTENT DEVELOPMENT                                                                 │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ Create content outline (intro 5min, context 10min, core 20min, application 5min, Q&A 5min) │
│ □ Write speaker prep materials (talking points, transitions, Q&A anticipation)               │
│ □ Create run-of-show (tech check T-30, speakers ready T-5, go live, section timings)         │
│ □ Plan engagement moments (polls, Q&A prompts, resource drops, live reactions)               │
│ ✓ Checkpoint: Content outline complete, speaker prep ready, run-of-show documented           │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ PHASE 3: PROMOTION STRATEGY                                                                  │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ Build promotion calendar (T-3 weeks through day-of, all channels)                          │
│ □ Write promotional copy (registration page, 3-4 emails, social posts)                       │
│ □ Design registration page brief (headline, bullets, speaker bios, form fields)              │
│ □ Plan partner promotion if co-marketing (partner channels, assets needed)                   │
│ ✓ Checkpoint: Promotion calendar complete, all copy written, landing page brief ready        │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ PHASE 4: POST-WEBINAR                                                                        │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ Design follow-up sequence (Day 0: recording, Day 2: takeaway, Day 5: demo offer)           │
│ □ Plan repurposing (blog post, LinkedIn posts, short clips, podcast audio)                   │
│ □ Define success metrics review template                                                     │
│ ✓ Checkpoint: Follow-up sequence written, repurposing plan created, metrics template ready   │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ SELF-EVALUATION                                                                              │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ Positioning is clear and differentiated?                                                   │
│ □ Content outline fits time allocation?                                                      │
│ □ All promotional copy written?                                                              │
│ □ No invented speakers or fake metrics?                                                      │
│ → If issues: Mark placeholders with "[CONFIRM: detail]", verify time-realistic               │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌────────────────────────────────────────────┬────────────────────────────────────────────────┐
│ REVIEW GATE: Level 2 (Spot Check)          │ CHAIN SUGGESTIONS                              │
├────────────────────────────────────────────┼────────────────────────────────────────────────┤
│ Present: Full webinar brief, run-of-show,  │ → demo-script (demo content for webinar)       │
│          promotion calendar, follow-up     │ → email-nurture (follow-up sequences)          │
│ Actions: [Approve] [Adjust content] [Add]  │ → landing-page-copy (registration page)        │
└────────────────────────────────────────────┴────────────────────────────────────────────────┘
```

## Research substrate (Exa)

Default per `.claude/rules/exa-protocol.md` (auto-loaded for research, audit, competitor, ICP, AEO, content sourcing, sales prospecting work).

Primary Exa tool: `web_search_exa`. Use case: topic + audience research.

Tool surface (migration window):
- New plugin (preferred): `mcp__plugin_exa_exa__web_search_exa` (after `claude plugin i exa@claude-plugins-official`).
- Legacy MCP (still mounted): `mcp__exa__web_search_exa`.
- Both backends route to the same Exa API — no double-bill.

Citation: every Exa-derived claim uses `[VERIFIED: exa_search, {url}, accessed {YYYY-MM-DD}]` per `.claude/rules/ontology.md`.

Quality gate (research outputs): ≥3 sources per major claim, ≥50% `[VERIFIED]` confidence, date filter for any "recent / latest" claim, no fallback to `WebSearch` without flagging the data gap.

Worked examples + tool catalog: `.claude/skills/meta-skills/exa/`.

## Suggested skill update format

```markdown
## Proposed Skill Update

**Trigger:** [What feedback pattern triggered this]
**Section:** [Which skill section to update]
**Current:** [Current text/behavior]
**Proposed:** [New text/behavior]
**Rationale:** [Why this improves the skill]
```
