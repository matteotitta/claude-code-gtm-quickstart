# Content audit — iteration prompts and skill auto-update

Hoisted from pre-slim SKILL.md (`Iteration Prompts`, `Post-Output: Iteration Prompts`, `Skill Auto-Update Protocol` sections, lines 900–1119). Use post-delivery to capture feedback signals and improve the skill.

---

## Iteration Prompts

After reviewing the audit, consider:
1. "Should I run the content-strategy skill using these findings?"
2. "Want me to dive deeper on any channel?"
3. "Should I analyze competitor content for comparison?"
4. "Want me to create a TOV analysis from the voice patterns found?"

### Refinement Prompts
1. "Want me to dive deeper on any specific channel?"
2. "Should I expand the topic analysis with more samples?"
3. "Want more specific recommendations for a priority area?"

### Expansion Prompts
1. "Ready to run content-strategy skill with these findings?"
2. "Should I create a TOV analysis from the voice patterns?"
3. "Want me to audit competitor content for comparison?"

### Quality Prompts
1. "Any findings that seem inconsistent with your knowledge?"
2. "Should I verify any specific data points?"
3. "Missing any channels I should add?"

---

## Skill Auto-Update Protocol

### Feedback Signal Detection

| User Signal | Interpretation | Action |
|-------------|----------------|--------|
| "Missing [channel]" | Coverage gap | Log new channel to discover |
| "[Metric] is wrong" | Data accuracy issue | Log and verify data source |
| "Need more depth on [X]" | Depth preference | Log depth preference |
| "Good format analysis" | Success pattern | Capture as pattern |
| "Scoring seems off" | Calibration issue | Log scoring calibration |
| Quick approval with few edits | Strong output | Reinforce patterns used |
| Heavy edits | Implicit correction | Analyze diff, learn pattern |

### Output as Reference Example

When user approves output with positive signal ("thorough audit", quick approval):

1. **Ask:** "This content audit met your expectations. Want me to save it as a reference example?"

2. **If approved:**
   - Extract the output (anonymize if requested)
   - Save to `/claude skills/content-skills/content-audit/examples/[date]-[client-slug].md`
   - Update "What Good Looks Like" section with link to new example
   - Add to reference files table with status "✓ Example"

### Improvement Tracking

After each skill use, capture:

- [ ] Which channels were accessible?
- [ ] Full vs. limited access per channel?
- [ ] Were any APIs provided?
- [ ] Did findings translate well to content-strategy?
- [ ] Did output match user expectations on first pass?

### Pattern Detection Rules

**Trigger:** Same feedback received 3+ times

**Action:**
1. Surface to user: "I've noticed [pattern] in content audit feedback. Should I update the skill to [specific change]?"
2. If approved: Propose specific SKILL.md edit
3. Log in changelog with feedback reference

**Common Patterns to Watch:**

| Pattern | Frequency Trigger | Suggested Update |
|---------|------------------|------------------|
| "Missing channel X" | 3+ occurrences | Add channel to standard audit |
| "Scoring off" | 3+ occurrences | Recalibrate scoring framework |
| "Need more depth" | 3+ occurrences | Increase default analysis depth |

### Suggested Skill Update Format

```markdown
## Proposed Skill Update

**Trigger:** [What feedback pattern triggered this]
**Section:** [Which skill section to update]
**Current:** [Current text/behavior]
**Proposed:** [New text/behavior]
**Rationale:** [Why this improves the skill]
```
