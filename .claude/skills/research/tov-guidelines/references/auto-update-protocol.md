# Skill Auto-Update Protocol

How tov-guidelines learns from user feedback and saves approved outputs as reference examples.

## Feedback signal detection

| User signal | Interpretation | Action |
|-------------|----------------|--------|
| "Great guidelines" / "This captures our voice" | High quality match | Log as positive pattern, offer to save as reference |
| "Pattern is wrong" | Misidentification | Log for extraction improvement |
| "Add [pattern]" | Missing pattern category | Log new pattern to extract |
| "Voice changed" | Content drift | Flag for re-analysis |
| "Good guideline" | Specific win | Capture as pattern to replicate |
| Phase 2 approval without corrections | Strong Phase 1 | Reinforce extraction patterns |

## Output as reference example

When user approves output (explicit "great guidelines" or approval without corrections):

1. **Ask:** "These TOV guidelines met your expectations. Want me to save them as a reference example for this skill?"

2. **If approved:**
   - Extract the full TOV guidelines output (Phase 2)
   - Anonymize if sensitive (or keep with permission)
   - Save to `.claude/skills/research/tov-guidelines/references/examples/[date]-[company-slug].md`
   - Update SKILL.md "What good looks like" section with link to new example
   - Add to reference files table

### Reference example format

```markdown
<!--
REFERENCE EXAMPLE
Skill: tov-guidelines
Generated: YYYY-MM-DD
Company: [company name]
Quality Rating: Approved by user
-->

# Example: [Brief description of what makes these guidelines effective]

## Context

- **Company type:** [Industry, stage, voice style]
- **Pages analyzed:** [Count]
- **Why this worked:** [Key success factors]

## Analysis Summary

- **Pattern categories covered:** [X]/6
- **Average frequency score:** High: X | Medium: Y | Low: Z
- **Inconsistencies resolved:** [Count]

## Full Output

[Complete TOV guidelines output as delivered]

---

## Learning Notes

- [Pattern extraction that worked well]
- [Frequency scoring approach]
- [Any company-specific factors]
```

## Improvement tracking

After each skill use, note:
1. **Scrape coverage:** How many pages analyzed?
2. **Pattern accuracy:** User corrections to Phase 1?
3. **Gap resolution:** How many gaps filled by user?
4. **Guideline usefulness:** User feedback on Phase 2?

## Pattern detection rules

When same feedback received 3+ times for this skill:

1. **Surface pattern:** "I've noticed [pattern] in TOV guidelines feedback. Should I update the skill to [proposed change]?"
2. **If approved:** Propose specific SKILL.md edit with current behavior + proposed change + affected sections.
3. **Log in changelog** with feedback reference.

Common patterns to watch for:
- Users frequently correcting person usage patterns → Improve person detection
- Frequency scores often disputed → Recalibrate calculation method
- Certain pattern categories consistently thin → Enhance extraction for those categories
- Phase 1 → Phase 2 gaps not filled → Improve gap question generation

## Suggested skill update format

```markdown
## Proposed Skill Update

**Skill:** tov-guidelines
**Triggered by:** [feedback pattern]
**Frequency:** [X occurrences]

**Current behavior:**
[What the skill does now]

**Proposed change:**
[Specific modification]

**Implementation:**
[Exact lines to change in SKILL.md]

**Approve this update?** [Yes/No]
```

## Iteration prompts (post-output)

After delivering output, proactively offer:

**Refinement:**
1. Should I scrape additional pages for more data?
2. Want me to resolve any flagged inconsistencies?
3. Should I expand the vocabulary section?

**Expansion:**
1. Ready to create content using these guidelines?
2. Should I analyze competitor voice for comparison?
3. Want me to create an LLM prompt version of these guidelines?

**Quality:**
1. Any patterns that don't match your experience?
2. Should I verify any findings with additional pages?
3. Want me to add more before/after examples?
