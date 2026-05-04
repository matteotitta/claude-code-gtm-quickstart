# Worked examples + reference example format

What "good" positioning looks like, plus the format used for capturing approved outputs as reference examples.

---

## Example: B2B SaaS positioning for a contract management startup

**Current positioning (failing clarity test):**
- H1: "Streamline your legal operations"
- H2: "The platform for modern legal teams"
- Result: FAIL — doesn't answer tool replacement OR task help

**Recommended positioning:**

**Strategy:** Category positioning (contract management is known)

**Differentiator:** AI-powered review that catches 95% of issues in 10 minutes vs. 2 hours of manual review

**Homepage hero recommendation:**
- H1: "Contract review in 10 minutes, not 2 hours"
- H2: "AI-powered contract management for legal teams drowning in redlines"
- Result: PASS — answers "which tasks" clearly

---

## Reference Example Format

When user approves output (explicit "this is great" or quick approval), save to `references/examples/[date]-[client-slug].md` using this format:

```markdown
<!--
REFERENCE EXAMPLE
Skill: positioning
Generated: YYYY-MM-DD
Client: [client name or "Anonymized"]
Quality Rating: Approved by user
-->

# Example: [Brief description of what makes this positioning effective]

## Context

- **Client type:** [Industry, stage, funding, ACV]
- **Request:** [What user originally asked for]
- **Why this worked:** [Key success factors]

## Positioning Summary

- **Strategy:** [Category / Problem-Use Case]
- **Primary anchor:** [X]
- **Secondary anchor:** [Y]
- **Key differentiator:** [Z]

## Full Output

[Complete positioning output as delivered]

---

## Learning Notes

- [Pattern 1 that made this effective]
- [Pattern 2 to replicate]
- [Any caveats or context-specific factors]
```

---

## Capture protocol

1. **Ask:** "This positioning met your expectations. Want me to save it as a reference example for this skill?"

2. **If approved:**
   - Extract the full positioning output
   - Anonymize client-specific data if needed (or keep with permission)
   - Save to `references/examples/[date]-[client-slug].md`
   - Update "What Good Looks Like" section with link to new example
   - Add to reference files table
