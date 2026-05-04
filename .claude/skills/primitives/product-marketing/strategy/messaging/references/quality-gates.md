# Quality gates — messaging library

The Iron Law, red flags, anti-hallucination guardrails, pre-delivery checklist, and self-evaluation protocol. Run all of these before declaring a messaging library "done".

---

## The Iron Law

**NO MESSAGING OUTPUT WITHOUT SOURCE VERIFICATION.**

Every claim needs URL + access date. Every quote is verbatim. Every consequence chain traces 1st→2nd→3rd order.

**No exceptions:**

- "I'll verify sources after" → Verification happens during extraction, not after
- "This is common knowledge" → Still needs a source URL + date
- "I paraphrased for clarity" → Verbatim only, or mark "Not available"
- "The user is in a hurry" → Rushed work = invented data = useless output
- "I can infer this benefit" → Inference ≠ evidence. Mark confidence level explicitly

---

## Red Flags (Stop and Verify)

- About to write benefit without customer quote → STOP. Mark "Not available" instead.
- About to include metric without source URL → STOP. Add citation or mark "[Data needed]".
- About to skip consequence chain → STOP. Trace 1st→2nd→3rd order impact.
- About to paraphrase testimonial → STOP. Use verbatim text only.
- About to assume ICP pain point → STOP. Cite source or mark "Inferred — needs validation".
- About to use generic feature name → STOP. Find exact branded feature name from website.

---

## Anti-Hallucination Guardrails

1. **Never invent data.** If data cannot be found, mark explicitly as "Not available — [reason]"
2. **Never paraphrase quotes.** Use exact verbatim text only, or mark "No testimonial found"
3. **Never estimate metrics.** Mark missing stats as "[Data point needed]"
4. **Use "Example:" prefix** for illustrative scenarios not from real inputs
5. **Cite every claim.** Include URL and access date for all external claims
6. **Mark confidence levels.** High/Medium/Low with evidence type

---

## Anti-Examples (What to Avoid)

| Bad Pattern | Why It's Bad | Better Approach |
|-------------|--------------|-----------------|
| "Industry studies show 80% of teams..." | Invented statistic | Mark "Not available" or cite actual source |
| Paraphrased customer quote | Violates verbatim rule | Use exact quote or mark "Quote not available" |
| Pain point without consequence chain | Missing strategic context | Trace through 1st→2nd→3rd order impacts |
| Capability without feature link | Missing component connection | Always link to branded feature name |
| "Users feel empowered" (no source) | Unsubstantiated claim | Cite testimonial or mark "Inferred from..." |

---

## Quality Checklist (Pre-Delivery)

### Content Quality
- [ ] All 10 messaging components present in correct order
- [ ] Status quo includes Manual/DIY + at least one competitive alternative
- [ ] Every pain point has consequence chain (1st → 2nd → 3rd order)
- [ ] Every pain point links forward to a capability
- [ ] Every capability links to a branded feature name
- [ ] Every functional benefit includes customer quote or explicit "Not available"
- [ ] Emotional & social benefits section complete (2 + 2)
- [ ] Cost of inaction section complete (2-3 statements)
- [ ] Common objections section complete (3-5 with response frameworks)
- [ ] Core messaging blocks complete (tagline, elevator pitch, proof point)

### Source Quality
- [ ] Every quote is verbatim with source URL and access date
- [ ] Every descriptor has source URL and access date
- [ ] Confidence levels assigned with reasoning
- [ ] No invented, assumed, or paraphrased content

### Format Quality
- [ ] Output header includes skill name, date, font specification
- [ ] Correct heading hierarchy (H1 → H2 → H3)
- [ ] Consistent formatting throughout
- [ ] Data gaps section completed with recommendations
- [ ] Source appendix includes ALL referenced URLs

---

## Self-Evaluation Protocol

After generating product messaging output, automatically run these checks:

### Completeness Check

- [ ] All 10 messaging components present in correct order?
- [ ] Status quo includes Manual/DIY + at least one competitive alternative?
- [ ] Every pain point has consequence chain (1st → 2nd → 3rd order)?
- [ ] Every pain point links forward to a capability?
- [ ] Every capability links to a branded feature name?
- [ ] Every functional benefit includes customer quote or explicit "Not available"?
- [ ] Emotional & social benefits complete (2 + 2)?
- [ ] Core messaging blocks complete (tagline, elevator pitch, proof point)?

### Evidence Quality Check

- [ ] Every quote is verbatim with source URL and access date?
- [ ] Every descriptor has source URL and access date?
- [ ] Confidence levels assigned with reasoning?
- [ ] No invented, assumed, or paraphrased content?

### Guardrail Check

- [ ] No invented statistics or metrics?
- [ ] No paraphrased quotes (all verbatim)?
- [ ] "Not available" used for missing data (not filled with assumptions)?
- [ ] All consequence chains complete (not cut short)?

### Self-Roast Questions

Ask internally:

1. "If the user verified every source URL, would all claims hold up?"
2. "Are my consequence chains actually traced through 3 orders, or did I shortcut?"
3. "Did I use exact branded feature names, or did I paraphrase?"
4. "Are the customer quotes truly verbatim, or did I clean them up?"
5. "Would a marketer be able to create landing pages directly from this?"

### Improvement Suggestions

Based on evaluation, surface to user:

> "This messaging library could be stronger if [specific improvement]. Want me to [action]?"

Example prompts:

- "The benefits section is missing customer quotes for 2 items — want me to search G2 reviews?"
- "Consequence chains for pain point 3 feel thin — want me to expand the strategic impact?"
- "I couldn't find verbatim testimonials — should I mark these as gaps for client to fill?"

---

## Gotchas

- **Generic B2B copy**: Produces "increase efficiency", "streamline workflows" instead of client-specific language → Every value prop must use terminology from the client's actual product and ICP research.
- **Missing hierarchy**: Lists capabilities and benefits as a flat list without prioritization → Messaging hierarchy must rank by ICP pain severity. Lead with highest-pain items.
- **Taglines before messaging**: Jumps to catchy taglines before the underlying messaging framework is solid → Complete all 10 messaging components before generating taglines.
- **Proof points not sourced**: Includes proof points without verifying they're real → Every metric, case study, or quote must be [VERIFIED] or marked [UNAVAILABLE]. Never invent social proof.
- **Ignores status quo alternatives**: Only positions against named competitors, missing the real competitor: doing nothing → Status quo alternatives (spreadsheets, manual processes, hire someone) are often the primary competitor.
