# Quality gates

Anti-hallucination guardrails, pre-delivery checklists, and self-evaluation
rubric the output must pass before being declared "done".

---

## The Iron Law

**NO DATA POINT WITHOUT SOURCE.**

Every claim has a URL + access date. Every metric cites its origin. "Not available" is always better than invented data.

**No exceptions:**

- "This is widely known" → Still needs a source. Cite it.
- "I read this somewhere" → Find the URL or mark "Not available".
- "I can estimate this" → Estimates need explicit confidence levels and reasoning.
- "The user needs this fast" → Fast + wrong = useless. Take the time.

---

## Red flags (stop and verify)

🚩 About to write revenue/funding without source → STOP. Cite Crunchbase, PitchBook, or mark "[Data needed]".

🚩 About to state competitor feature without verifying → STOP. Check their website/docs first.

🚩 About to invent customer logos → STOP. Only include logos you found on their site.

🚩 About to guess pricing → STOP. Research their pricing page or mark "Pricing not public".

🚩 About to claim market position without evidence → STOP. Cite G2, analyst report, or mark confidence level.

---

## Anti-hallucination guardrails

1. **Never invent data.** Mark "Not available" or "Unknown" if not found
2. **Always cite sources inline.** Use `(Source: name)` for key data points — no verbose `[VERIFIED: url, date]` blocks inline
3. **Consolidate sources at the end.** Full URLs, access dates, and confidence levels go in the "Sources & data quality" table
4. **Acknowledge premium tool limits.** SEO and technographics need paid tools — state which tool was used (Ahrefs / Serper.dev / manual)
5. **Verify surprising claims.** If data seems unusual, search for corroboration
6. **Explicit gaps over false data.** "Not available" is always better than guessing
7. **Reddit is Low confidence by default.** Corroborate with G2/Capterra before upgrading to Medium
8. **Vendr pricing = Medium confidence.** User-negotiated data may differ from list price — always note this
9. **Ads "no data found" ≠ data gap.** If scraping returns no ads, mark as "no active ads verified" — it's a high-confidence GTM signal

### Missing data labels

Use these explicit labels when data cannot be found:

| Label | When to Use |
|-------|-------------|
| "Not available" | Data doesn't exist publicly |
| "Unknown" | Data may exist but not found |
| "Requires premium tool" | Data exists but needs paid access (Ahrefs, BuiltWith) |
| "Conflicting sources" | Multiple sources disagree |
| "Ads data unavailable — JS wall" | Scraping failed, manual browser check needed |

---

## Pre-delivery quality checklist

### Data quality
- [ ] Every data point has source URL or explicit "Not available"
- [ ] Confidence levels assigned to key metrics
- [ ] No invented or estimated numbers without clear labeling
- [ ] Disambiguation confirmed for ambiguous names
- [ ] Surprising claims corroborated with second source

### Coverage quality
- [ ] All 13 dimensions addressed (single competitor mode)
- [ ] Core 5 dimensions addressed (comparison matrix mode)
- [ ] Executive summary provides strategic insight
- [ ] Data gaps section completed with follow-up actions

### Format quality
- [ ] Output header with date and font specification
- [ ] Tables properly formatted
- [ ] Confidence summary included
- [ ] Freshness noted for time-sensitive data

---

## Self-evaluation protocol

After generating competitor research output, automatically run these checks:

### Completeness check

- [ ] All 13 dimensions addressed (single competitor mode)?
- [ ] Core 5 dimensions addressed (comparison matrix mode)?
- [ ] Executive summary provides strategic insight?
- [ ] Data gaps section complete with follow-up actions?
- [ ] Any placeholders remaining?

### Evidence quality check

- [ ] Every data point has source URL or explicit "Not available"?
- [ ] Confidence levels assigned to all key metrics?
- [ ] Ratio of High vs Medium vs Low confidence acceptable?
- [ ] No invented or estimated numbers without clear labeling?

### Guardrail check

- [ ] No invented data? Every claim sourced?
- [ ] Disambiguation confirmed for ambiguous names?
- [ ] Surprising claims corroborated with second source?
- [ ] Premium tool limitations explicitly noted?

### Self-roast questions

Ask internally:

1. "If the user cross-checked this research, would any claims fail verification?"
2. "Am I being honest about data gaps, or hiding them in vague language?"
3. "Does the executive summary provide real strategic insight or just summarize facts?"
4. "Would a competitive intelligence analyst consider this thorough?"
5. "Are my confidence levels accurate, or am I being overconfident?"

### Improvement suggestions

Based on evaluation, surface to user:

> "This research could be stronger if [specific improvement]. Want me to [action]?"

Example prompts:

- "The revenue estimate has low confidence — want me to search for additional sources?"
- "The ICP section is thin — want me to dig deeper into their case studies?"
- "Missing recent launch data — want me to check Product Hunt and LinkedIn announcements?"

---

## Anti-examples (what to avoid)

| Bad pattern | Why it's bad | Better approach |
|-------------|--------------|-----------------|
| "Revenue: $25M" (no qualifier) | Appears as fact when likely estimate | "Revenue estimate: $25M ARR (Medium confidence, Sacra)" |
| "Their tech stack uses React" (guessed) | Invented data | "Tech stack: Not available (requires BuiltWith)" |
| Missing dimensions | Incomplete analysis | Include all 13, mark "Not available" if no data |
| No data gaps section | Missing actionable follow-up | Always include gaps with suggested actions |
| "They seem to be struggling" | Unsourced interpretation | Cite specific signals or mark as inference |
