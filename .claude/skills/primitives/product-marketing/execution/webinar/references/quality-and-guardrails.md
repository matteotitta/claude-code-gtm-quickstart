# Quality, guardrails, and self-evaluation

## Anti-hallucination guardrails

1. **No invented speakers.** Only include confirmed speakers.
2. **No fake metrics.** Use realistic benchmarks or mark as "[TARGET]".
3. **Mark placeholders.** Use "[CONFIRM: detail]" for unconfirmed logistics.
4. **Platform-aware.** Note platform-specific features (Zoom polls vs. Teams polls).
5. **Time-realistic.** Verify content fits in allocated time.

## Pre-delivery quality checklist

**Strategic Quality**
- Positioning is clear and differentiated
- Goals are measurable
- Target audience is specific

**Content Quality**
- Outline fits time allocation
- Engagement moments planned
- Run-of-show complete

**Promotion Quality**
- All promotional copy written
- Calendar covers full timeline
- Partner assets included (if applicable)

**Follow-Up Quality**
- Attendee sequence complete
- No-show sequence complete
- Repurposing plan defined

## Self-evaluation questions

- Positioning is clear and differentiated?
- Content outline fits time allocation?
- All promotional copy written?
- No invented speakers or fake metrics?

If issues: mark placeholders with "[CONFIRM: detail]", verify time-realistic.

## Review gate (Level 2 — Spot Check)

Present: full webinar brief, run-of-show, promotion calendar, follow-up.
Actions: [Approve] [Adjust content] [Add detail].

## Input requirements

**Required**: webinar topic, target audience, date/time, speakers.

**Optional (improves quality)**:
- Product messaging — alignment with positioning
- Co-marketing partner — partner promotion planning
- Past webinar data — benchmarks for targets
- Content assets — bonus resources to offer
- Demo environment — if live demo included
- Promotion budget — paid promotion planning

If inputs missing: ask for topic, date, and speakers; confirm if includes a live demo.

## Triggers (invoke this skill when)

"Plan a webinar" / "Webinar brief" / "Webinar strategy" / "Webinar promotion plan" / "Run-of-show for webinar" / "Webinar content outline" / "Virtual event brief" / "Webinar follow-up plan" / "Co-marketing webinar" / "Partner webinar".

Do NOT invoke when:
- Full presentation slides → presentation tools
- Demo script only → `demo-script` skill
- Email sequence only → `email-nurture` skill
- Landing page only → `landing-page-copy` skill

## Skill auto-update protocol

**Feedback signals**

| User Signal | Interpretation | Action |
|-------------|----------------|--------|
| "Run-of-show needs more detail" | Depth preference | Expand run-of-show template |
| "Promotion calendar is too aggressive" | Timing issue | Adjust timing recommendations |
| "Missing [platform] considerations" | Coverage gap | Add platform-specific notes |
| "Follow-up sequence needs adjustment" | Template issue | Refine post-webinar email templates |
| "Format template doesn't fit" | Format gap | Add new format to template library |
| Quick approval with few edits | Strong output | Reinforce patterns used |
| Heavy edits | Implicit correction | Analyze diff, learn pattern |
| "Webinar was a hit" | Success signal | Capture pattern with details |

**Output as reference example**

When user approves with positive signal:
1. Ask: "Want me to save it as a reference example?"
2. If approved: extract output (anonymize if requested), save to `references/examples/[date]-[webinar-slug].md`, update SKILL.md References section.

**Improvement tracking** — after each use, capture: most useful format type, emphasized promotion channels, run-of-show detail level needed, follow-up sequence preferences, partner promotion requirements, first-pass match to expectations.

**Pattern detection** — same feedback 3+ times triggers proposed SKILL.md edit:

| Pattern | Trigger | Suggested Update |
|---------|---------|------------------|
| "Run-of-show too sparse" | 3+ occurrences | Expand default detail |
| "Promo calendar too aggressive" | 3+ occurrences | Adjust default timing |
| "Missing platform X" | 3+ occurrences | Add platform to template |

## Integration with other skills

| Skill | Relationship | Usage |
|-------|--------------|-------|
| **demo-script** | Provides input | Demo content for webinar |
| **email-nurture** | Uses output | Follow-up sequences |
| **landing-page-copy** | Uses output | Registration page copy |
| **linkedin-content** | Uses output | Promotional posts |
| **storytelling** | Provides input | Campaign narrative context |

## MCP data integration

Level 3 — Content Execution (topic-specific pulls).

| Source | What to pull | Tool | When |
|--------|-------------|------|------|
| Exa | Topic validation, competitor events | `web_search_exa` | Always |
| Granola | Meeting context for webinar planning | `search_meetings` | If planning meetings exist |

Fallback (no MCP): WebSearch for topic + competitor events; user-provided meeting notes.

## Changelog

| Version | Date | Changes |
|---------|------|---------|
| 1.0 | 2026-01-17 | Initial skill creation |
