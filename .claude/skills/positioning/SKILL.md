---
name: positioning
version: "2.4"
author: genesys-growth
last_updated: 2026-03-03
description: |
  Use when client needs positioning strategy, category definition, or differentiation.
  Use when icp-behavioural and competitor-research completed and ready for strategy.
  Use when user mentions "positioning", "category", or "differentiation".
  Use when homepage messaging needs strategic foundation.

# Agentic Layer Fields
dependencies:
  required: []
  recommended:
    - icp-research
    - competitor-research
    - win-loss-analysis

outputs:
  - type: positioning-strategy
    feeds_into:
      - product-messaging
      - landing-page-copy
      - sales-enablement

triggers:
  auto_suggest_when:
    - "icp-research AND competitor-research completed"
    - "user mentions positioning, differentiation, category"
  auto_run_when: null  # Always require confirmation

review_gate: 2  # Standard review (strategy output)

output_path: "marketing/product-marketing/"
---

# B2B positioning strategy

Develop clear, defensible positioning for B2B SaaS products. This skill helps founders and marketers answer the fundamental question: "Why should prospects choose you over the alternatives?"

---

## Process Flowchart

```text
┌──────────────────────────────────────────────────────────────┐
│                    POSITIONING PROCESS                        │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 1: INPUT VALIDATION                                     │
│ □ Required: Website URL, Company/Product name                 │
│ □ Optional: icp-research, competitor-research, win-loss         │
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

## Claude Code Triggers

**Invoke this skill when user says:**
- "Help me position [product/company]"
- "What category should we be in?"
- "How do I differentiate from [competitor]?"
- "Our homepage isn't converting — help with positioning"
- "Should we niche down or go broad?"
- "How do I explain what we do?"
- "Positioning strategy for [company]"
- "Our messaging is confusing"
- "Multi-product positioning help"

**Do NOT invoke when:**
- User wants landing page copy directly → Use `landing-page-copy` skill
- User wants full messaging library → Use `product-messaging` skill first
- User wants competitor research only → Use `competitor-research` skill
- User wants ICP research only → Use `icp-research` skill

---

## Input Requirements

### Required Inputs

| Input | Description | Source |
|-------|-------------|--------|
| **Company/Product** | Name and basic description | User provides |
| **Website URL** | Primary product website | User provides |

### Optional Inputs (improve quality)

| Input | How It Helps | Source Skill |
|-------|--------------|--------------|
| ICP research | Sharpens persona and problem anchors | `icp-research` output |
| Competitor research | Enables competitive alternative mapping | `competitor-research` output |
| Win/loss analysis | Reveals actual decision criteria and objections | `win-loss-analysis` output |
| Sales feedback | Shows what's working/not in conversations | User provides |

### Input Validation Checklist

Before proceeding, verify:

- [ ] Website URL is accessible and fetchable
- [ ] Company/product name confirmed
- [ ] Founder type identified (customer-focused, technology-focused, or competition-focused)

**If inputs are missing:** Ask for website URL. Offer to run research skills first to assess current positioning clarity.

---

## Skill Integration Map

### Positioning as upstream input

This skill produces outputs that feed into other PMM skills:

| Output | Feeds Into | How It's Used |
|--------|------------|---------------|
| Positioning statement | `product-messaging` | Shapes description and core blocks |
| Primary/secondary anchors | `landing-page-copy` | Informs hero headline formula |
| Differentiators | `sales-enablement` | Powers battlecard positioning |
| Competitive alternatives | `competitor-research` | Focuses competitive analysis |
| Market focus decision | `icp-research` | Narrows persona research scope |

### Positioning as downstream consumer

This skill can consume outputs from other PMM skills:

| Input From | How Positioning Uses It |
|------------|------------------------|
| `icp-research` | Persona anchors, pain point language |
| `competitor-research` | Competitive alternative mapping |
| `win-loss-analysis` | Real objections, decision criteria |

### Recommended workflow sequences

**Sequence 1: Greenfield positioning (no prior research)**
```
positioning → product-messaging → landing-page-copy
```

**Sequence 2: Research-informed positioning**
```
icp-research → competitor-research → positioning → product-messaging
```

---

## Core Positioning Frameworks

### Framework 1: Positioning Anchors (The Fletch Method)

**Positioning anchors** are reference points that help an audience mentally classify what a product is using familiar concepts. By grounding the unfamiliar in the familiar, positioning anchors establish the baseline context necessary for a value-based conversation to occur.

#### Type 1: Primary Anchors (Sufficient Definition)

Primary anchors provide a **sufficient definition** of the product **in isolation** that lets someone mentally classify what your product is. When a customer asks "what is your product?", primary anchors provide sufficient context.

| Primary Anchor | Definition | Example | Customer Response |
|----------------|------------|---------|-------------------|
| **Activity** | Manual task the product replaces (no category exists yet) | "Loom is a way to record yourself" | "I get it!" |
| **Product Category** | Known software category | "Attio is a CRM" | "I get it!" |
| **Use Case** | Specific task + friction removed | "Calendly is for scheduling meetings over email" | "I get it!" |
| **Competitive Alternative** | Specific tool you replace | "Slack is an email-replacement" | "I get it!" |

**Activity vs Use Case distinction:** Activity positioning names the raw task ("record yourself") without specifying the friction it removes. Use Case positioning names the task AND the problem ("schedule meetings over email" — the problem is the back-and-forth). Activity works when no software category exists yet and buyers don't even have language for the problem. Use Case works when buyers recognize the friction but haven't found a dedicated solution.

**Primary anchors are not optional.** They are the cognitive entry point that enables all downstream messaging about benefits, differentiation, or ROI.

#### Type 2: Secondary Anchors (Descriptive Context)

Secondary anchors provide **descriptive context** that helps clarify or enrich the positioning, but **doesn't classify what the product is** on their own. When used alone, customers still ask "but what is it?"

| Secondary Anchor | Definition | Example (Insufficient) | Customer Response |
|------------------|------------|------------------------|-------------------|
| **Company Type** | Business segment | "Slack is for small businesses" | "but what is it?" |
| **Department** | Team or role | "Attio is for salespeople" | "but what is it?" |
| **Desired Outcome** | Benefit or result | "Calendly saves you time" | "but what is it?" |

**Critical insight:** Stacking secondary anchors is still inadequate. "Attio helps salespeople in small businesses save time" → Customer: "I still don't get what it is."

#### Combining Primary + Secondary = Maximum Clarity

The most effective positioning combines primary anchors (what it is) with secondary anchors (who it's for, what it does):

**Example: FletchPMM positioning**
> "FletchPMM is a **PMM Consultancy** [Primary: Product Category] that helps **Marketers** [Secondary: Department] in **B2B Software Companies** [Secondary: Company Type] **position their products** [Primary: Use Case]"

| Anchor Combination | Resulting Message |
|--------------------|-------------------|
| Category + Persona | "Positioning consultancy for B2B SaaS" |
| Use case + Problem | "Homepage messaging for startups with confusing positioning" |
| Competitive alt + Differentiation | "April Dunford's framework, but with done-for-you execution" |

#### Three Rules for Using Anchors Well

**Rule 1: Choose the right level of clarity (specificity matters)**

| Anchor Type | Vague (Fails) | Specific (Works) |
|-------------|---------------|------------------|
| Activity | "Working" → "we help you work" | "Recording yourself" → "we help you record yourself" |
| Product Category | "Software" → "we are a software company" | "CRM" → "we are a CRM" |
| Use Case | "Running a business" → "we help you run your business" | "Composing an email" → "we help you compose emails" |
| Competitive Alternative | "Traditional tools" → "we replace traditional tools" | "Arc Browser" → "we're an Arc Browser-replacement" |

**Rule 2: Choosing an anchor is (indirectly) choosing a market segment**

| Anchor Choice | Market Segment | Tradeoff |
|---------------|----------------|----------|
| Competitive Alt: "We are a Clay-alternative" | Appeals to market aware of Clay | Doesn't appeal to market that doesn't know Clay |
| Use Case: "We are a way to enrich your CRM" | Appeals to market wanting to do a task | Potentially not including Clay |

**Rule 3: Layer anchors strategically to create a more specific ICP**

Each additional anchor narrows your target:
- "People updating their coworkers" [Use Case] → broadest
- "...by having meetings" [Competitive Alternative] → narrower
- "...on a sales team" [Department] → narrower still
- "...in small businesses" [Company Type] → most specific ICP

---

### Framework 2: Unique Value (Problem + Differentiation)

**Unique Value = Customer's Problem + Your Differentiated Way of Solving It**

To articulate unique value, you need to **link a key problem to one of your primary anchors**:

| Primary Anchor | Problem Link | Example |
|----------------|--------------|---------|
| Activity | Problem with doing it manually | "Recording a Loom is way faster than writing long emails to explain things" |
| Product Category | Problem with the category | "CDPs are inflexible & lead to vendor lock-in" |
| Competitive Alternative | Problem with the alternative | "LinkedIn's Inbox is annoying & slow to use" |
| Use Case | Problem with accomplishing the task | "Getting SOC 2 compliant is incredibly time-consuming" |

**The formula:** [Primary Anchor] + [Problem with that anchor] + [Your differentiated solution]

---

### Framework 3: The Binary Positioning Choice (Category vs Problem)

Every B2B product must choose one of two fundamental strategies:

**Strategy A: Category positioning**
- Position within an existing, known category ("shelf")
- Differentiate within that category
- Easier to explain, harder to differentiate
- Best for: Mature markets, known problems

**Strategy B: Problem/use-case positioning**
- Position around a specific workflow or job-to-be-done
- Create differentiation through focus
- Harder to explain, easier to differentiate
- Best for: Emerging markets, new approaches

**The key insight:** Both strategies can work, but they have different tradeoffs. You must consciously choose one as your primary approach.

---

### Framework 4: Three Founder Positioning Types

After working with 350+ startups, Fletch identified three founder types — each requiring a different positioning approach:

**1. Customer-focused founders**
- Dead set on helping a specific group of people (often from their industry)
- Deep insight into customer struggles
- **Approach:** Start with target audience → map workflows → identify competitive alternatives → layer on differentiation

**2. Technology-focused founders**
- Dead set on applying a technology breakthrough (often AI)
- Endless market applications, no strong ICP conviction
- **Approach:** Start with unique product capabilities → work backwards to spotlight weak competitive alternatives → map who uses those alternatives

**3. Competition-focused founders**
- Dead set on disrupting a specific market category
- Direct experience with incumbent products' problems
- **Approach:** Start with competitive alternative → document its weaknesses → position directly against it

---

### Framework 5: The Homepage Clarity Test

Your hero section must answer ONE of these two questions:

1. **"Which of my tools does this replace?"** → Category-based clarity
2. **"Which tasks in my job would this help me with?"** → Problem-based clarity

**The 5-second test:**

- Read only H1 + H2 of any homepage
- If you can't answer one of these questions, the positioning is unclear
- "Platform" alone never passes this test

**What passes:**
- "Salesforce = CRM" (category)
- "Gong = Call Recording" (category)
- "Notion = All-in-one workspace for docs, wikis, and projects" (task)

**What fails:**
- "The platform for modern teams"
- "Unlock your potential with AI"
- "Enterprise-grade solutions"

---

### Framework 6: Competitive Alternatives Matrix

Before positioning, map all alternatives buyers consider:

| Alternative Type | Example | How to Position Against |
|------------------|---------|------------------------|
| **Manual/DIY** | Spreadsheets, email | Speed, accuracy, scale |
| **Legacy incumbent** | Salesforce, SAP | Modern UX, faster implementation |
| **Direct competitor** | Same-category startup | Feature superiority, focus |
| **Adjacent tool** | Tool that partially solves | Depth, specialization |
| **Status quo** | Doing nothing | Cost of inaction |

---

### Framework 7: Niche Market Positioning

**The $100M niche reality:**
- $1,000 ACV → 100,000 customers needed
- $10,000 ACV → 10,000 customers needed
- $100,000 ACV → 1,000 customers needed

**Five focus strategies for niche positioning:**
1. **One persona** — "CRM for recruiters"
2. **One ecosystem** — "Analytics for Shopify"
3. **One use case** — "Contract review automation"
4. **One industry** — "ERP for construction"
5. **One attribute** — "The fastest [category]"

**When niching is NOT required:**
1. You're in a winner-take-all market with network effects
2. You have massive funding to outspend on awareness
3. Category is so nascent you need to educate broadly
4. You're doing M&A strategy (buying niches vs building)
5. Product is truly horizontal (like Slack, Zoom)

---

### Framework 8: Category Entry Strategies

**For mature categories:**
1. Don't pitch as if you're first — acknowledge the category leader
2. Differentiation must be INSTANTLY apparent
3. Add a modifier to known category (like "smartphone") — don't coin new terms
4. Never say "Intelligent [Category] Management" — stay on the known shelf

**For emerging categories:**
- Link to adjacent known categories
- Lead with the problem, not the solution
- Use analogies sparingly and only when helpful

---

### Framework 9: The Differentiation Test

**Business outcomes alone don't differentiate:**
> "Every B2B service or product is already assumed to help someone make more money, save money, or save time. Saying those magic words doesn't differentiate you."

**What differentiates:**
1. **Unique delivery mechanism** — HOW you deliver results
2. **Guarantees** — Willing to put money where mouth is
3. **Focus** — Specificity that competitors can't/won't match
4. **Proprietary asset** — Data, technology, or methodology

**The guarantee test:**
> "Are you willing to guarantee the outcome? If not, you want prospects to feel like results are guaranteed without you being willing to guarantee them."

---

### Framework 10: Emerging Market Positioning

For products creating new categories or in nascent markets:

**The dual strategy requirement:**

New markets require TWO different positioning strategies running in parallel:

1. **Product positioning** — For people already in the emerging market
   - Explains why you're the best solution in the category
   - Goal: Pull prospects into your pipeline

2. **Market education** — For people not yet in the market
   - Educates on why this approach matters
   - Goal: Pull prospects into the market itself

**Key insight:** You cannot use ONE message for both audiences. The in-market audience needs differentiation; the out-of-market audience needs education first.

---

### Framework 11: Multi-Product Homepage Strategies

Three approaches for multi-product companies:

**1. Lead with flagship**
- Feature one product prominently in hero
- Secondary products below fold
- Best when: One product drives majority of revenue

**2. Unified umbrella**
- Position the suite/platform as the product
- Individual products as features
- Best when: Cross-sell is primary motion

**3. Segment by persona**
- Different entry points for different buyers
- Navigation-first approach
- Best when: Products serve distinct ICPs

---

### Framework 12: Validating New Positioning

For sales-led startups:

1. **Create positioning hypothesis** — Document current vs. proposed
2. **Test in sales conversations** — A/B test messaging in discovery calls
3. **Track conversion changes** — Demo-to-close rate
4. **Gather objection data** — What new objections emerge?
5. **Iterate before website** — Website is expensive to change

---

### Framework 13: Anchor Selection Decision Tree

A top-down sequential test for rapid anchor orientation before detailed scoring in Phase 2.

**Step 0: Leader Dominance Test**
→ Is there a single dominant leader owning 40%+ of buyer mindshare?
→ Do you have a clear wedge against that leader?
→ IF YES to both → Start with **Competitive Alternative** anchor

**Step 1: Category Awareness Test**
→ When prospects describe what they need, do they use a known category name?
→ Do they Google a specific software category, compare vendors on G2/Capterra?
→ IF YES → Start with **Product Category** anchor

**Step 2: Problem Articulation Test**
→ Can prospects describe the specific friction/pain they experience?
→ Do they have language for the problem, just not for the solution category?
→ IF YES → Start with **Use Case** anchor

**Step 3: Manual Behavior Test**
→ Are prospects solving this with manual work (spreadsheets, email, meetings)?
→ Is there no established software category for this task?
→ IF YES → Start with **Activity** anchor

**Market maturity alignment:**

| Anchor | Market Maturity | Buyer Awareness | Typical Alternative |
|--------|-----------------|-----------------|---------------------|
| Activity | Pre-market | Low — no category language | Manual/DIY processes |
| Use Case | Emerging | Medium — problem language, no category | Broken workflows, workarounds |
| Product Category | Established | High — category language exists | Direct competitors |
| Competitive Alternative | Mature | Very high — dominant leader exists | Named market leader |

**Important:** This tree produces a hypothesis, not a final answer. The detailed anchor scoring in Step 2.4 validates or overrides this initial read.

---

### Framework 14: Secondary Angle Archetypes

After selecting a primary anchor, choose a secondary angle that sharpens differentiation. Select a maximum of 2.

| Angle Archetype | Formula | Example | When It Works |
|-----------------|---------|---------|---------------|
| **Niche Down** | "[Primary anchor] built for [specific segment]" | "CRM built for recruiters" | ICP is sharply defined, generalists fail them |
| **Low-Cost Player** | "[Primary anchor] without [expensive pain]" | "CDP without enterprise pricing" | Incumbents are overpriced for segment |
| **Premium Player** | "The most advanced [primary anchor]" | "The most advanced sales engagement platform" | Buyers will pay for best-in-class |
| **Unique Attribute** | "Only [primary anchor] with [exclusive capability]" | "Only CRM with native WhatsApp" | You have a genuinely exclusive feature |
| **Lite Version** | "A lightweight way to [primary anchor activity]" | "A lightweight way to manage contracts" | Existing tools are bloated for use case |

**Relationship to Framework 9 (Differentiation Test):**
- Framework 14 selects the ANGLE (what type of positioning play)
- Framework 9 validates the EVIDENCE (is it defensible?)

---

### Framework 15: Proof Type Mapping per Anchor

Each primary anchor type demands a different evidence strategy.

| Primary Anchor | Best Proof Type | What It Demonstrates | Example |
|----------------|-----------------|---------------------|---------|
| **Activity** | Before → After transformation | Life before software vs. after | "Teams spent 4hrs/week on manual reports. Now it's automated in 10 minutes." |
| **Use Case** | Workflow power + Outcome proof | End-to-end capability AND measurable result | "Cut contract review from 2 hours to 10 minutes with 95% accuracy." |
| **Product Category** | Comparative proof | Head-to-head advantage over category peers | "3x faster implementation than Salesforce, same feature depth." |
| **Competitive Alternative** | Switch & Upgrade proof | Migration story + what they gained | "Switched from [Leader] in 2 weeks. Gained [capability] they didn't have." |

---

## Process (Step-by-Step)

### Phase 1: Discovery & Current State

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

### Phase 2: Anchor & Alternative Mapping

**Purpose:** Map positioning anchors and competitive alternatives.

**Steps:**

1. **Step 2.1: Map potential positioning anchors**
   - Activity anchors (what manual work do they replace? No category exists yet?)
   - Product category anchors (what shelf could they be on?)
   - Use case/workflow anchors (what tasks do they enable, what friction do they remove?)
   - Problem anchors (what pain do they solve?)
   - Persona anchors (who specifically do they serve?)
   - Competitive alternative anchors (what do they replace?)
   - **Output:** Anchor options matrix (6 types x 2-3 options each)

2. **Step 2.2: Map competitive alternatives**
   - Manual/DIY: How do prospects solve this without software?
   - Legacy incumbent: Who's the "Salesforce" of this space?
   - Direct competitors: Same-category startups
   - Adjacent tools: Partial solutions from other categories
   - Status quo: What happens if they do nothing?
   - **Output:** Competitive alternatives matrix with positioning angles

3. **Step 2.3: Run anchor selection decision tree (quick diagnostic)**
   - Run the Esner Decision Tree (Framework 13) sequentially
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

### Phase 3: Strategy Selection

**Purpose:** Make the key positioning decisions.

**Steps:**

1. **Step 3.1: Select binary strategy**
   - Category positioning OR Problem/use-case positioning
   - Document rationale based on market maturity and founder type
   - **Output:** Primary strategy with reasoning

2. **Step 3.2: Select primary anchor, secondary anchor, and secondary angle**
   - Primary anchor: Main reference point from Framework 1 (drives H1)
   - Secondary anchor: Supporting context from Framework 1 (drives H2)
   - Secondary angle archetype: Differentiation type from Framework 14 — max 2
   - Validate decision tree hypothesis against scoring results
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
   - For each differentiator:
     - Would you guarantee this outcome with money on the line?
     - What evidence supports it?
     - Verdict: Pass / Fail / Partial (with conditions)
   - Cross-reference proof type: Does evidence match the recommended proof type for your primary anchor? (See Framework 15)
   - **Output:** Guarantee test table

8. **Step 3.8: Map strategic implications**
   - For each strategy decision, document what it implies for:
     - Messaging direction (what to lead with, what to avoid)
     - ICP sharpening (which segments to prioritize based on anchor choices)
     - Competitive counter-positions (per-competitor response)
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

---

## Output Format

### Standard Output Structure

```markdown
# Positioning strategy: [Company Name]

**Date:** YYYY-MM-DD
**Website:** [URL]
**Founder type:** [Customer-focused / Technology-focused / Competition-focused]

---

## Phase 1: Current state assessment

### 5-second clarity test

**Current H1:** "[Verbatim H1]"
**Current H2:** "[Verbatim H2]"

**Result:** Pass/Fail
**Rationale:** [Does it answer tool replacement OR task help?]

### Current positioning extraction

| Element | Current State | Assessment |
|---------|---------------|------------|
| Category claimed | [X] | Clear/Unclear/Missing |
| Differentiation claimed | [X] | Defensible/Generic/Missing |
| ICP claimed | [X] | Specific/Broad/Missing |
| Problem claimed | [X] | Acute/Vague/Missing |

---

## Phase 2: Anchor & alternative mapping

### Positioning anchor options

| Anchor Type | Option 1 | Option 2 | Option 3 |
|-------------|----------|----------|----------|
| Activity | [X] | [Y] | [Z] |
| Product category | [X] | [Y] | [Z] |
| Use case/workflow | [X] | [Y] | [Z] |
| Problem | [X] | [Y] | [Z] |
| Persona | [X] | [Y] | [Z] |
| Competitive alternative | [X] | [Y] | [Z] |

### Anchor selection hypothesis (decision tree)

**Decision tree result:** [Activity / Use Case / Product Category / Competitive Alternative]
**Reasoning:** [Which test triggered YES and why]
**Confidence:** [High / Medium / Low]

### Competitive alternatives matrix

| Type | Alternative | Their Weakness | Your Angle |
|------|-------------|----------------|------------|
| Manual/DIY | [X] | [Y] | [Z] |
| Legacy incumbent | [X] | [Y] | [Z] |
| Direct competitor | [X] | [Y] | [Z] |
| Adjacent tool | [X] | [Y] | [Z] |
| Status quo | [X] | [Y] | [Z] |

### Top anchor combinations (scored)

| Primary | Secondary | Clarity | Differentiation | Relevance | Total |
|---------|-----------|---------|-----------------|-------------|-------|
| [X] | [Y] | 4/5 | 5/5 | 3/5 | 12/15 |

**Market maturity:** Emerging / Mature

---

## Phase 3: Strategy decisions

### Binary strategy: [Category / Problem-Use Case]

**Rationale:** [Why this strategy given market maturity and founder type]

### Selected anchors

**Primary anchor:** [X] — [Why this anchor]
**Secondary anchor:** [Y] — [Why this anchor]
**Secondary angle:** [Niche / Low-Cost / Premium / Unique Attribute / Lite] — [Why this angle]
**Decision tree alignment:** [Confirmed / Overridden — explain if scoring diverged from hypothesis]

### Differentiators (not just outcomes)

1. **[Differentiator 1]:** [Description]
   - Type: Delivery mechanism / Guarantee / Focus / Proprietary asset
   - Would you guarantee this? Yes/No

2. **[Differentiator 2]:** [Description]
   - Type: [X]
   - Would you guarantee this? Yes/No

### Market focus: [Broad / Niche]

**Focus strategy (if niche):** Persona / Ecosystem / Use case / Industry / Attribute

**TAM reality check:**
- Target ACV: $[X]
- Customers needed for $[Y]M: [Z]
- Available market: [Assessment]

### Primary competitive alternative

**Position against:** [X]
**Key weakness to exploit:** [Y]

### Clarity ladder

| Level | Statement | Test |
|-------|-----------|------|
| **One word** | [X] | Does it capture the essence? |
| **One phrase** | [X] | Is it differentiated? |
| **One sentence** | [X] | Clear in 5 seconds? |
| **One paragraph** | Full positioning statement | Answers all questions? |

### Positioning statements (anchor-specific)

**Internal narrative (strategic foundation):**

| Primary Anchor | Statement Template |
|----------------|-------------------|
| Activity | "We help [persona] [do activity] — replacing [manual process] with [product mechanism]." |
| Use Case | "We help [persona] [accomplish use case] without [key friction] — by [differentiated approach]." |
| Product Category | "We are a [category] that [key differentiator] — unlike [competitive alternative] which [weakness]." |
| Competitive Alternative | "We're a [leader]-alternative that [key upgrade] — for [persona] who [unmet need]." |

**One-sentence positioning (external use):**

> "[Statement using template above, compressed to one sentence]"

### Guarantee test

| Differentiator | Evidence | Proof Type Match | Verdict |
|----------------|----------|------------------|---------|
| [Differentiator 1] | [Evidence] | [Aligned / Misaligned] | Pass / Fail / Partial |

### Strategic implications

| Dimension | Implication | How to apply |
|-----------|-------------|--------------|
| Messaging | [What to lead with, what to avoid] | [Direction for product-messaging] |
| ICP | [Which segments to prioritize] | [Direction for icp-research] |
| Competitive | [Per-competitor counter-positions] | [Direction for sales-enablement] |

### Channel emphasis guidance

| Channel / Context | Typical Emphasis | Example |
|-------------------|------------------|---------|
| Homepage hero | Primary anchor (clearest classification) | Category or Use Case statement |
| Thought leadership / LinkedIn | Activity or Use Case (problem education) | "Most teams still do X manually..." |
| Comparison pages / G2 | Competitive Alternative (direct positioning) | "Unlike [Leader], we..." |
| Sales discovery calls | Use Case or Activity (pain exploration) | "How are you currently handling X?" |
| Case studies | Proof type matching primary anchor | Before/After, Switch story, etc. |

---

## Validation recommendations

| Test | Method | Success Metric |
|------|--------|----------------|
| Sales conversation test | A/B test messaging in discovery calls | Demo-to-close rate |
| Homepage A/B test | Test new hero vs. current | Scroll depth, CTA clicks |
| Customer recognition | Ask customers "what do we do?" | Consistent answers |

---

## Next steps

- [ ] Test positioning in 5-10 sales conversations before website changes
- [ ] Run `product-messaging` skill with this positioning as input
- [ ] Run `landing-page-copy` skill for full page copy
- [ ] Align team on one-liner (which version for which context)

---

## Source appendix

| # | URL | Content Type | Access Date |
|---|-----|--------------|-------------|
| 1 | [Homepage URL] | Homepage | [Date] |
```

---

## Anti-Patterns to Avoid

| Pattern | Why It Fails | Better Approach |
|---------|--------------|-----------------|
| "Platform for X" alone | Doesn't explain what it does | Add what the platform enables |
| "AI-powered" as differentiator | Everyone says this now | Focus on outcome AI enables |
| "Best in class" | Unsubstantiated claim | Specific, provable differentiator |
| Listing 10+ use cases | Confuses, doesn't position | Lead with 1-2, expand later |
| New category coining | Moves you off known shelf | Modifier on known category |
| Business outcome only | Table stakes, not differentiator | HOW you deliver the outcome |

---

## Self-Evaluation Protocol

After generating positioning output, automatically run these checks:

### Completeness Check
- [ ] All 3 phases complete (Discovery, Anchors, Strategy)?
- [ ] Anchor decision tree hypothesis recorded and validated against scoring?
- [ ] Secondary angle archetype selected (Framework 14)?
- [ ] Clarity ladder passes at all four levels?
- [ ] Strategic implications mapped?

### Evidence Quality Check
- [ ] Differentiators are defensible (not just outcomes)?
- [ ] All differentiators have formal guarantee test verdicts?
- [ ] Proof types aligned to primary anchor (Framework 15)?
- [ ] Competitive alternatives based on actual market research?
- [ ] Market focus TAM math is realistic?

### Guardrail Check
- [ ] No "platform for X" without explaining what platform enables?
- [ ] No invented category names?
- [ ] No "AI-powered" as primary differentiator?
- [ ] No business outcomes alone as differentiation?
- [ ] No more than 3 differentiators (focus)?

### Self-Roast Questions

1. "If Anthony Pierri reviewed this, what would he flag as lazy positioning?"
2. "Does the 5-second test really pass, or am I being generous?"
3. "Are these differentiators truly unique, or could any competitor claim them?"
4. "Would a prospect immediately understand what this product replaces?"
5. "Is the market focus decision backed by real TAM math or hopeful thinking?"

---

## Integration with Other Skills

### Positioning feeds INTO these skills

| Skill | What It Receives | How It Uses It |
|-------|------------------|----------------|
| **product-messaging** | Positioning statement, anchors, differentiators | Shapes description, core messaging blocks |
| **landing-page-copy** | Hero recommendation, one-liners | Hero section, headline formulas |
| **sales-enablement** | One-liners, competitive alternatives, differentiators | Battlecard positioning, objection handling |

### Positioning receives FROM these skills

| Skill | What It Provides | How Positioning Uses It |
|-------|------------------|------------------------|
| **icp-research** | Personas, pain points, VOC | Persona anchors, problem language |
| **competitor-research** | Competitive landscape, gaps | Alternative mapping, differentiation |
| **win-loss-analysis** | Decision criteria, objections | Real-world validation, angles |

### Complete PMM workflow

```text
RESEARCH PHASE
┌─────────────┐    ┌──────────────────┐
│ icp-research │───▶│ competitor-      │
└─────────────┘    │ research         │
                   └────────┬─────────┘
                            │
STRATEGY PHASE              ▼
                   ┌──────────────────┐
                   │   POSITIONING    │ ◀── You are here
                   │   (this skill)   │
                   └────────┬─────────┘
                            │
EXECUTION PHASE             ▼
┌─────────────┐    ┌──────────────────┐    ┌─────────────┐
│landing-page-│◀───│ product-messaging│───▶│sales-       │
│copy         │    │                  │    │enablement   │
└─────────────┘    └──────────────────┘    └─────────────┘
```

---

## Changelog

| Version | Date | Changes |
|---------|------|---------|
| 2.4 | 2026-03-03 | Added Activity as 4th primary anchor. Added Frameworks 13-15 (Decision Tree, Angle Archetypes, Proof Type Mapping). Enhanced Steps 2.3, 3.2, 3.7. |
| 2.3 | 2026-02-22 | Added clarity ladder, guarantee test table, strategic implications mapping |
| 2.2 | 2026-02-16 | Removed Phase 4 outputs (handled by downstream skills) |
| 2.1 | 2026-01-21 | Enhanced anchor taxonomy, added Unique Value framework |
| 2.0 | 2026-01-21 | Agentic enhancements: YAML frontmatter, flowchart, self-evaluation |
| 1.0 | 2026-01-21 | Initial skill from Fletch PMM database (94 posts synthesized) |
