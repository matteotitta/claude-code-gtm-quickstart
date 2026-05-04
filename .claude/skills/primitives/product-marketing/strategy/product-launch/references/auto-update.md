# Auto-update protocol — feedback signals + pattern detection

Capture feedback after each launch run so the skill learns from real engagements.

---

## Feedback signal detection

| User signal | Interpretation | Action |
|-------------|----------------|--------|
| "This is great" / "Perfect" | High quality match | Log as positive pattern, offer reference example save |
| "We don't do [asset type]" | Asset not needed | Log asset to make optional |
| "Add [asset] to the checklist" | Missing asset | Log new asset type to add |
| "Timeline is too [long/short]" | Timeline mismatch | Log timeline preference |
| "Good launch structure" | Effective framework | Capture as reference |
| "[Asset] performed well/poorly" | Asset feedback | Log asset effectiveness |
| Heavy edits to plan | Implicit correction | Analyze diff, learn pattern |
| Quick approval (<2 min) | Output was good | Reinforce patterns used |

---

## Output as reference example

When user approves launch plan or expresses satisfaction:
1. Ask: "Want me to save this as a reference example for future launches?"
2. If yes: Capture key elements (launch tier, asset mix, timeline, what worked)
3. Store pattern: `examples/example-launch-[product]-[tier].md`

---

## Improvement tracking

After each skill use, capture:
- [ ] Was tier selection appropriate for the product?
- [ ] Which assets were actually used vs. planned?
- [ ] Did deployment follow the planned timeline?
- [ ] Any new launch patterns discovered?
- [ ] What would have made the launch more effective?

---

## Pattern detection rules

**Trigger:** Same feedback received 3+ times
**Action:**
1. Surface to user: "I've noticed [pattern]. Should I update the skill?"
2. If approved: Propose specific SKILL.md edit
3. Log in changelog

**Common patterns to watch:**

| Pattern | Frequency trigger | Suggested update |
|---------|------------------|------------------|
| "Tier doesn't fit our product" | 3+ occurrences | Refine tier selection criteria |
| "Missing [asset type]" | 3+ occurrences | Add to asset checklist |
| "Timeline unrealistic" | 3+ occurrences | Adjust default timeline templates |
| "Don't need [asset]" | 3+ occurrences | Make asset optional or remove |

---

## Suggested skill update format

```markdown
## Skill Update Suggestion

**Skill:** product-launch
**Date:** YYYY-MM-DD
**Trigger:** [What prompted this suggestion]

**Current behavior:**
[What the skill does now]

**Suggested change:**
[What should change]

**Rationale:**
[Why this improves the skill]

**Implementation:**
- [ ] Update tier framework
- [ ] Modify asset checklist
- [ ] Adjust timeline templates
- [ ] Update changelog
```
