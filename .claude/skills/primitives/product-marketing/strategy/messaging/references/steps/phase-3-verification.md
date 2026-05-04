# Phase 3 — Verification & gaps

**Purpose:** Validate sources and document gaps. This phase converts a "draft" library (Phase 2 output) into a delivery-ready library by enforcing the Iron Law from `references/quality-gates.md`.

---

## Steps

### Step 3.1: Source verification

- Confirm every claim has URL + access date
- Confirm all quotes are verbatim (no paraphrasing)
- Assign confidence levels (High / Medium / Low) per `references/frameworks.md` ("Confidence Scoring")
- **Output:** Source verification complete

Map confidence levels to ontology attribution per `.claude/rules/ontology.md`: High → `[VERIFIED]`, Medium → `[INFERRED]`, Low → `[ESTIMATED]`.

### Step 3.2: Data gaps documentation (Component 10)

- Document missing information (which component, what's missing, expected source)
- Document low-confidence data (current value, why low confidence, how to verify)
- Document unlinked components (capability without feature link, benefit without quote, etc.)
- Provide recommendations for filling gaps
- **Output:** Complete data gaps section

### Step 3.3: Quality verification

- Run pre-delivery checklist from `references/quality-gates.md` ("Quality Checklist (Pre-Delivery)")
- Run self-evaluation protocol from `references/quality-gates.md` ("Self-Evaluation Protocol")
- Fix any issues found
- **Output:** Verified output ready

---

## Phase 3 checkpoint

Before declaring "done":

- [ ] Every data point has source URL + access date
- [ ] All quotes are verbatim
- [ ] Confidence levels assigned (High / Medium / Low) per claim
- [ ] Data gaps section documented with recommendations
- [ ] No invented content
- [ ] Pre-delivery checklist passed
- [ ] Self-evaluation self-roast questions answered honestly

---

## Anti-patterns

- ❌ Treating Phase 3 as optional cleanup — it's the difference between a useful library and a hallucinated one.
- ❌ Filling low-confidence gaps with assumptions to "make the table look complete" — mark `[UNAVAILABLE]` instead.
- ❌ Skipping the data gaps section because "everything was found" — there are always gaps; document them or someone downstream will assume completeness.
- ❌ Assigning High confidence without two cross-referencing sources for non-trivial claims (revenue, headcount, customer logos).
