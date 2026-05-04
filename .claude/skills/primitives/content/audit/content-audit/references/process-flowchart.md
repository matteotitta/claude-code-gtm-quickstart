# Content audit — process flowchart

Visual ASCII flowchart of the full audit execution path. Hoisted from the pre-slim SKILL.md (`Process Flowchart` section).

## Overview

```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│   INPUT     │───▶│  DISCOVER   │───▶│   SCRAPE    │───▶│  ANALYZE    │───▶│ SYNTHESIZE  │───▶│   REVIEW    │
│ VALIDATION  │    │  CHANNELS   │    │  CONTENT    │    │  CHANNELS   │    │   REPORT    │    │   & CHAIN   │
└─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘
```

## Detailed Steps

```
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ INPUT VALIDATION                                                                             │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ Required: Company name, website URL                                                          │
│ Recommended: Newsletter URL, LinkedIn page/profile, YouTube channel, Luma/Eventbrite page    │
│ Optional: API access, time range, content team size, content goals                           │
│ → If missing: Ask for at least newsletter OR LinkedIn URL                                    │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ PHASE 1: CHANNEL DISCOVERY & SETUP                                                           │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ Discover content channels (footer, navigation, search)                                     │
│ □ Confirm channel access and identify rate limits                                            │
│ □ Establish audit scope (time range, priority channels)                                      │
│ ✓ Checkpoint: All channels discovered, access confirmed, scope defined                       │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ PHASE 2-5: CHANNEL-BY-CHANNEL AUDIT                                                          │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ Newsletter/Blog: Fetch content, analyze cadence, topics, formats, quality signals          │
│ □ LinkedIn: Fetch posts, analyze cadence, types, topics, engagement, voice                   │
│ □ YouTube: Fetch channel data, analyze cadence, content types, production quality            │
│ □ Events: Fetch events, analyze cadence, topics, community signals                           │
│ ✓ Checkpoint: Each channel audited with cadence, topics, formats, quality assessed           │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ PHASE 6: CROSS-CHANNEL SYNTHESIS                                                             │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ Calculate total content volume and per-channel breakdown                                   │
│ □ Assess aggregate pillar mix vs. 40/25/25/10 target                                         │
│ □ Identify content gaps, consistency issues, success patterns                                │
│ □ Generate recommendations (quick wins, strategic, long-term)                                │
│ □ Assign audit scores (volume, consistency, quality, gaps)                                   │
│ ✓ Checkpoint: Synthesis complete, scorecard assigned, recommendations generated              │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ SELF-EVALUATION                                                                              │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ All channels discovered and documented?                                                    │
│ □ Specific numbers (not vague descriptions)?                                                 │
│ □ Sources linked for key findings?                                                           │
│ □ No invented metrics or assumptions?                                                        │
│ → If issues: Note data access limits and verification needed                                 │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌────────────────────────────────────────────┬────────────────────────────────────────────────┐
│ REVIEW GATE: Level 2 (Spot Check)          │ CHAIN SUGGESTIONS                              │
├────────────────────────────────────────────┼────────────────────────────────────────────────┤
│ Present: Executive summary, scorecard,     │ → content-strategy (build strategy from audit) │
│          channel audits, recommendations   │ → tov-guidelines (voice patterns analysis)     │
│ Actions: [Approve] [Dive deeper] [Expand]  │ → competitor-research (comparative analysis)   │
└────────────────────────────────────────────┴────────────────────────────────────────────────┘
```
