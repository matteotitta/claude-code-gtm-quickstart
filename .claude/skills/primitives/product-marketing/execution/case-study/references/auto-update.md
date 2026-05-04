# Auto-update protocol — feedback signals + pattern detection

Capture feedback after each case study run so the skill learns from real engagements.

---

## Feedback signal detection

| User signal | Interpretation | Action |
|-------------|----------------|--------|
| "This quote doesn't sound authentic" | Voice issue | Refine quote extraction guidelines |
| "The metrics need more context" | Clarity issue | Add context requirements to metrics format |
| "Missing [section type]" | Coverage gap | Add section to standard template |
| "Hero statement is too long" | Format issue | Tighten word count constraint |
| "Case study tone is off" | Voice mismatch | Capture preferred tone for future |
| Quick approval with few edits | Strong output | Reinforce patterns used |
| Heavy edits | Implicit correction | Analyze diff, learn pattern |
| "Customer loved it" | Success signal | Capture successful pattern with details |

---

## Output as reference example

When user approves output with positive signal ("customer loved it", quick approval, positive feedback):

1. **Ask:** "This case study met your expectations. Want me to save it as a reference example?"

2. **If approved:**
   - Extract the output (anonymize if requested)
   - Save to `examples/[date]-[customer-slug].md`
   - Update "What good looks like" section in SKILL.md with link to new example
   - Add to reference files table

---

## Improvement tracking

After each skill use, capture:
- [ ] What customer data was most useful?
- [ ] Which sections required the most revision?
- [ ] What quotes landed vs. needed rework?
- [ ] What metrics presentation resonated?
- [ ] Any new derivative asset formats requested?
- [ ] Did output match user expectations on first pass?

---

## Pattern detection rules

**Trigger:** Same feedback received 3+ times

**Action:**
1. Surface to user: "I've noticed [pattern] in case study feedback. Should I update the skill to [specific change]?"
2. If approved: Propose specific SKILL.md edit
3. Log in changelog with feedback reference

**Common patterns to watch:**

| Pattern | Frequency trigger | Suggested update |
|---------|------------------|------------------|
| "Quotes too polished" | 3+ occurrences | Add authenticity guidelines |
| "Hero too long" | 3+ occurrences | Reduce word limit default |
| "Missing metrics context" | 3+ occurrences | Add context requirements |

---

## Suggested skill update format

```markdown
## Proposed Skill Update

**Trigger:** [What feedback pattern triggered this]
**Section:** [Which skill section to update]
**Current:** [Current text/behavior]
**Proposed:** [New text/behavior]
**Rationale:** [Why this improves the skill]
```
