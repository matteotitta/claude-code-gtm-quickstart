# Detailed phase walkthroughs

The 3 phases (Discovery → Anchors → Strategy) and their sub-steps. Read this file when you need the long-form walkthrough — SKILL.md only carries the numbered checklist.

---

## Process flowchart

```text
┌──────────────────────────────────────────────────────────────┐
│                    POSITIONING PROCESS                        │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 1: INPUT VALIDATION                                     │
│ □ Required: Website URL, Company/Product name                 │
│ □ Optional: icp-behavioural, competitor-research, win-loss       │
│ → If missing: Ask for URL, offer to run research skills first │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 2: DISCOVERY & CURRENT STATE                            │
│ Step 1.1: Fetch website content → Output: Raw content         │
│ Step 1.2: Apply 5-second clarity test → Output: Pass/Fail     │
│ Step 1.3: Identify founder type → Output: Classification      │
│ Step 1.4: Extract current positioning → Output: Summary       │
│ ✓ Checkpoint: Website fetched, test complete, type identified │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 3: ANCHOR & ALTERNATIVE MAPPING                         │
│ Step 2.1: Map positioning anchors → Output: Anchor matrix     │
│ Step 2.2: Map competitive alternatives → Output: Alt matrix   │
│ Step 2.3: Run anchor decision tree → Output: Anchor hypothesis│
│ Step 2.4: Score anchor combinations → Output: Ranked options  │
│ Step 2.5: Assess market maturity → Output: Emerging/Mature    │
│ ✓ Checkpoint: 6 anchor types mapped, hypothesis recorded      │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 4: STRATEGY SELECTION + VALIDATION                      │
│ Step 3.1: Select binary strategy → Output: Category/Problem   │
│ Step 3.2: Select anchors + angle → Output: Anchors + archetype│
│ Step 3.3: Define differentiators → Output: 2-3 differentiators│
│ Step 3.4: Determine market focus → Output: Broad/Niche + TAM  │
│ Step 3.5: Select competitive alternative → Output: Primary alt│
│ Step 3.6: Run clarity ladder → Output: 4-level compression    │
│ Step 3.7: Run guarantee test → Output: Pass/Fail per claim    │
│ Step 3.8: Map strategic implications → Output: Constraints    │
│ ✓ Checkpoint: Strategy decided, validated, implications mapped│
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ SELF-EVALUATION                                               │
│ □ Completeness: All 3 phases complete?                        │
│ □ Evidence: Differentiators defensible? Proof types aligned?  │
│ □ Anchors: Decision tree hypothesis validated? Angle selected?│
│ □ Guardrails: No "platform" alone? No invented categories?    │
│ → If issues found: Suggest specific improvements              │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ REVIEW GATE: Level 2 (Standard Review)                        │
│ Present: Full positioning strategy, key decisions             │
│ Actions: [Approve] [Iterate: specific request]                │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ CHAIN SUGGESTIONS                                             │
│ → If approved: "Want me to run product-messaging next?"       │
│   (Tight coupling — positioning feeds directly into messaging)│
│ → Save as reference example if positive feedback              │
└──────────────────────────────────────────────────────────────┘
```

---

## Phase 1: Discovery & Current State

**Purpose:** Gather raw material and assess current positioning clarity.

**Steps:**

1. **Step 1.1: Fetch website content**
   - Homepage: Extract hero (H1 + H2), value props, feature sections
   - Pricing page: Understand tiers and positioning signals
   - About page: Company context, mission, founding story
   - Product/features page: Capability claims
   - **Output:** Raw content from 4+ pages with URLs

2. **Step 1.2: Apply 5-second clarity test**
   - Read ONLY the hero section (H1 + H2)
   - Does it answer: "Which tools does this replace?" OR "Which tasks does this help with?"
   - Score: Pass/Fail with specific rationale
   - **Output:** Clarity test result

3. **Step 1.3: Identify founder type**
   - Ask or infer: Customer-focused, Technology-focused, or Competition-focused?
   - This determines the positioning approach sequence
   - **Output:** Founder type classification

4. **Step 1.4: Extract current positioning elements**
   - What category do they claim? (explicit or implied)
   - What differentiation do they claim?
   - Who do they say they serve?
   - What problem do they claim to solve?
   - **Output:** Current positioning summary

**Phase 1 Checkpoint:**

- [ ] Website content fetched (4+ pages)
- [ ] 5-second test completed with pass/fail
- [ ] Founder type identified
- [ ] Current positioning extracted

---

## Phase 2: Anchor & Alternative Mapping

**Purpose:** Map positioning anchors and competitive alternatives.

**Steps:**

1. **Step 2.1: Map potential positioning anchors**
   - Activity anchors (what manual work do they replace? No category exists yet?)
   - Product category anchors (what shelf could they be on?)
   - Use case/workflow anchors (what tasks do they enable, what friction do they remove?)
   - Problem anchors (what pain do they solve?)
   - Persona anchors (who specifically do they serve?)
   - Competitive alternative anchors (what do they replace?)
   - **Output:** Anchor options matrix (6 types × 2-3 options each)

2. **Step 2.2: Map competitive alternatives**
   - Manual/DIY: How do prospects solve this without software?
   - Legacy incumbent: Who's the "Salesforce" of this space?
   - Direct competitors: Same-category startups
   - Adjacent tools: Partial solutions from other categories
   - Status quo: What happens if they do nothing?
   - **Output:** Competitive alternatives matrix with positioning angles

3. **Step 2.3: Run anchor selection decision tree (quick diagnostic)**
   - Run the Esner Decision Tree (Framework 13) sequentially:
     - Step 0: Leader Dominance → if yes + wedge → Competitive Alternative hypothesis
     - Step 1: Category Awareness → if yes → Product Category hypothesis
     - Step 2: Problem Articulation → if yes → Use Case hypothesis
     - Step 3: Manual Behavior → if yes → Activity hypothesis
   - Record the hypothesis anchor type
   - This hypothesis will be validated or overridden by the scoring matrix in Step 2.4
   - **Output:** Initial anchor hypothesis with reasoning

4. **Step 2.4: Score anchor combinations**
   - For each primary + secondary anchor combination:
     - Clarity score (1-5): How easy to understand?
     - Differentiation score (1-5): How distinct from alternatives?
     - Relevance score (1-5): Does this anchor matter to the buyer's current priorities?
   - **Output:** Ranked anchor combinations

5. **Step 2.5: Assess market maturity**
   - Emerging market: Needs dual strategy (product + education)
   - Mature market: Needs clear differentiation against known alternatives
   - **Output:** Market maturity classification

**Phase 2 Checkpoint:**

- [ ] 6 anchor types mapped with options
- [ ] Competitive alternatives documented
- [ ] Anchor selection hypothesis recorded (decision tree)
- [ ] Anchor combinations scored
- [ ] Market maturity assessed

---

## Phase 3: Strategy Selection

**Purpose:** Make the key positioning decisions.

**Steps:**

1. **Step 3.1: Select binary strategy**
   - Category positioning OR Problem/use-case positioning
   - Document rationale based on market maturity and founder type
   - **Output:** Primary strategy with reasoning

2. **Step 3.2: Select primary anchor, secondary anchor, and secondary angle**
   - Primary anchor: Main reference point from Framework 1 (drives H1)
   - Secondary anchor: Supporting context from Framework 1 (drives H2)
   - Secondary angle archetype: Differentiation type from Framework 14 (Niche, Low-Cost, Premium, Unique Attribute, or Lite) — max 2
   - Validate decision tree hypothesis (Step 2.3) against scoring results (Step 2.4)
   - **Output:** Anchor pair + angle archetype selection with rationale

3. **Step 3.3: Define differentiators**
   - NOT business outcomes alone (those are table stakes)
   - Focus on: Unique delivery mechanism, guarantees, focus, proprietary assets
   - Test: Would you guarantee this outcome?
   - **Output:** 2-3 defensible differentiators

4. **Step 3.4: Determine market focus**
   - Broad vs. niche assessment
   - If niche, select focus strategy: persona, ecosystem, use case, industry, or attribute
   - TAM reality check: At target ACV, how many customers needed?
   - **Output:** Market focus decision with TAM math

5. **Step 3.5: Select primary competitive alternative**
   - Which alternative will you primarily position against?
   - This shapes all messaging angles
   - **Output:** Primary competitive alternative

6. **Step 3.6: Run clarity ladder**
   - Test whether positioning compresses cleanly at four levels:
     - One word: Does a single word capture the essence?
     - One phrase: Is the phrase differentiated?
     - One sentence: Does it pass the 5-second clarity test?
     - One paragraph: Does the full statement answer all buyer questions?
   - If any level fails, revisit anchor or differentiator selection
   - **Output:** Clarity ladder table (4 rows)

7. **Step 3.7: Run guarantee test on all differentiators**
   - For each differentiator from Step 3.3, plus any other key claims:
     - Would you guarantee this outcome with money on the line?
     - What evidence supports it? (testimonial, data, methodology)
     - Verdict: Pass / Fail / Partial (with conditions)
   - Fail = differentiator is aspirational, not defensible. Reclassify or remove.
   - Partial = usable with caveats. Note the conditions.
   - Cross-reference proof type: Does evidence match the recommended proof type for your primary anchor? (See Framework 15)
   - **Output:** Guarantee test table (with proof type alignment check)

8. **Step 3.8: Map strategic implications**
   - For each strategy decision (binary choice, anchors, differentiators, market focus, competitive alternative), document what it implies for:
     - Messaging direction (what to lead with, what to avoid)
     - ICP sharpening (which segments to prioritize based on anchor choices)
     - Competitive counter-positions (per-competitor response based on selected alternative)
   - If competitor-research is available: include voice calibration (where you sit on the confidence/technical/strategic spectrum relative to each competitor)
   - These are directional constraints, not deliverables. They feed into product-messaging, icp-behavioural, and tov-guidelines.
   - **Output:** Implications table

**Phase 3 Checkpoint:**

- [ ] Binary strategy selected (category vs. problem)
- [ ] Primary + secondary anchors chosen
- [ ] Secondary angle archetype selected (Framework 14)
- [ ] Decision tree hypothesis confirmed or overridden
- [ ] Differentiators defined (not just outcomes)
- [ ] Market focus determined with TAM check
- [ ] Primary competitive alternative selected
- [ ] Clarity ladder passes at all levels
- [ ] All differentiators pass guarantee test (or flagged as partial/fail)
- [ ] Proof types aligned to primary anchor (Framework 15)
- [ ] Strategic implications mapped for downstream skills
