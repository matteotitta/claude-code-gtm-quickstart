# Self-Evaluation Protocol

After generating TOV output, run these checks before delivery. Surface improvement suggestions to the user when checks fail.

## Completeness check (Phase 1)

- [ ] 15+ pages scraped and analyzed?
- [ ] All pattern categories have findings (sentence, paragraph, word, structural)?
- [ ] Frequency scores calculated (not estimated)?
- [ ] Inconsistencies explicitly flagged?
- [ ] Gaps documented with founder questions?

## Completeness check (Phase 2)

- [ ] All 6 questions answered (reader, tone, patterns, vocabulary, structure, anti-patterns)?
- [ ] All guidelines trace to Phase 1 findings?
- [ ] Inconsistencies resolved (or marked pending)?
- [ ] No placeholders remaining?

## Evidence quality check

- [ ] Every finding has source URL?
- [ ] Frequency scores based on actual counts (not "usually" or "often")?
- [ ] Examples are from actual scraped content (not invented)?
- [ ] Source URLs included for verification?

## Guardrail check

- [ ] No adjective-only tone descriptions ("friendly", "professional")?
- [ ] No vague guidelines ("use conversational language")?
- [ ] No invented illustrative examples?
- [ ] Contradictory patterns flagged, not papered over?

## Self-roast questions (ask internally)

1. Could someone verify every finding by visiting the source URLs?
2. Are my frequency scores mathematically accurate, or did I estimate?
3. Did I invent any "typical" examples, or are they all from actual content?
4. Would a content writer be able to apply these guidelines immediately?
5. Did I flag inconsistencies honestly, or hide them to look clean?

## Improvement prompts (surface to user)

When checks fail, surface a specific prompt:

> "These guidelines could be stronger if [specific improvement]. Want me to [action]?"

Example prompts:

- "Some patterns have low frequency scores — want me to scrape more pages to increase confidence?"
- "I flagged 3 inconsistencies that need resolution — want to address them now?"
- "The vocabulary section is thin — want me to extract more company-specific terms?"

## Anti-hallucination guardrails

1. **Every finding needs source.** Include page URL where pattern was found.
2. **Frequency scores based on counts.** "5 of 6 pages (83%)" not "usually".
3. **Examples from actual content.** Never invent illustrative examples.
4. **Flag inconsistencies.** Don't paper over contradictory patterns.
5. **Document gaps explicitly.** Don't fill gaps with assumptions.

## Anti-examples (what to avoid)

| Bad pattern | Why it's bad | Better approach |
|-------------|--------------|-----------------|
| "The tone is friendly" | Adjective without evidence | "First-person 'I' used on 5 of 6 pages (83%)" |
| "Use conversational language" | Vague guideline | "Average sentence length: 12 words. Max: 20 words." |
| No source attribution | Can't verify | "Source: /about page, paragraph 3" |
| Invented examples | Not grounded in content | Use actual text from scraped pages |
