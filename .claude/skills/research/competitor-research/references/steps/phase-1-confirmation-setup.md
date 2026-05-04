# Phase 1: Confirmation & setup

**Purpose:** Verify competitor identity and establish research scope.

---

## Steps

1. **Step 1.1: Confirm competitor identity**
   - Verify exact company/product name
   - Confirm website URL is correct
   - Check for name disambiguation issues
   - **Output:** Confirmed competitor details

2. **Step 1.2: Determine research mode**
   - Default: Single competitor deep dive (13 dimensions)
   - Alternative: Comparison matrix (3-6 competitors, core dimensions)
   - **Output:** Research mode confirmed

---

## Phase 1 checkpoint

- [ ] Competitor name unambiguous
- [ ] Website URL verified
- [ ] Research mode selected

---

## Disambiguation reference

Many company names are ambiguous. Common issues:

| Ambiguous Name | Possible Meanings |
|----------------|-------------------|
| Bolt | Ride-sharing, Fintech, Bolt.new (AI coding) |
| Cursor | AI code editor, Design tool |
| Base | Database, Base44 (AI app builder) |
| Linear | Issue tracking, Other |

**Resolution approach:**

1. Use domain-qualified searches: `bolt.new` not `bolt`
2. Include category context: `Cursor AI coding` not `Cursor`
3. Check for parent companies: Bolt.new is part of StackBlitz
4. When in doubt, confirm with user before starting

---

## Required vs optional inputs

### Required

| Input | Description | Source |
|-------|-------------|--------|
| **Competitor name** | Exact company/product name | User provides |
| **Website URL** | Competitor's website | User provides or confirm |

### Optional (improve quality)

| Input | How it helps |
|-------|--------------|
| Market category | Helps with disambiguation and keyword selection |
| Client context | Current positioning helps sharpen analysis |
| Specific questions | Focus research on areas of interest |
| Research depth | Deep (default) or comparison matrix |

### Input validation

Before proceeding, verify:

- [ ] Competitor name is unambiguous (if not, confirm with user)
- [ ] Website URL is correct and accessible
- [ ] Research mode confirmed (single deep dive or comparison matrix)

**If inputs are missing:** Ask for website URL. If name is ambiguous (e.g., "Bolt" could be multiple companies), confirm which competitor.
