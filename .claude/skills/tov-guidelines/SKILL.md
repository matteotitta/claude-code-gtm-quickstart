---
name: tov-guidelines
version: "2.1"
author: genesys-growth
last_updated: 2026-01-21
output_path: "marketing/brand/"
description: |
  Use when client needs voice guidelines for content consistency.
  Use when linkedin-content or landing-page-copy need voice foundation.
  Use when user mentions "tone of voice", "brand voice", or "writing guidelines".
  Use when starting new content program and need voice documentation.

# Agentic Layer Fields
dependencies:
  required: []
  recommended:
    - company-context

outputs:
  - type: tov-analysis
    feeds_into: []
  - type: tov-guidelines
    feeds_into:
      - landing-page-copy
      - linkedin-content
      - product-messaging
      - sales-enablement
      - outreach-emails

triggers:
  auto_suggest_when:
    - "user mentions tone of voice or brand voice"
    - "content skill needs voice guidelines"
    - "user provides website URL for voice extraction"
  auto_run_when: null  # Always require confirmation (two-phase process)

review_gate: 2  # Standard review (Phase 1 analysis requires user review before Phase 2)
---

# TOV guidelines

Extract actionable editorial tone of voice guidelines from a company's existing content. Two-phase workflow ensures guidelines are grounded in evidence, not assumptions.

---

## Process Flowchart

```text
┌──────────────────────────────────────────────────────────────┐
│                  TOV GUIDELINES PROCESS                       │
│              (Two-Phase Workflow with User Gate)              │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 1: ANALYSIS                                             │
│ Step 1.1: Discover site structure → page list                 │
│ Step 1.2: Scrape 15-20 pages by priority                      │
│ Step 1.3-1.6: Extract patterns (sentence, paragraph, word,    │
│               structural)                                     │
│ Step 1.7: Score frequency (High 80%+ / Med 40-79% / Low <40%)│
│ Step 1.8: Build content-type voice mapping                    │
│ Step 1.9: Generate voice-in-action examples                   │
│ Step 1.10: Identify inconsistencies                           │
│ Step 1.11: Document gaps                                      │
│ ✓ Output: tov-analysis.md                                     │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ REVIEW GATE: Level 2 (User Review Required)                   │
│ Present: Pattern findings, inconsistencies, gaps              │
│ User Actions: [Confirm] [Correct patterns] [Answer gap Qs]    │
│ → MUST have user review before proceeding to Phase 2          │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 2: GENERATION                                           │
│ Step 2.1: Incorporate user feedback                           │
│ Step 2.2: Generate guidelines (reader, tone, patterns,        │
│           vocabulary, structure, anti-patterns)               │
│ Step 2.3: Add source attribution to every guideline           │
│ ✓ Output: tov-guidelines.md                                   │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ SELF-EVALUATION                                               │
│ □ Completeness: All 6 questions answered?                     │
│ □ Evidence: Every guideline has source URL?                   │
│ □ Guardrails: No invented examples? Gaps marked?              │
│ → If issues found: Flag ungrounded guidelines                 │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ CHAIN SUGGESTIONS                                             │
│ → "Want me to create content using these guidelines?"         │
│ → "Should I apply TOV to landing-page-copy?"                  │
│ → "Ready to generate linkedin-content with this voice?"       │
│ → Save as reference example if positive feedback              │
└──────────────────────────────────────────────────────────────┘
```

---

## Claude Code Triggers

**Invoke this skill when user says:**
- "Create TOV guidelines for [URL/company]"
- "Extract voice from website"
- "Build editorial guidelines"
- "Tone of voice document"
- "Brand voice guidelines"
- "Writing style guide for [company]"
- "What's [company]'s voice?"
- "Analyze voice from [URL]"

**Do NOT invoke when:**
- User wants brand identity guidelines (visual) → Use `brand-guidelines` skill
- User wants product messaging → Use `product-messaging` skill
- User wants to write content → Use appropriate content skill with TOV as input
- User just wants quick voice description → Answer directly

---

## Input Requirements

### Required Inputs

| Input | Description | Source |
|-------|-------------|--------|
| **Company URL** | Primary website URL | User provides |

### Optional Inputs (improve quality)

| Input | How It Helps |
|-------|--------------|
| Founder context | Interview transcript, founder notes, voice preferences |
| Existing guidelines | Current brand guidelines to incorporate or update |
| Target audience | Known audience details to validate against content |

### Input Validation Checklist

Before proceeding, verify:
- [ ] Company URL is accessible
- [ ] Website has enough content to analyze (homepage + 5-10 pages minimum)

**If inputs are missing:** Ask for website URL. Note if site has limited content for analysis.

---

## Process (Step-by-Step)

### Phase 1: Analysis

**Purpose:** Extract evidence-based voice findings from website content.

**Output:** `tov-analysis.md`

**Steps:**

1. **Step 1.1: Discover site structure**
   - Fetch homepage and extract all internal links
   - Filter: same domain only (no third-party links)
   - Prioritize: /about, /manifesto, /values, /blog/*, /case-studies/*, /pricing, /faq
   - Use web search and web fetch to gather pages. If available, use a sitemap or crawl tool to discover all pages.
   - **Output:** Page list for analysis

2. **Step 1.2: Scrape comprehensively**
   - Fetch pages in priority order (stop at ~15-20 pages)
   - Priority 1: Homepage (core positioning, primary CTA style)
   - Priority 2: About/Manifesto/Values (origin story, beliefs, personality)
   - Priority 3: Blog posts (3-5) (long-form voice, educational tone)
   - Priority 4: Case studies (2-3) (proof presentation, client voice)
   - Priority 5: Pricing/Services (commercial tone, specificity)
   - Priority 6: FAQ (objection handling, conversational tone)
   - Priority 7: Landing pages (persuasion patterns)
   - **Output:** Page content collected

3. **Step 1.3: Extract sentence-level patterns**
   - Average sentence length
   - First-person vs. third-person usage
   - Question frequency
   - Command/imperative usage
   - **Output:** Sentence-level analysis

4. **Step 1.4: Extract paragraph-level patterns**
   - Average paragraph length
   - Opening patterns
   - Transition patterns
   - Evidence placement
   - **Output:** Paragraph-level analysis

5. **Step 1.5: Extract word-level patterns**
   - Recurring terms (company vocabulary)
   - Industry terms (customer vocabulary)
   - Banned/avoided words
   - Modifier frequency (very, really, extremely)
   - **Output:** Word-level analysis

6. **Step 1.6: Extract structural patterns**
   - Header style (sentence case vs. title case)
   - CTA placement and phrasing
   - Proof stacking patterns
   - Section organization
   - **Output:** Structural analysis

7. **Step 1.7: Score frequency**
   - High (80%+): Pattern across most page types
   - Medium (40-79%): Pattern on some pages
   - Low (<40%): Pattern appears rarely
   - Conflict: Contradictory patterns found
   - **Output:** Frequency scores per finding

8. **Step 1.8: Build content-type mapping**
   - Document how voice varies by content type
   - Note person, formality, CTA style per type
   - **Output:** Voice variation table

9. **Step 1.9: Generate voice-in-action examples**
   - Create before/after pairs (generic → on-brand)
   - **Output:** Transformation examples

10. **Step 1.10: Identify inconsistencies**
    - Flag conflicts (e.g., homepage uses "I", pricing uses "we")
    - Note as issues to resolve in Phase 2
    - **Output:** Inconsistency list

11. **Step 1.11: Document gaps**
    - What couldn't be determined from scraping
    - Suggested founder interview questions
    - **Output:** Gap inventory

**Phase 1 Checkpoint:**
- [ ] 15+ pages analyzed
- [ ] All pattern categories extracted
- [ ] Frequency scores assigned
- [ ] Inconsistencies flagged
- [ ] Gaps documented

**User Review Point:** Present Phase 1 analysis to user for review before Phase 2.

### Phase 2: Generation

**Purpose:** Create actionable guidelines from validated findings.

**Output:** `tov-guidelines.md`

**Steps:**

1. **Step 2.1: Incorporate feedback**
   - User reviews Phase 1 analysis
   - Apply corrections to misidentified patterns
   - Resolve inconsistencies
   - Fill gaps with founder answers
   - **Output:** Validated findings

2. **Step 2.2: Generate guidelines document**
   - Primary reader definition
   - Tone attributes with examples
   - Pattern library with LLM guidance
   - Vocabulary lists
   - Structure templates
   - Anti-patterns
   - **Output:** Complete guidelines

3. **Step 2.3: Add source attribution**
   - Every guideline traces to source URL
   - Frequency scores carried forward
   - Unresolved gaps marked "TBD - requires founder input"
   - **Output:** Sourced guidelines

**Phase 2 Checkpoint:**
- [ ] All guidelines have source attribution
- [ ] Inconsistencies resolved
- [ ] Gaps marked or filled
- [ ] Document follows template

---

## Core Frameworks

### Six Critical Questions

Every TOV guidelines document answers:

| # | Question | What It Contains |
|---|----------|------------------|
| 1 | **Who's actually reading?** | Primary reader definition with job title, challenges, goals |
| 2 | **What does tone sound like?** | Demonstrable before/after examples, not adjectives |
| 3 | **What patterns repeat vs. vary?** | Pattern library with LLM-specific guidance |
| 4 | **What words actually used?** | Vocabulary with company terms, customer terms, banned words |
| 5 | **What structure fits?** | Opening patterns, body structure, CTA style |
| 6 | **What to refuse?** | Anti-patterns with specific phrases, claims, tones to avoid |

### Frequency Scoring

| Score | Criteria | Example |
|-------|----------|---------|
| **High (80%+)** | Pattern appears across most page types | "First-person 'I' used on 5 of 6 pages (83%)" |
| **Medium (40-79%)** | Pattern appears on some pages | "'I' used on homepage and about, but not blog posts (40%)" |
| **Low (<40%)** | Pattern appears rarely | "'We' found once on pricing page (17%)" |
| **Conflict** | Contradictory patterns found | "Homepage uses 'I', pricing uses 'we'" |

### Pattern Categories

| Category | What to Extract |
|----------|-----------------|
| **Sentence-level** | Length, person, questions, imperatives |
| **Paragraph-level** | Length, openings, transitions, evidence |
| **Word-level** | Company vocabulary, customer vocabulary, banned words |
| **Structural** | Headers, CTAs, proof stacking, sections |
| **Content-type** | Voice variations by page type |
| **Emotional register** | Tone by content moment |

---

## Output Format

### Phase 1 Output (Analysis)

```markdown
<!--
SKILL OUTPUT: TOV Analysis
Generated: YYYY-MM-DD
Font: Inter (for rendering)
Version: 2.0
-->

# TOV Analysis: [Company Name]

**Website:** [URL]
**Pages analyzed:** [Count]
**Analysis date:** [Date]

---

## Pages Scraped

| Page | URL | Voice Facets Revealed |
|------|-----|----------------------|
| Homepage | [URL] | Core positioning, primary CTA |
| About | [URL] | Origin story, beliefs |
| [Continue] | | |

---

## Pattern Findings

### Sentence-Level Patterns

| Pattern | Finding | Frequency | Source Pages |
|---------|---------|-----------|--------------|
| Average sentence length | [X words] | High/Med/Low | [Pages] |
| Person usage | [First/Third] | High/Med/Low | [Pages] |
| Question frequency | [X per page] | High/Med/Low | [Pages] |
| Imperative usage | [Finding] | High/Med/Low | [Pages] |

### Paragraph-Level Patterns

| Pattern | Finding | Frequency | Source Pages |
|---------|---------|-----------|--------------|
| Average paragraph length | [X sentences] | High/Med/Low | [Pages] |
| Opening patterns | [Finding] | High/Med/Low | [Pages] |
| Transition patterns | [Finding] | High/Med/Low | [Pages] |

### Word-Level Patterns

**Company vocabulary:**
- [Term 1] — [Frequency] — [Source pages]
- [Term 2] — [Frequency] — [Source pages]

**Customer vocabulary:**
- [Term 1] — [Context] — [Source pages]

**Banned/avoided words:**
- [Word] — [Evidence it's avoided]

### Structural Patterns

| Pattern | Finding | Frequency | Source Pages |
|---------|---------|-----------|--------------|
| Header style | [Sentence/Title case] | High/Med/Low | [Pages] |
| CTA placement | [Finding] | High/Med/Low | [Pages] |
| Proof stacking | [Finding] | High/Med/Low | [Pages] |

---

## Content-Type Voice Mapping

| Content Type | Person | Formality | CTA Style |
|--------------|--------|-----------|-----------|
| Homepage | [I/We/Brand] | [Conversational/Professional] | [Style] |
| Blog posts | [I/We/Brand] | [Conversational/Professional] | [Style] |
| [Continue] | | | |

---

## Voice-in-Action Examples

| Generic | On-Brand | Principle |
|---------|----------|-----------|
| "[Generic phrasing]" | "[Actual phrasing from site]" | [What makes it distinctive] |

---

## Inconsistencies Found

### [Inconsistency 1]
- **Page A:** "[Finding]" ([URL])
- **Page B:** "[Conflicting finding]" ([URL])
- **Recommendation:** [How to resolve]

---

## Gaps Identified

| Gap | Why It Matters | How to Fill |
|-----|----------------|-------------|
| [Gap] | [Impact] | [Method] |

---

## Suggested Founder Questions

1. [Question to fill gap 1]
2. [Question to resolve inconsistency 1]
3. [Question about preference]

---

## Ready for Review

Please review this analysis and let me know:
1. Any patterns I misidentified?
2. How to resolve the inconsistencies?
3. Answers to the gap questions?

Once confirmed, I'll generate the final TOV guidelines document.
```

### Phase 2 Output (Guidelines)

```markdown
<!--
SKILL OUTPUT: TOV Guidelines
Generated: YYYY-MM-DD
Font: Inter (for rendering)
Version: 2.0
-->

# TOV Guidelines: [Company Name]

**Based on analysis of:** [URL]
**Pages analyzed:** [Count]
**Generated:** [Date]
**Last updated:** [Date]

---

## 1. Primary Reader

**Job title:** [Title]
**Challenges:** [Key challenges]
**Goals:** [What they want to achieve]
**How they read:** [Skimming? Deep reading? Mobile?]

---

## 2. Tone Attributes

### [Attribute 1]

**What it means:** [Description]

**Before (generic):**
> "[Generic example]"

**After (on-brand):**
> "[On-brand example from site]"

**Source:** [URL where this pattern appears]

### [Attribute 2]

[Same structure]

---

## 3. Pattern Library

### Sentence Patterns

| Pattern | Guideline | Source |
|---------|-----------|--------|
| Person | Use "[I/We/Brand]" consistently | [Frequency: X%] |
| Length | Target [X] words average | [Analysis finding] |
| Questions | [How often to use] | [Frequency: X%] |

### Paragraph Patterns

| Pattern | Guideline | Source |
|---------|-----------|--------|
| Length | [X] sentences typical | [Analysis finding] |
| Openings | [Pattern to follow] | [Source pages] |
| Transitions | [Pattern to follow] | [Source pages] |

### LLM-Specific Guidance

When using this TOV in AI prompts:
- [Specific instruction 1]
- [Specific instruction 2]
- [Specific instruction 3]

---

## 4. Vocabulary

### Always Use

| Term | Context | Source |
|------|---------|--------|
| [Term] | [When to use] | [URL] |

### Never Use

| Term | Say Instead | Source |
|------|-------------|--------|
| [Term] | [Alternative] | [Evidence] |

---

## 5. Structure Templates

### Opening Patterns

**For [content type]:**
```
[Template structure]
```
**Source:** [URL]

### CTA Patterns

**Primary CTA style:**
```
[Template]
```
**Source:** [URL]

---

## 6. Anti-Patterns

### Phrases to Avoid

| Don't Say | Why | Say Instead |
|-----------|-----|-------------|
| "[Phrase]" | [Reason] | "[Alternative]" |

### AI-Speak Structural Patterns to Flag

Every TOV guidelines document MUST include an AI-speak section. These patterns are sentence structures (not just buzzwords) that instantly read as AI-generated:

| Pattern | Example | Guideline |
|---------|---------|-----------|
| **False contrast reframe ("X isn't Y. It's Z.")** | "The problem isn't effort. It's coverage." | THE number one AI-speak tell. Negates something, then bridges to the "real" point. Rewrite to just state the point directly. Never use this structure. |
| **Wrapped bow ending** | "That's the real competitive advantage." | Neat thesis-statement closings. End on questions, open thoughts, or mid-thought instead. |
| **Overused negation setup** | "Not because they don't want to. Because [real reason]." | Max once per piece. More than that is an instant AI tell. |
| **AI transition phrases** | "Here's the thing:" / "Here's why:" | Verbal tics of LLMs. Cut entirely. |
| **Uniform paragraph rhythm** | Every paragraph is 2-3 sentences | Mix lengths wildly. One-word paragraphs. Long ones. Unresolved thoughts. |

Include this table (adapted to the client's specific voice) in every TOV guidelines output under the Anti-Patterns section.

### Tones to Avoid

- **[Tone]:** [Why it doesn't fit] — [Example to avoid]

### Claims to Avoid

- [Claim type] without [evidence type]

---

## Application Guide

### By Content Type

| Content Type | Key TOV Points | Template |
|--------------|----------------|----------|
| [Type] | [Points] | [Reference] |

### Quality Check

Before publishing, verify:
- [ ] [Checklist item from analysis]
- [ ] [Checklist item from analysis]
- [ ] [Checklist item from analysis]

---

## Source Appendix

| Finding | Source URL | Frequency |
|---------|------------|-----------|
| [Finding] | [URL] | [Score] |

---

## Iteration Prompts

After using these guidelines, consider:
1. "Should I update guidelines based on new content?"
2. "Want me to create content using these guidelines?"
3. "Should I analyze competitor voice for comparison?"

---

## Skill Improvement Notes

**What worked well:**
- [Auto-captured]

**Potential improvements:**
- [Auto-captured]

---

## Related context

**Built from:**
- `context/MMYY-company-context.md` (company identity)
- Existing content samples

**Feeds into:**
- All content outputs (LinkedIn, newsletter, thought leadership)
- `marketing/product-marketing/MMYY-product-messaging.md` (messaging tone)
```

---

## What Good Looks Like

### Example 1: Genesys Growth TOV Analysis

**Input context:**
```
URL: https://genesysgrowth.com
Type: B2B SaaS GTM consulting
```

**Expected output excerpt:**
```markdown
### Sentence-Level Patterns

| Pattern | Finding | Frequency | Source Pages |
|---------|---------|-----------|--------------|
| Average sentence length | 12 words | High (87%) | All pages |
| Person usage | First-person "I" | High (83%) | Homepage, About, Services |
| Question frequency | 2-3 per page | Medium (60%) | Homepage, Services |
| Imperative usage | Moderate (CTAs only) | High (90%) | All pages |

### Voice-in-Action Examples

| Generic | On-Brand | Principle |
|---------|----------|-----------|
| "We help companies improve their GTM" | "I help B2B SaaS teams accelerate their GTM without the bloat" | Operator authority + specificity |
| "Contact us to learn more" | "Book a call with Matteo" | Personal name > generic CTA |
| "Our solutions leverage AI" | "I use Clay, Claude, and n8n to build systems" | Name specific tools > buzzwords |
```

**Why this is good:**
- Every finding has frequency score
- Source pages cited
- Before/after examples are real, not invented
- Principles extracted from evidence

### Anti-Examples (What to Avoid)

| Bad Pattern | Why It's Bad | Better Approach |
|-------------|--------------|-----------------|
| "The tone is friendly" | Adjective without evidence | "First-person 'I' used on 5 of 6 pages (83%)" |
| "Use conversational language" | Vague guideline | "Average sentence length: 12 words. Max: 20 words." |
| No source attribution | Can't verify | "Source: /about page, paragraph 3" |
| Invented examples | Not grounded in content | Use actual text from scraped pages |

---

## Anti-Hallucination Guardrails

1. **Every finding needs source.** Include page URL where pattern was found.
2. **Frequency scores based on counts.** "5 of 6 pages (83%)" not "usually"
3. **Examples from actual content.** Never invent illustrative examples.
4. **Flag inconsistencies.** Don't paper over contradictory patterns.
5. **Document gaps explicitly.** Don't fill gaps with assumptions.

---

## Quality Checklist (Pre-Delivery)

### Phase 1 Quality
- [ ] 15+ pages scraped and analyzed
- [ ] All pattern categories have findings
- [ ] Frequency scores calculated (not estimated)
- [ ] Inconsistencies explicitly flagged
- [ ] Gaps documented with founder questions

### Phase 2 Quality
- [ ] All guidelines trace to Phase 1 findings
- [ ] Inconsistencies resolved (or marked pending)
- [ ] Examples are from actual scraped content
- [ ] Source URLs included for verification

---

## Self-Evaluation Protocol

After generating TOV guidelines output, automatically run these checks:

### Completeness Check (Phase 1)

- [ ] 15+ pages scraped and analyzed?
- [ ] All pattern categories have findings (sentence, paragraph, word, structural)?
- [ ] Frequency scores calculated (not estimated)?
- [ ] Inconsistencies explicitly flagged?
- [ ] Gaps documented with founder questions?

### Completeness Check (Phase 2)

- [ ] All 6 questions answered (reader, tone, patterns, vocabulary, structure, anti-patterns)?
- [ ] All guidelines trace to Phase 1 findings?
- [ ] Inconsistencies resolved (or marked pending)?
- [ ] Any placeholders remaining?

### Evidence Quality Check

- [ ] Every finding has source URL?
- [ ] Frequency scores based on actual counts (not "usually" or "often")?
- [ ] Examples are from actual scraped content (not invented)?
- [ ] Source URLs included for verification?

### Guardrail Check

- [ ] No adjective-only tone descriptions ("friendly", "professional")?
- [ ] No vague guidelines ("use conversational language")?
- [ ] No invented illustrative examples?
- [ ] Contradictory patterns flagged, not papered over?

### Self-Roast Questions

Ask internally:

1. "Could someone verify every finding by visiting the source URLs?"
2. "Are my frequency scores mathematically accurate, or did I estimate?"
3. "Did I invent any 'typical' examples, or are they all from actual content?"
4. "Would a content writer be able to apply these guidelines immediately?"
5. "Did I flag inconsistencies honestly, or hide them to look clean?"

### Improvement Suggestions

Based on evaluation, surface to user:

> "These guidelines could be stronger if [specific improvement]. Want me to [action]?"

Example prompts:

- "Some patterns have low frequency scores — want me to scrape more pages to increase confidence?"
- "I flagged 3 inconsistencies that need resolution — want to address them now?"
- "The vocabulary section is thin — want me to extract more company-specific terms?"

---

## Post-Output: Iteration Prompts

After delivering output, proactively offer:

### Refinement Prompts
1. "Should I scrape additional pages for more data?"
2. "Want me to resolve any flagged inconsistencies?"
3. "Should I expand the vocabulary section?"

### Expansion Prompts
1. "Ready to create content using these guidelines?"
2. "Should I analyze competitor voice for comparison?"
3. "Want me to create an LLM prompt version of these guidelines?"

### Quality Prompts
1. "Any patterns that don't match your experience?"
2. "Should I verify any findings with additional pages?"
3. "Want me to add more before/after examples?"

---

## Skill Auto-Update Protocol

### Feedback Signal Detection

| User Signal | Interpretation | Action |
|-------------|----------------|--------|
| "Great guidelines" / "This captures our voice" | High quality match | Log as positive pattern, offer to save as reference |
| "Pattern is wrong" | Misidentification | Log for extraction improvement |
| "Add [pattern]" | Missing pattern category | Log new pattern to extract |
| "Voice changed" | Content drift | Flag for re-analysis |
| "Good guideline" | Specific win | Capture as pattern to replicate |
| Phase 2 approval without corrections | Strong Phase 1 | Reinforce extraction patterns |

### Output as Reference Example

When user approves output (explicit "great guidelines" or approval without corrections):

1. **Ask:** "These TOV guidelines met your expectations. Want me to save them as a reference example for this skill?"

2. **If approved:**
   - Extract the full TOV guidelines output (Phase 2)
   - Anonymize if sensitive (or keep with permission)
   - Save to `references/examples/[date]-[company-slug].md`
   - Update "What Good Looks Like" section with link to new example
   - Add to reference files table

### Improvement Tracking

After each skill use, note:
1. **Scrape coverage:** How many pages analyzed?
2. **Pattern accuracy:** User corrections to Phase 1?
3. **Gap resolution:** How many gaps filled by user?
4. **Guideline usefulness:** User feedback on Phase 2?

### Pattern Detection Rules

When same feedback received 3+ times for this skill:

1. **Surface pattern:** "I've noticed [pattern] in TOV guidelines feedback. Should I update the skill to [proposed change]?"

2. **If approved:** Propose specific SKILL.md edit with:
   - Current behavior
   - Proposed change
   - Affected sections

3. **Log in changelog** with feedback reference

**Common patterns to watch for:**

- Users frequently correcting person usage patterns → Improve person detection
- Frequency scores often disputed → Recalibrate calculation method
- Certain pattern categories consistently thin → Enhance extraction for those categories
- Phase 1 → Phase 2 gaps not filled → Improve gap question generation

---

## Reference Files

| File | Purpose | Status |
|------|---------|--------|
| `references/content-analysis-guide.md` | Pattern extraction framework | ✓ Core |
| `references/analysis-template.md` | Phase 1 output structure | ✓ Core |
| `references/tov-template.md` | Phase 2 output structure | ✓ Core |
| `references/founder-interview-questions.md` | Questions to fill gaps | ✓ Core |

---

## Integration with Other Skills

### TOV-guidelines feeds INTO these skills

| Skill | What It Receives | How It Uses It |
|-------|------------------|----------------|
| **landing-page-copy** | Voice patterns, vocabulary, anti-patterns | Applies TOV to landing page generation |
| **linkedin-content** | Tone attributes, sentence patterns | Applies TOV to LinkedIn posts |
| **product-messaging** | Voice guidelines, vocabulary | Applies TOV to messaging framework |
| **sales-enablement** | Communication style, vocabulary | Applies TOV to sales materials |
| **outreach-emails** | Tone, formality level, CTAs | Applies TOV to email copy |

### TOV-guidelines receives FROM these skills

| Skill | What It Provides | How TOV-guidelines Uses It |
|-------|------------------|---------------------------|
| **company-context** | Company background, positioning | Provides context for voice analysis |

### Recommended workflow sequences

**Sequence 1: Full content foundation**

```text
company-context → tov-guidelines → landing-page-copy
```

**Sequence 2: Content system setup**

```text
tov-guidelines → product-messaging → linkedin-content
```

**Sequence 3: Complete PMM stack**

```text
icp-behavioural → positioning → tov-guidelines → product-messaging → landing-page-copy
```

---

## Changelog

| Version | Date | Changes |
|---------|------|---------|
| 2.1 | 2026-01-21 | Agentic enhancements: YAML frontmatter with dependencies/outputs/triggers, visual flowchart, self-evaluation protocol, enhanced auto-update with reference example capture, upstream/downstream integration map |
| 2.0 | 2026-01-16 | Refactored to v2.0 template: Claude Code triggers, Inter font output, iteration prompts, auto-update rules. Two-phase workflow preserved. |
| 1.0 | Previous | Initial skill creation with two-phase workflow |

---

## Web Research Integration

**Level:** 0 — Context (heavy research)

### Research approach

| Source | What to gather | Method | When |
|--------|-------------|------|------|
| **Company website** | Content pages (blog, about, docs) for voice analysis | Web fetch / web search | Always |
| **YouTube/video platforms** | Founder video transcripts for spoken voice | Search for founder videos, use transcript tools if available | If founder videos exist |
| **External channels** | Brand content across external channels (social, press, guest posts) | Web search for company name + content | Always |
