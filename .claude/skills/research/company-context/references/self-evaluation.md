# Self-evaluation protocol

After generating company context output, run these checks before review gate.

## Completeness check

- [ ] All 4 target questions answered (revenue, customers, funding, team)?
- [ ] Qualification score calculated out of 25?
- [ ] ICP fit checklist completed?
- [ ] Red flags checklist completed?
- [ ] Any placeholders remaining?

## Evidence quality check

- [ ] Every data point has source and confidence level?
- [ ] Conflicting data documented when sources disagree?
- [ ] Data gaps section complete with discovery questions?
- [ ] No invented or estimated numbers without clear labeling?

## Guardrail check

- [ ] No invented traction data?
- [ ] Every claim has source citation?
- [ ] "Not available — searched [sources]" used for missing data?
- [ ] Qualification score matches observed signals?

## Self-roast questions

Ask internally:

1. "If the user verified this data independently, would any claims fail?"
2. "Am I being honest about confidence levels, or overconfident?"
3. "Would a VC analyst consider this due diligence thorough?"
4. "Are the key observations actionable for a discovery call?"
5. "Did I actually search all priority sources, or shortcut?"

## Improvement suggestions

Surface to user when checks identify weak areas:

> "This company context could be stronger if [specific improvement]. Want me to [action]?"

Examples:
- "Revenue data has low confidence — want me to search additional sources?"
- "Couldn't find recent funding news — want me to search press releases directly?"
- "Team breakdown is incomplete — want me to analyze their LinkedIn more deeply?"

## Post-output: iteration prompts

After delivering output, proactively offer:

### Refinement
1. "Should I dig deeper on any metric?"
2. "Want me to verify low-confidence data?"
3. "Should I expand the ICP fit analysis?"

### Expansion
1. "Ready to research their competitors?"
2. "Should I prepare discovery call questions?"
3. "Want me to extract their product messaging?"

### Quality
1. "Any data points that seem off?"
2. "Should I search additional sources?"
3. "Want me to fill any specific data gap?"
