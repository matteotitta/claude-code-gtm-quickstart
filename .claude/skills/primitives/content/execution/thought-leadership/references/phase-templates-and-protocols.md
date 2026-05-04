# Phase Templates, Checkpoints, and Auto-Update Protocols

Hoisted from pre-slim SKILL.md (2026-04-29). This file preserves the verbatim phase output templates, checkpoint dialogues, anti-hallucination guardrails, integration map, and skill-evolution protocol.

---

## Process flowchart (full)

### Overview

```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│   INPUT     │───▶│   DRAFT     │───▶│  OUTLINE    │───▶│   POLISH    │───▶│   REVIEW    │
│ VALIDATION  │    │  (PYRAMID)  │    │   (PROSE)   │    │  (TOV)      │    │   & CHAIN   │
└─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘
```

### Detailed steps

```
INPUT VALIDATION
Required: Topic or core insight, target audience, core argument
Recommended: ICP research, product messaging, content strategy, competitor positions
Optional: Source material, target word count, publication context
→ If missing: Clarify topic, confirm audience, develop contrarian angle

PHASE 1: DRAFT (Barbara Minto Pyramid Principle)
□ Clarify core insight ("What should reader believe after reading?")
□ Identify audience's starting point (current belief, gap, objections)
□ Build pyramid: Governing Thought → Key Line Arguments → Supporting Evidence
□ Test structure (MECE check, "So what?" test)
✓ Checkpoint: Pyramid draft complete — STOP for human approval

PHASE 2: OUTLINE (Paragraph Expansion)
□ Map pyramid to prose sections (governing thought → opening, key lines → sections)
□ Write opening: Hook → Context → Thesis → Roadmap (optional)
□ Expand each section: Headline → Lead paragraph → Evidence → Transition
□ Write closing: Restate → Synthesize → Implications → CTA
✓ Checkpoint: Prose outline complete — STOP for human approval

PHASE 3: POLISH (TOV + Guardrails)
□ Apply TOV guidelines (operator authority, prescriptive confidence, no hedging)
□ Run ICP guardrails (would target audience care? right sophistication level?)
□ Run anti-hallucination guardrails (no invented data, mark placeholders)
□ Apply 100 Posts Test (authentic to voice? could only be written by this person?)
□ Final read-through (flows naturally, hook lands, length appropriate)
✓ Checkpoint: Polished draft complete — STOP for final human approval

SELF-EVALUATION
□ Governing thought is contrarian and specific (not obvious)?
□ Key line arguments are MECE (mutually exclusive, collectively exhaustive)?
□ All evidence is verified or marked as "[Example — verify before publishing]"?
□ No banned words (solutions, leverage, synergy, etc.)?
→ If issues: Flag for user review, mark areas needing verification

REVIEW GATE: Level 3 (Full Review)             │ CHAIN SUGGESTIONS
Present: Final draft, quality report,          │ → linkedin-content (create teaser posts)
        items needing verification             │ → email-nurture (share via newsletter)
Actions: [Approve] [Adjust voice] [Verify]     │ → content-strategy (add to content plan)
```

---

## Pyramid diagram (Phase 1 reference)

```
                    ┌──────────────────┐
                    │ Governing Thought │
                    │  (Main Argument)  │
                    └────────┬─────────┘
                             │
          ┌──────────────────┼──────────────────┐
          │                  │                  │
    ┌─────▼─────┐     ┌─────▼─────┐     ┌─────▼─────┐
    │ Key Line 1 │     │ Key Line 2 │     │ Key Line 3 │
    │ (Support)  │     │ (Support)  │     │ (Support)  │
    └─────┬─────┘     └─────┬─────┘     └─────┬─────┘
          │                  │                  │
    ┌─────▼─────┐     ┌─────▼─────┐     ┌─────▼─────┐
    │ Evidence  │     │ Evidence  │     │ Evidence  │
    │ Examples  │     │ Examples  │     │ Examples  │
    │ Data      │     │ Data      │     │ Data      │
    └───────────┘     └───────────┘     └───────────┘
```

---

## Phase 1 — pyramid draft template

```markdown
## GOVERNING THOUGHT
[One sentence: the main argument you're making]

## KEY LINE ARGUMENTS

### Key Line 1: [Supporting reason #1]
Evidence:
- [Fact/example/data point]
- [Fact/example/data point]

### Key Line 2: [Supporting reason #2]
Evidence:
- [Fact/example/data point]
- [Fact/example/data point]

### Key Line 3: [Supporting reason #3]
Evidence:
- [Fact/example/data point]
- [Fact/example/data point]

## POTENTIAL OBJECTIONS
- [Objection 1] → [How you address it]
- [Objection 2] → [How you address it]

## SO WHAT? (Implication for Reader)
[What should the reader do differently after reading this?]
```

### Phase 1 clarifying questions

> "What's the one thing you want the reader to believe after reading this that they didn't believe before?"

If user is unclear, sharpen with:
- "What's the contrarian view here?"
- "What do most people get wrong about this?"
- "What's the insight you've earned from experience that others haven't?"

### Audience starting-point questions

- What does the reader currently believe?
- What's the gap between their current belief and your governing thought?
- What objections will they have?

### MECE + "so what?" tests

- [ ] Key line arguments don't overlap
- [ ] Key line arguments together fully support the governing thought
- [ ] No major supporting reason is missing
- [ ] Governing thought passes the "so what?" test (not obvious)
- [ ] Each key line argument passes the "so what?" test

### Phase 1 deliverable wrapper

```markdown
---
THOUGHT LEADERSHIP DRAFT — PHASE 1
Status: Awaiting human review
Topic: [Topic]
Governing thought: [One sentence]
---

[Full pyramid structure]

---
PHASE 1 CHECKPOINT

Before we expand this into full prose, please confirm:

1. Does the governing thought capture your core argument? (Y/N/Revise to...)
2. Do the key line arguments feel like the right supports? (Y/N/Add.../Remove.../Revise...)
3. Is any critical evidence missing? (Y/N/Add...)
4. Any objections I haven't anticipated?

Reply with your feedback or "Approved — proceed to Phase 2"
---
```

**STOP. Wait for user approval before proceeding to Phase 2.**

---

## Phase 2 — prose outline expansion

### Pyramid → prose mapping

| Pyramid Element | Becomes |
|----------------|---------|
| Governing thought | Opening section (hook + thesis) |
| Key line 1 | Section 1 (2-4 paragraphs) |
| Key line 2 | Section 2 (2-4 paragraphs) |
| Key line 3 | Section 3 (2-4 paragraphs) |
| Objections | Addressed within sections or dedicated "But..." section |
| So what? | Closing section (implications + CTA) |

### Opening structure

1. **Hook** — Pattern interrupt or unexpected statement (1-2 sentences)
2. **Context** — Why this matters now (2-3 sentences)
3. **Thesis** — Governing thought stated clearly (1 sentence)
4. **Roadmap** — What's coming (optional, 1 sentence)

### Section structure (per key line argument)

1. **Section headline** — Clear, specific, could stand alone
2. **Lead paragraph** — States the key line argument
3. **Evidence paragraphs** — Examples, data, stories that prove it
4. **Transition** — Bridges to next section

### Closing structure

1. **Restate governing thought** — Different words, same meaning
2. **Synthesize** — What the key lines add up to
3. **Implications** — What reader should do/think differently
4. **CTA** — Specific next action (if appropriate)

### Phase 2 deliverable wrapper

```markdown
---
THOUGHT LEADERSHIP OUTLINE — PHASE 2
Status: Awaiting human review
Topic: [Topic]
Word count: [Approximate]
---

## [Title Options]
1. [Option 1]
2. [Option 2]
3. [Option 3]

---

## Opening
[Full prose for opening section]

---

## Section 1: [Headline]
[Full prose for section 1]

---

## Section 2: [Headline]
[Full prose for section 2]

---

## Section 3: [Headline]
[Full prose for section 3]

---

## Closing
[Full prose for closing section]

---
PHASE 2 CHECKPOINT

Before we apply voice and polish, please confirm:

1. Does the flow feel logical? (Y/N/Reorder...)
2. Any sections feel too thin or too dense? (Y/N/Expand.../Trim...)
3. Are the examples and evidence compelling? (Y/N/Replace.../Add...)
4. Title preference? (1/2/3/Other)
5. Anything feel off in your voice?

Reply with your feedback or "Approved — proceed to Phase 3"
---
```

**STOP. Wait for user approval before proceeding to Phase 3.**

---

## Phase 3 — polish (TOV + guardrails)

### Voice attributes (your team default)

- [ ] Operator authority — First-person "I", specific tools/clients, hands-on language
- [ ] Prescriptive confidence — Direct recommendations, imperatives, no hedging
- [ ] Framework-driven clarity — Visual structures where helpful
- [ ] Candid partnership — Acknowledge objections honestly
- [ ] Specificity over superlatives — Numbers, names, not adjectives
- [ ] Conversational warmth — Casual language, not corporate

### Formatting

- [ ] Em dashes with spaces (" — ")
- [ ] Numbers as numerals
- [ ] Sentence case for headlines
- [ ] Arrow (→) and checkmark (☑) lists where appropriate

### Banned words check

- [ ] No: solutions, leverage, synergy, scalable, best-in-class, game-changer, innovative, cutting-edge, very, really, basically, just

### ICP guardrails (Phase 3 sub-checklist)

- [ ] Would a Series A+ B2B SaaS founder/marketer care about this?
- [ ] Does it address their actual pain points?
- [ ] Is the sophistication level right (not too basic, not too niche)?
- [ ] Would they share this with their team?

### Anti-hallucination guardrails

- [ ] No invented client names, metrics, or results
- [ ] No fabricated quotes or testimonials
- [ ] No invented statistics — mark as `[Data point needed]` if missing
- [ ] All proof points verified or marked as examples with "Example:" prefix
- [ ] Dates, figures, tool names accurate

| Risk | Prevention |
|------|------------|
| Inventing client results | Only use verified case studies or mark as "[Example — verify before publishing]" |
| Fabricating quotes | No testimonials unless from approved sources |
| Made-up statistics | Mark as "[Data point needed]" — never invent |
| Wrong tool/framework names | Verify against known tool stack |
| Overstating experience | Stick to verified claims (45+ clients, £367K, etc.) |

### 100 Posts Test

> "If I published 100 posts like this, would the aggregate feel authentic to my voice and brand?"

- [ ] Passes 100 Posts Test
- [ ] Doesn't feel AI-generated or generic
- [ ] Could only have been written by someone with Matteo's experience

### Final read-through

- [ ] Read aloud — flows naturally?
- [ ] Opening hook lands?
- [ ] Each section earns its place?
- [ ] Closing drives action?
- [ ] Length appropriate for format?

### Phase 3 deliverable wrapper

```markdown
---
THOUGHT LEADERSHIP FINAL — PHASE 3
Status: Ready for final human review
Topic: [Topic]
Word count: [Exact]
Format: [LinkedIn article / Blog post / Guest post]
---

# [Title]

[Full polished piece]

---
FINAL QUALITY REPORT

✓ TOV Applied:
- [List of voice elements applied]

✓ Guardrails Passed:
- ICP relevance confirmed
- No hallucinated data
- 100 Posts Test passed

⚠ Items for Your Review:
- [Any areas where you need to verify facts]
- [Any placeholders marked]
- [Any stylistic choices you should confirm]

---
FINAL CHECKPOINT

Please review the polished piece:

1. Does it sound like you? (Y/N/Adjust...)
2. Any facts to verify or add?
3. Ready to publish? (Y/N/Final tweaks...)

Reply with "Approved — ready to publish" or specific revision requests.
---
```

---

## Standard output metadata header

```markdown
---
THOUGHT LEADERSHIP [DRAFT/OUTLINE/FINAL] — PHASE [1/2/3]
Status: [Awaiting human review / Ready for final review]
Topic: [Topic]
Word count: [Count]
Format: [LinkedIn article / Blog post / Guest post / Essay]
Content pillar: [From content strategy if applicable]
---
```

---

## Pre-flight checklist

Before starting, confirm:

- [ ] Topic is specific (not "marketing" but "why most Series A companies get positioning wrong")
- [ ] User can articulate why this matters to their ICP
- [ ] There's a contrarian or non-obvious angle (not commodity wisdom)
- [ ] User has time for 3 review cycles

---

## Quality checklist (cross-phase)

Before delivering any phase output:

- [ ] Pyramid structure is sound (Phase 1)
- [ ] Prose flows logically (Phase 2)
- [ ] TOV applied consistently (Phase 3)
- [ ] No banned words
- [ ] No hallucinated data
- [ ] Passes 100 Posts Test
- [ ] Appropriate length for format
- [ ] Clear checkpoint questions for user

---

## Post-output iteration prompts

After Phase 3 approval, offer:

> "Would you like me to:
> 1. Create a LinkedIn post teaser for this piece?
> 2. Pull out 3-5 standalone quotes for social?
> 3. Draft an email intro to share this?
> 4. Create a 1-paragraph summary for your newsletter?"

---

## Triggers and anti-triggers

### Invoke this skill when user says

- "Write thought leadership on [topic]"
- "Create a thought piece about..."
- "Help me write an essay/article on..."
- "Turn this idea into thought leadership"
- "I want to write about [contrarian take / insight]"
- "Long-form content on [topic]"
- "/thought-leadership"

### Do NOT invoke when

- User wants a LinkedIn post (use `linkedin-content` skill instead)
- User wants newsletter copy (different format)
- User is asking for research only (use `competitor-research` or `icp-behavioural`)
- User wants website copy (use `landing-page-copy`)

---

## Input requirements

### Client context (auto-loaded)

If working on a client project, the client CLAUDE.md is auto-loaded. Check for the "Voice & Messaging" section and apply all voice rules, vocabulary, and messaging anchors automatically. Do not ask the user to re-specify voice rules already in CLAUDE.md.

### Required inputs

| Input | Source | Validation |
|-------|--------|------------|
| Topic or core insight | User provides | Must be specific, not vague |
| Target audience | ICP research or user specifies | Must know who cares about this |
| Core argument | User provides or collaboratively developed | Must be defensible and contrarian enough to matter |

### Strongly recommended

| Input | Source | Why It Matters |
|-------|--------|----------------|
| ICP research | `clients/[client]/icp-behavioural.md` | Ensures relevance to target reader |
| Product messaging | `clients/[client]/product-messaging.md` | Aligns POV with positioning |
| Content strategy | Content strategy output | Maps to content pillars |
| Competitor positions | Competitor research | Identifies white space for differentiation |

### Optional

| Input | Source | Use Case |
|-------|--------|----------|
| Source material | Transcript, notes, prior content | Raw material to structure |
| Target word count | User specifies | LinkedIn article (800-1500), blog (1500-2500), guest post (2000-3500) |
| Publication context | User specifies | Platform-specific formatting |

---

## What good looks like — examples

### Good governing thought

✓ "Most Series A companies fail at positioning because they describe what they built, not why it matters — and the fix takes 2 weeks, not 2 quarters."

- Specific (Series A companies)
- Contrarian (most fail)
- Diagnostic (describes what they built)
- Prescriptive (2 weeks not 2 quarters)

✗ "Positioning is important for startups."

- Generic
- Obvious
- No insight

### Good key line arguments

For the governing thought above:

✓ Key Line 1: "Founders confuse features with positioning because they're too close to the product."
✓ Key Line 2: "The positioning sprint format works because it forces external perspective in compressed time."
✓ Key Line 3: "2 weeks is enough because positioning is a decision, not a discovery process."

- Each supports the governing thought
- Each is distinct (MECE)
- Each is specific enough to expand

### Good evidence

✓ "When I ran the positioning sprint with [Client], their sales team went from 10% to 24% demo-to-close in 6 weeks."

- Specific client reference (or marked as example)
- Quantified outcome
- Timeframe included

✗ "Companies that position well grow faster."

- No specificity
- No proof
- Unverifiable

---

## Skill auto-update protocol

### Feedback signal detection

| User Signal | Interpretation | Action |
|-------------|----------------|--------|
| "Voice is off" | TOV mismatch | Update TOV reference patterns |
| "Structure doesn't flow" | Structure preference | Adjust phase templates |
| "Never use [word]" | Banned word | Add to banned list |
| "This piece performed well" | Success pattern | Add to examples folder |
| "This approach failed" | Anti-pattern | Add to "What Bad Looks Like" section |
| Quick approval with few edits | Strong output | Reinforce patterns used |
| Heavy edits | Implicit correction | Analyze diff, learn pattern |

### Output as reference example

When user approves output with positive signal ("piece performed well", quick approval):

1. **Ask:** "This thought leadership piece met your expectations. Want me to save it as a reference example?"
2. **If approved:**
   - Extract the output (anonymize if requested)
   - Save to `examples/[date]-[topic-slug].md`
   - Update "What Good Looks Like" section with link to new example
   - Add to reference files table with status "✓ Example"

### Improvement tracking (per-run)

After each skill use, capture:

- [ ] What voice corrections were needed?
- [ ] What structural preferences emerged?
- [ ] Any new banned words identified?
- [ ] Did output match user expectations on first pass?
- [ ] What phase required the most iteration?

### Pattern detection rules

**Trigger:** Same feedback received 3+ times

**Action:**
1. Surface to user: "I've noticed [pattern] in thought leadership feedback. Should I update the skill to [specific change]?"
2. If approved: Propose specific SKILL.md edit
3. Log in changelog with feedback reference

**Common patterns to watch:**

| Pattern | Frequency Trigger | Suggested Update |
|---------|------------------|------------------|
| "Voice is off" | 3+ occurrences | Update default TOV calibration |
| "Too long" | 3+ occurrences | Adjust word count defaults |
| "Pyramid structure weak" | 3+ occurrences | Strengthen Phase 1 guidance |

### Suggested skill update format

```markdown
## Proposed Skill Update

**Trigger:** [What feedback pattern triggered this]
**Section:** [Which skill section to update]
**Current:** [Current text/behavior]
**Proposed:** [New text/behavior]
**Rationale:** [Why this improves the skill]
```

---

## Integration with other skills

| Skill | Integration |
|-------|-------------|
| `content-strategy` | Provides content pillars and topic roadmap |
| `icp-behavioural` | Informs audience understanding and relevance |
| `product-messaging` | Aligns thought leadership with positioning |
| `competitor-research` | Identifies white space for differentiation |
| `linkedin-content` | Can repurpose thought leadership into posts |
| `tov-guidelines` | Provides voice patterns for Phase 3 |

---

## MCP data integration

**Level:** 3 — Content Execution (industry trend pulls)

### Pulls fresh

| Source | What to pull | Tool | When |
|--------|-------------|------|------|
| **Exa** | Industry trends, competitor thought leadership | `web_search_exa` | Always |

### Fallback (no MCP)

- WebSearch for industry trends
- User-provided trend reports or articles

---

## Research substrate (Exa)

**Default:** Exa, per `.claude/rules/exa-protocol.md` (auto-loaded for research, audit, competitor, ICP, AEO, content sourcing, sales prospecting work).

**Primary Exa tools for this skill:** `/search, web_search_exa` (and the plugin's `/search` slash command for parallel-subagent dispatch).

**Use case:** evidence + counterpoint mining for original arguments.

**Tool surface during the migration window:**
- New plugin (preferred): `mcp__plugin_exa_exa__web_search_exa` (after `claude plugin i exa@claude-plugins-official`).
- Legacy MCP (still mounted): `mcp__exa__web_search_exa`.
- Both backends route to the same Exa API — they don't double-bill.

**Citation:** every Exa-derived claim uses `[VERIFIED: exa_search, {url}, accessed {YYYY-MM-DD}]` per `.claude/rules/ontology.md`.

**Quality gate (research outputs):** ≥3 sources per major claim, ≥50% `[VERIFIED]` confidence, date filter for any "recent / latest" claim, no fallback to `WebSearch` without flagging the data gap.

**Worked examples + tool catalog:** `.claude/skills/meta-skills/exa/`.

---

## Changelog

| Version | Date | Changes |
|---------|------|---------|
| 1.0 | 2026-01-16 | Initial skill creation with 3-phase human-in-the-loop process |
| 1.1 | 2026-04-29 | Phase 3 lossless slim — hoisted templates and protocols here |
