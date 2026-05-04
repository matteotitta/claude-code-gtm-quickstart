# Quality Checklist

Pre-delivery verification for both Phase 1 (Analysis) and Phase 2 (Guidelines) outputs.

---

## Phase 1: Analysis checklist

### Completeness

- [ ] **Site coverage:** At least 10 pages scraped across 3+ page types
- [ ] **Page types included:** Homepage, About/Values, Blog (2+), Case study or testimonial
- [ ] **Domain filtering:** No third-party sites included (check for calendly, social media, etc.)

### Evidence quality

- [ ] **Every finding has source:** Each pattern claim includes specific URL
- [ ] **Quotes are exact:** Direct quotes, not paraphrases
- [ ] **Quotes are relevant:** Quote actually demonstrates the pattern claimed

### Confidence scoring

- [ ] **Scores assigned:** Every finding has High/Medium/Low/Conflict rating
- [ ] **Scores justified:** Criteria for each score explained
- [ ] **Conflicts flagged:** Any contradictory patterns explicitly called out

### Inconsistency detection

- [ ] **Person conflicts checked:** I/we usage consistent or flagged
- [ ] **Formality conflicts checked:** Tone consistent or flagged
- [ ] **Structural conflicts checked:** Headers, CTAs, punctuation consistent or flagged
- [ ] **Resolutions proposed:** Each inconsistency has recommended resolution

### Gap identification

- [ ] **Gaps documented:** List of what couldn't be determined
- [ ] **Impact explained:** Why each gap matters
- [ ] **Resolution path:** How to fill each gap (founder Q, more scraping, etc.)

### Format

- [ ] **Follows template:** Structure matches `analysis-template.md`
- [ ] **Tables formatted:** All tables render correctly
- [ ] **URLs clickable:** Links are properly formatted
- [ ] **No placeholder text:** All [brackets] filled in or removed

---

## Phase 2: Guidelines checklist

### Grounding

- [ ] **Every guideline sourced:** Each rule traces to specific evidence
- [ ] **Before/after examples real:** "After" examples are actual quotes from site, not fabricated
- [ ] **Confidence carried forward:** Scores from analysis reflected in guidelines
- [ ] **Gaps acknowledged:** Unresolved items listed in appendix

### Specificity

- [ ] **No vague adjectives:** "Confident" is demonstrated, not just stated
- [ ] **Quantities specified:** "Under 4 sentences" not "keep it short"
- [ ] **CTAs exact:** "Book a call with Matteo" not "use action-oriented CTAs"
- [ ] **Banned words listed:** Specific words, not categories

### Actionability

Writer test — could someone follow these guidelines and:
- [ ] Write a homepage headline without asking questions?
- [ ] Know which CTA to use?
- [ ] Know whether to use "I" or "we"?
- [ ] Know maximum paragraph length?
- [ ] Know what phrases to avoid?

LLM test — could an AI use these guidelines to:
- [ ] Generate on-brand copy without additional context?
- [ ] Self-check its output against clear rules?
- [ ] Know when to refuse or flag uncertainty?

### Completeness

All 10 sections present:
- [ ] 1. Brand foundation
- [ ] 2. Audience definition
- [ ] 3. Voice personality
- [ ] 4. Editorial principles
- [ ] 5. Tonal guidelines
- [ ] 6. Vocabulary guide
- [ ] 7. Structural conventions
- [ ] 8. Pattern library
- [ ] 9. Writing rules
- [ ] 10. Anti-patterns

Appendices present:
- [ ] Appendix A: Unresolved items (if any gaps remain)
- [ ] Appendix B: Source index

### Anti-pattern coverage

- [ ] **Phrases listed:** Specific phrases to avoid, not just categories
- [ ] **Tones listed:** Specific tones to avoid with examples
- [ ] **Claims listed:** Types of claims to avoid
- [ ] **Structures listed:** Structural anti-patterns

### Evidence for anti-patterns

Each anti-pattern should be justified by one of:
- [ ] Absence evidence: "Not found across [N] pages"
- [ ] Conflict evidence: "Found once, contradicts dominant pattern"
- [ ] Founder evidence: "Founder explicitly rejected in interview"
- [ ] Logical evidence: "Conflicts with [value/trait]"

---

## Common issues to catch

### Analysis phase issues

| Issue | How to check | Fix |
|-------|--------------|-----|
| Third-party pages included | Search for calendly, linkedin, twitter in URLs | Remove from source list |
| Paraphrased "quotes" | Compare to actual page content | Replace with exact text |
| Missing confidence scores | Scan for findings without H/M/L | Add scores with justification |
| Undetected conflicts | Check person, formality, structure | Re-analyze for patterns |
| Overstated confidence | H score with only 1-2 sources | Downgrade to M or L |

### Guidelines phase issues

| Issue | How to check | Fix |
|-------|--------------|-----|
| Fabricated examples | "Before/after" uses made-up quotes | Replace with actual scraped content |
| Generic rules | "Be consistent" without specifics | Add exact specifications |
| Missing sources | Guideline has no URL attribution | Add source or mark as inferred |
| Orphaned gaps | Gap identified but not in appendix | Add to Appendix A or resolve |
| TBD left undefined | Section says "TBD" without explanation | Add note on how to resolve |

### Format issues

| Issue | How to check | Fix |
|-------|--------------|-----|
| Broken tables | Preview markdown rendering | Fix pipe alignment |
| Dead links | Click all URLs | Update or mark as archived |
| Inconsistent formatting | Check header levels, list styles | Standardize |
| Placeholder text | Search for [ ] brackets | Fill or remove |

---

## Final review questions

Before delivery, answer:

1. **Would a new writer be able to create on-brand content using only this document?**
   - If no: What's missing?

2. **Would an LLM generate consistent output using these guidelines?**
   - If no: What's ambiguous?

3. **Could the brand owner point to evidence for every major rule?**
   - If no: What's ungrounded?

4. **Are all inconsistencies either resolved or flagged?**
   - If no: What's hiding?

5. **Is the versioning clear enough to update later?**
   - If no: Add source dates, page counts

---

## Delivery checklist

- [ ] Analysis document reviewed with user
- [ ] User corrections incorporated
- [ ] Guidelines generated from validated analysis
- [ ] Both documents use consistent formatting
- [ ] Source URLs verified accessible
- [ ] Appendices complete
- [ ] Version info accurate
- [ ] Files named clearly: `[company]-tov-analysis.md`, `[company]-tov-guidelines.md`
