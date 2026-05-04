# Content strategy — quality, governance, and skill operations

Pre-delivery quality checks, anti-hallucination guardrails, iteration prompts, integration with sibling skills, gotchas, the auto-update protocol, and the changelog. The skill's main `## What good looks like` and `## Push` sections in SKILL.md point here.

---

## Anti-hallucination guardrails

1. **Derive from inputs.** All topics, pillars, and themes must trace to ICP, messaging, or competitor research
2. **Don't invent metrics.** If current baselines unknown, mark as "Baseline TBD"
3. **Realistic volume.** Flag if recommendations exceed typical capacity
4. **Source recommendations.** Note which input (ICP, messaging, TOV) drove each recommendation
5. **Mark gaps.** Explicitly note missing inputs and their impact

---

## Quality checklist (pre-delivery)

### Strategy quality
- [ ] Goals defined with measurable metrics
- [ ] Core topics derived from ICP/messaging (not invented)
- [ ] Differentiators are specific and defensible
- [ ] Audience segments align with ICP research

### Pillars & funnel quality
- [ ] Service-based pillars defined (not generic Educational/Personal/Promotional)
- [ ] AI/automation throughline articulated
- [ ] Funnel stages (TOFU/MOFU/BOFU) mapped with content types
- [ ] Pillar × funnel matrix created
- [ ] Mix percentages add to 100% (both by pillar AND by funnel stage)
- [ ] Monthly counts calculated for both dimensions
- [ ] Formats are specific and actionable with funnel stage assignment

### Channel quality
- [ ] Basic channels (LinkedIn, Blog/Newsletter) included
- [ ] Bonus channels justified with rationale
- [ ] Anchor content defined with cascade
- [ ] Metrics defined per channel

### Execution quality
- [ ] Volume targets realistic for context
- [ ] Weekly cadence is actionable
- [ ] First 90 days themes build logically
- [ ] Recurring series are repeatable

---

## Post-output: Iteration prompts

After delivering output, proactively offer:

### Refinement prompts
1. "Want me to adjust the content mix ratios?"
2. "Should I add/remove any channels?"
3. "Want different themes for the 90-day plan?"

### Expansion prompts
1. "Should I create the detailed LinkedIn content calendar?"
2. "Want me to develop the podcast episode plan?"
3. "Should I expand any pillar with more topic ideas?"

### Quality prompts
1. "Are the volume targets realistic for your team?"
2. "Does the cadence match founder availability?"
3. "Any topics that should be added or removed?"

---

## Integration with other skills

| Skill | Relationship | Usage |
|-------|--------------|-------|
| **icp-behavioural** | Provides input | Audience segments, personas, pain points |
| **product-messaging** | Provides input | Positioning, capabilities, differentiators |
| **competitor-research** | Provides input | Content gaps, competitor analysis |
| **tov-guidelines** | Provides input | Voice, vocabulary, patterns |
| **brand-kit** | Provides input | Visual guidelines for content |
| **aeo-strategy** | Uses output | Add SEO/AEO research layer, keyword gaps, and article queue for website/blog |
| **content-operations** | Uses output | Operationalize strategy with serialization, pipeline, calendar |
| **linkedin-content** | Uses output | Execute LinkedIn pillar of strategy |
| **youtube-scripts** | Uses output | Execute video pillar of strategy |
| **product-launch** | Related | Launch content fits within strategy |

---

## Gotchas

- **Generic pillars**: Produces pillars like "thought leadership", "product updates", "industry trends" that any company could use → Pillars must be grounded in the client's specific expertise, ICP pains, and competitive positioning.
- **Channel-first thinking**: Starts with "we should be on LinkedIn, YouTube, and blog" instead of starting with audience and message → Start with ICP information diet, then match channels to where that audience actually consumes content.
- **No prioritization**: Presents all pillars and channels as equally important → Rank by expected impact and effort. Not everything can be priority 1.
- **Missing frequency commitments**: Describes what to publish but not how often → Every channel needs a realistic publishing cadence that the team can actually sustain.
- **Disconnected from sales funnel**: Content pillars don't map to funnel stages → Each pillar should have clear TOFU/MOFU/BOFU intent and connect to the client's conversion path.

---

## Skill auto-update protocol

### Feedback signal detection

| User Signal | Interpretation | Action |
|-------------|----------------|--------|
| "Volume is too high/low" | Capacity mismatch | Log capacity preference |
| "Add [channel]" | Coverage gap | Log channel addition |
| "Remove [pillar]" | Pillar doesn't fit | Log pillar modification |
| "Good example week" | Success pattern | Capture as reference |
| "[Topic] doesn't fit" | Topic mismatch | Log topic refinement |
| Quick approval with few edits | Strong output | Reinforce patterns used |
| Heavy edits | Implicit correction | Analyze diff, learn pattern |

### Output as reference example

When user approves output with positive signal ("good strategy", quick approval):

1. **Ask:** "This content strategy met your expectations. Want me to save it as a reference example?"

2. **If approved:**
   - Extract the output (anonymize if requested)
   - Save to `examples/[date]-[client-slug].md`
   - Update "What good looks like" section with link to new example
   - Add to reference files table with status "✓ Example"

### Improvement tracking

After each skill use, capture:

- [ ] Which prerequisite skills were available?
- [ ] Was volume recommendation realistic?
- [ ] Which bonus channels were included/excluded?
- [ ] Which sections needed the most refinement?
- [ ] Did output match user expectations on first pass?

### Pattern detection rules

**Trigger:** Same feedback received 3+ times

**Action:**
1. Surface to user: "I've noticed [pattern] in content strategy feedback. Should I update the skill to [specific change]?"
2. If approved: Propose specific SKILL.md edit
3. Log in changelog with feedback reference

**Common patterns to watch:**

| Pattern | Frequency Trigger | Suggested Update |
|---------|------------------|------------------|
| "Volume too high" | 3+ occurrences | Reduce default volume targets |
| "Missing channel X" | 3+ occurrences | Add channel to standard set |
| "Topics too generic" | 3+ occurrences | Add specificity requirements |

### Suggested skill update format

```markdown
## Proposed Skill Update

**Trigger:** [What feedback pattern triggered this]
**Section:** [Which skill section to update]
**Current:** [Current text/behavior]
**Proposed:** [New text/behavior]
**Rationale:** [Why this improves the skill]
```

---

## MCP data integration

**Level:** 1 — Strategy (inherits upstream, unique pulls for operational data)

**Inherits from:** icp-behavioural (personas, behavioral data), funnel-strategy (funnel stages)

### Pulls fresh

| Source | What to pull | Tool | When |
|--------|-------------|------|------|
| **GSC** | Search performance by query/page | GSC API | Always (if GSC MCP available) |
| **Slack** | Content requests and feedback | `slack_search_public` | Always |
| **GTM** | What events/conversions are tracked | `list_triggers` | If container accessible |
| **Granola** | Content planning meeting notes | `search_meetings` | If relevant discussions exist |

### Fallback (no MCP)

- WebSearch + WebFetch for search performance benchmarks
- Manual content audit for gaps
- User-provided analytics screenshots

---

## Research substrate (Exa)

**Default:** Exa, per `.claude/rules/exa-protocol.md` (auto-loaded for research, audit, competitor, ICP, AEO, content sourcing, sales prospecting work).

**Primary Exa tools for this skill:** `web_search_exa, find_similar_links_exa, /search` (and the plugin's `/search` slash command for parallel-subagent dispatch).

**Use case:** cluster research + competitor content scan.

**Tool surface during the migration window:**
- New plugin (preferred): `mcp__plugin_exa_exa__web_search_exa` (after `claude plugin i exa@claude-plugins-official`).
- Legacy MCP (still mounted): `mcp__exa__web_search_exa`.
- Both backends route to the same Exa API — they don't double-bill.

**Citation:** every Exa-derived claim uses `[VERIFIED: exa_search, {url}, accessed {YYYY-MM-DD}]` per `.claude/rules/ontology.md`.

**Quality gate (research outputs):** ≥3 sources per major claim, ≥50% `[VERIFIED]` confidence, date filter for any "recent / latest" claim, no fallback to `WebSearch` without flagging the data gap.

**Worked examples + tool catalog:** `.claude/skills/meta-skills/exa/`.

---

## Changelog

| Version | Date | Changes |
|---------|------|---------|
| 1.2 | 2026-02-11 | Broadened inputs to accept any context dimension (not just ICP + Messaging). Added Phase 6 operationalization bridge. Added content-operations to chain suggestions and integration map |
| 1.1 | 2026-01-16 | Added service-based pillars (replacing generic Educational/Personal/Promotional), TOFU/MOFU/BOFU funnel framework, pillar × funnel matrix |
| 1.0 | 2026-01-16 | Initial skill creation with v2.0 template structure |
