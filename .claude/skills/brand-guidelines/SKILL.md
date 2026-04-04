---
name: brand-identity-guidelines
version: "2.0"
author: genesys-growth
last_updated: 2026-01-16
output_path: "marketing/brand/"
description: |
  Use when extracting design system from existing website for reproduction.
  Use when vibe-coding needs brand tokens (colors, typography, components).
  Use when user mentions "brand guidelines", "design system", or "extract styles".
  Use when building landing pages that match existing brand.
---

# Brand Identity Guidelines

Extract comprehensive design systems from any website URL, with rich visual descriptions for AI-assisted design reproduction and structured tokens for implementation.

---

## Process Flowchart

### Overview

```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│   FETCH &   │───▶│  EXTRACT    │───▶│   VISUAL    │───▶│  GENERATE   │───▶│   REVIEW    │
│   DETECT    │    │   TOKENS    │    │ DESCRIPTION │    │   OUTPUT    │    │   & CHAIN   │
└─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘
```

### Detailed Steps

```
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ INPUT VALIDATION                                                                             │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ Required: Website URL                                                                        │
│ Optional: Brand PDF, specific pages, design tool preference, project context                 │
│ → If missing: Ask for website URL, offer to analyze multiple pages                           │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ PHASE 1: FETCH & PLATFORM DETECTION                                                          │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ Fetch website (/, /about, /pricing)                                                        │
│ □ Detect platform (Framer, Webflow, Next.js, WordPress, Squarespace, Custom)                 │
│ □ Set extraction strategy per platform                                                       │
│ ✓ Checkpoint: Website fetched, platform detected, strategy determined                        │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ PHASE 2: DESIGN TOKEN EXTRACTION                                                             │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ Typography (fonts, sizes, weights, line heights)                                           │
│ □ Colors (brand, neutrals, semantic, gradients)                                              │
│ □ Effects (border radius, shadows, borders, backdrop blur)                                   │
│ □ Spacing (base unit, scale, containers, breakpoints)                                        │
│ □ Components (buttons, cards, inputs, navigation)                                            │
│ □ Animations (transitions, hovers, keyframes)                                                │
│ ✓ Checkpoint: All tokens extracted with confidence scores (0-5)                              │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ PHASE 3: VISUAL DESCRIPTION                                                                  │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ Mood & atmosphere (emotional feeling)                                                      │
│ □ Visual metaphor (what design evokes)                                                       │
│ □ Color story (hierarchy & flow)                                                             │
│ □ Typography personality, signature elements, motion philosophy                              │
│ ✓ Checkpoint: Description captures essence, metaphors specific, reproducible by AI          │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ PHASE 4: OUTPUT GENERATION                                                                   │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ Generate CSS variables                                                                     │
│ □ Generate Tailwind config (if applicable)                                                   │
│ □ Document gaps and assumptions                                                              │
│ ✓ Checkpoint: CSS variables generated, implementation code provided, gaps documented         │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ SELF-EVALUATION                                                                              │
├─────────────────────────────────────────────────────────────────────────────────────────────┤
│ □ All primary colors extracted with confidence ≥3?                                           │
│ □ Font families identified with sources?                                                     │
│ □ Visual metaphor specific and memorable?                                                    │
│ → If issues: Note low-confidence tokens, recommend verification                              │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
        │
        ▼
┌────────────────────────────────────────────┬────────────────────────────────────────────────┐
│ REVIEW GATE: Level 1 (Quick Review)        │ CHAIN SUGGESTIONS                              │
├────────────────────────────────────────────┼────────────────────────────────────────────────┤
│ Present: Visual description, token tables, │ → landing-page-copy (design handoff)           │
│          CSS variables, confidence scores  │ → tov-guidelines (often run together)          │
│ Actions: [Approve] [Extract more] [Verify] │ → company-context (part of company research)   │
└────────────────────────────────────────────┴────────────────────────────────────────────────┘
```

---

## Claude Code Triggers

**Invoke this skill when user says:**
- "extract brand guidelines from [URL]"
- "brand identity for [company]"
- "design system extraction"
- "get colors and fonts from [URL]"
- "brand audit for [URL]"
- "extract brand from website"
- "design guidelines for [company]"
- "visual identity extraction"
- "brand style guide from [URL]"
- "get brand assets from [URL]"
- "vibe coding reference for [URL]"
- "design tokens from [URL]"

**Do NOT invoke when:**
- User wants TOV/voice guidelines (use `tov-guidelines` skill)
- User wants messaging/positioning (use `product-messaging` skill)
- User wants to create content, not extract brand (use appropriate content skill)
- User wants competitor analysis (use `competitor-research` skill)

---

## Input Requirements

### Required Inputs

| Input | Description | Source |
|-------|-------------|--------|
| **Website URL** | Primary company website to extract from | User specification |

### Optional Inputs (improve quality)

| Input | How It Helps |
|-------|--------------|
| Brand PDF/guidelines | Validates extraction accuracy |
| Specific pages to analyze | Focuses extraction |
| Design tool preference | Formats output appropriately |
| Project context | Prioritizes relevant elements |

### Input Validation Checklist

Before proceeding, verify:
- [ ] Website URL is valid and accessible
- [ ] Website has sufficient design content to extract
- [ ] Website is not behind authentication

**If inputs are missing:** Ask user for website URL. Offer to analyze multiple pages for comprehensive extraction.

---

## Process (Step-by-Step)

### Phase 1: Fetch and Platform Detection

**Purpose:** Access the website and determine extraction strategy.

**Steps:**

1. **Step 1.1: Fetch the website**
   - Use web fetch to retrieve the homepage and key pages (e.g., /about, /pricing)
   - Capture the full HTML and CSS content for analysis
   - **Output:** HTML/CSS content captured

2. **Step 1.2: Detect platform and set strategy**
   | Platform | Detection Signal | Extraction Strategy |
   |----------|------------------|---------------------|
   | Framer | `framerusercontent.com` URLs | Visual analysis fallback |
   | Webflow | `.w-` class prefixes | Check compiled CSS |
   | Next.js | `_next/static/` paths | Parse CSS files |
   | WordPress | `/wp-content/themes/` | Theme CSS files |
   | Squarespace | `squarespace.com` assets | Visual analysis fallback |
   | Custom/Tailwind | CSS variables, utility classes | Direct extraction |
   - **Output:** Platform identified, strategy selected

**Phase 1 Checkpoint:**
- [ ] Website content fetched
- [ ] Platform detected
- [ ] Extraction strategy determined

### Phase 2: Design Token Extraction

**Purpose:** Extract all design tokens with confidence scoring.

**Steps:**

1. **Step 2.1: Extract typography**
   | Element | Property | How to Extract |
   |---------|----------|----------------|
   | Font families | CSS `font-family` | Google Fonts imports, CSS variables |
   | Size scale | `font-size` | CSS variables, computed styles |
   | Weights | `font-weight` | CSS files, @font-face declarations |
   | Line heights | `line-height` | CSS variables, element styles |
   | **Output:** Typography system with confidence scores

2. **Step 2.2: Extract color palette**
   | Category | What to Find |
   |----------|--------------|
   | Brand colors | Primary, secondary, accent |
   | Neutrals | Backgrounds, text, borders |
   | Semantic | Success, warning, error, info |
   | Gradients | Linear, radial specifications |
   - Check: `<meta name="theme-color">`, CSS variables, computed styles
   - **Output:** Color palette with hex/RGB values

3. **Step 2.3: Extract effects**
   - Border radius scale
   - Shadow elevations (full box-shadow values)
   - Border styles
   - Backdrop blur (for glassmorphism)
   - **Output:** Effects specifications

4. **Step 2.4: Extract spacing**
   - Base unit identification
   - Spacing scale
   - Container widths
   - Breakpoints
   - **Output:** Spacing system

5. **Step 2.5: Extract components**
   | Component | Properties to Capture |
   |-----------|----------------------|
   | Buttons | Background, text, border, radius, padding, hover |
   | Cards | Background, border, shadow, padding, radius |
   | Inputs | Background, border, padding, focus state |
   | Navigation | Link colors, active states, hover |
   - **Output:** Component specifications

6. **Step 2.6: Extract animations**
   - Transition durations and easings
   - Hover effects
   - Keyframe animations
   - **Output:** Motion specifications

**Confidence Scoring:**
| Score | Meaning |
|-------|---------|
| 5 | Directly extracted from CSS/code, exact match |
| 4 | From code with minor inference |
| 3 | Strong visual evidence, high confidence |
| 2 | Reasonable inference from patterns |
| 1 | Approximated, needs verification |
| 0 | Unknown, placeholder value |

**Phase 2 Checkpoint:**
- [ ] Typography extracted with confidence scores
- [ ] Color palette complete
- [ ] Effects documented
- [ ] Components captured

### Phase 3: Visual Description

**Purpose:** Write natural language description for vibe coding reproduction.

**Steps:**

1. **Step 3.1: Describe mood and atmosphere**
   - Emotional feeling: dark & moody, light & airy, bold & confident, warm & inviting, cold & clinical, playful & energetic
   - **Output:** Mood description

2. **Step 3.2: Create visual metaphors**
   - What does this design evoke?
   - Examples: "a premium cinema lobby at night", "a clean Scandinavian workspace", "a high-end fashion editorial"
   - **Output:** Visual metaphor

3. **Step 3.3: Describe color story**
   - How colors create hierarchy and flow
   - Example: "deep navy anchors the page while electric purple accents draw the eye to CTAs"
   - **Output:** Color narrative

4. **Step 3.4: Describe typography personality**
   - The character of the text
   - Example: "sharp geometric sans-serif conveys precision", "soft rounded letters feel approachable"
   - **Output:** Typography character

5. **Step 3.5: Describe signature elements**
   - What makes this instantly recognizable
   - Examples: "gradient rays emanating from hero", "glassmorphic cards", "bold geometric patterns"
   - **Output:** Signature elements list

6. **Step 3.6: Describe motion philosophy**
   - How things move
   - Examples: "subtle and professional", "playful with bounce easing", "dramatic cinematic reveals"
   - **Output:** Motion description

**Phase 3 Checkpoint:**
- [ ] Visual description captures design essence
- [ ] Metaphors are evocative and specific
- [ ] Description is reproducible by AI tools

### Phase 4: Documentation Output

**Purpose:** Compile extraction into usable formats.

**Steps:**

1. **Step 4.1: Generate CSS variables**
   ```css
   :root {
     /* Colors */
     --color-primary: #XXXXXX;
     /* Typography */
     --font-heading: '[Font]', sans-serif;
     /* Spacing */
     --space-unit: Xpx;
     /* etc. */
   }
   ```
   - **Output:** CSS variables file

2. **Step 4.2: Generate Tailwind config (if applicable)**
   - **Output:** tailwind.config.js snippet

3. **Step 4.3: Document gaps and assumptions**
   - What couldn't be extracted
   - Assumptions made
   - Verification recommendations
   - **Output:** Gaps list

**Phase 4 Checkpoint:**
- [ ] CSS variables generated
- [ ] Implementation-ready code provided
- [ ] Gaps documented

---

## Core Frameworks

### Extraction Categories

```
TYPOGRAPHY             COLORS                 EFFECTS
─────────────────────  ─────────────────────  ─────────────────────
• Font families        • Brand (pri/sec/acc)  • Border radius
• Size scale           • Neutrals             • Shadows
• Weights              • Semantic             • Borders
• Line heights         • Gradients            • Backdrop blur

SPACING                COMPONENTS             ANIMATIONS
─────────────────────  ─────────────────────  ─────────────────────
• Base unit            • Buttons              • Transitions
• Scale                • Cards                • Hover effects
• Containers           • Inputs               • Keyframes
• Breakpoints          • Navigation           • Easings
```

### Visual Description Framework

| Element | Question to Answer |
|---------|-------------------|
| **Mood** | What's the emotional feeling? |
| **Metaphor** | What does this design evoke? |
| **Color story** | How do colors create hierarchy? |
| **Typography** | What personality does text have? |
| **Space** | How is whitespace used? |
| **Signature** | What's instantly recognizable? |
| **Texture** | What's the surface quality? |
| **Motion** | How do things move? |

---

## Output Format

### Standard Output Structure

All outputs from this skill must follow this format:

```markdown
<!--
SKILL OUTPUT: Brand Identity Guidelines
Generated: YYYY-MM-DD
Font: Inter (for rendering)
Version: 2.0
Source: [Website URL]
Platform: [Detected platform]
-->

# Brand Identity Guidelines: [Company Name]

**Extracted from:** [URL]
**Extraction date:** YYYY-MM-DD
**Platform detected:** [Platform]

---

## Visual Description (for Vibe Coding)

### Mood & Atmosphere
[Description of emotional feeling]

### Visual Metaphor
"[What this design evokes]"

### Color Story
[How colors create hierarchy and flow]

### Typography Personality
[Character of the text]

### Spatial Rhythm
[How space is used]

### Signature Elements
- [Element 1]
- [Element 2]
- [Element 3]

### Texture & Depth
[Surface quality description]

### Motion Philosophy
[How things move]

### Component Character
[How UI elements feel]

---

## Design Tokens

### Typography

| Element | Font | Weight | Size | Line Height | Confidence |
|---------|------|--------|------|-------------|------------|
| H1 | [Font] | [Weight] | [Size] | [LH] | [0-5] |
| H2 | [Font] | [Weight] | [Size] | [LH] | [0-5] |
| Body | [Font] | [Weight] | [Size] | [LH] | [0-5] |

**Font Sources:**
- Primary: [Font], [Source URL]
- Secondary: [Font], [Source URL]

### Colors

| Name | Hex | RGB | Usage | Confidence |
|------|-----|-----|-------|------------|
| Primary | #XXXXXX | rgb(X,X,X) | [Usage] | [0-5] |
| Secondary | #XXXXXX | rgb(X,X,X) | [Usage] | [0-5] |

### Effects

| Property | Value | Confidence |
|----------|-------|------------|
| Border radius (sm) | [value] | [0-5] |
| Border radius (md) | [value] | [0-5] |
| Shadow (sm) | [value] | [0-5] |
| Shadow (lg) | [value] | [0-5] |

### Spacing

| Token | Value | Confidence |
|-------|-------|------------|
| Base unit | [value] | [0-5] |
| Space xs | [value] | [0-5] |
| Space sm | [value] | [0-5] |

---

## CSS Variables

```css
:root {
  /* Colors - Primary */
  --color-primary: #XXXXXX;
  --color-secondary: #XXXXXX;

  /* Colors - Neutral */
  --color-bg: #XXXXXX;
  --color-text: #XXXXXX;

  /* Typography */
  --font-heading: '[Font]', sans-serif;
  --font-body: '[Font]', sans-serif;

  /* Spacing */
  --space-unit: Xpx;

  /* Effects */
  --radius-sm: Xpx;
  --shadow-sm: [value];
}
```

---

## Component Examples

### Primary Button
```css
.btn-primary {
  background: var(--color-primary);
  color: [value];
  border-radius: var(--radius-sm);
  padding: [value];
  font-weight: [value];
  transition: [value];
}

.btn-primary:hover {
  [hover styles]
}
```

### Card
```css
.card {
  background: [value];
  border: [value];
  border-radius: [value];
  box-shadow: [value];
  padding: [value];
}
```

---

## Tailwind Config

```javascript
// tailwind.config.js (extend section)
{
  colors: {
    primary: '#XXXXXX',
    secondary: '#XXXXXX',
  },
  fontFamily: {
    heading: ['[Font]', 'sans-serif'],
    body: ['[Font]', 'sans-serif'],
  },
  // ...
}
```

---

## Implementation Notes

### What Was Extracted
- [Summary of successful extractions]

### Gaps (Couldn't Extract)
- [Element]: [Reason]

### Assumptions Made
- [Assumption]: [Basis]

### Verification Needed
- [Item requiring human verification]

---

## Iteration Prompts

After reviewing this output, consider:
1. "Want me to extract from additional pages for more components?"
2. "Should I generate Figma-compatible design tokens?"
3. "Want me to create a component library skeleton?"

---

## Skill Improvement Notes

**What worked well:**
- [Auto-captured based on output]

**Potential improvements:**
- [Auto-captured based on output]

**Suggested skill updates:**
- [Auto-captured based on output]
```

---

## What Good Looks Like

### Example 1: Visual Description (Linear.app)

**Expected output:**
```markdown
## Visual Description

### Mood & Atmosphere
Dark, focused, and premium. The design feels like a mission control center for serious builders — purposeful without being cold.

### Visual Metaphor
"A high-end audio mixer in a professional recording studio at night — every element precisely placed, dark surfaces that recede, and purple accent lights that guide your attention."

### Color Story
Deep black backgrounds create infinite depth while the signature purple (#5E6AD2) marks every action point — buttons, links, and progress indicators. The purple doesn't overwhelm; it guides. Gray text (#8A8F98) stays readable but recessive, creating clear hierarchy.

### Typography Personality
Inter in medium weights creates clean, geometric headlines that feel precise without being cold. The type is tight-tracked in headlines for density and importance, looser in body copy for readability. No decorative fonts — every letterform earns its place.

### Signature Elements
- Purple gradient rays emanating from hero sections
- Borderless cards that float on black
- Command palette aesthetic (keyboard-first design)
- Issue list items with rainbow status colors against dark backgrounds
```

**Why this is good:**
- Evocative metaphor (audio mixer) makes the aesthetic instantly understandable
- Color story explains hierarchy, not just lists colors
- Typography description captures personality, not just specs
- Signature elements are specific and distinguishing

### Example 2: Design Token with Confidence

**Expected output:**
```markdown
### Colors

| Name | Hex | RGB | Usage | Confidence |
|------|-----|-----|-------|------------|
| Primary | #5E6AD2 | rgb(94,106,210) | CTAs, links, accents | 5 |
| Primary Dark | #4950A4 | rgb(73,80,164) | Hover states | 4 |
| Background | #000000 | rgb(0,0,0) | Page background | 5 |
| Surface | #111111 | rgb(17,17,17) | Cards, elevated surfaces | 4 |
| Text Primary | #FFFFFF | rgb(255,255,255) | Headings, body | 5 |
| Text Secondary | #8A8F98 | rgb(138,143,152) | Meta, captions | 4 |
| Border | #222222 | rgb(34,34,34) | Dividers, subtle borders | 3 |
```

**Why this is good:**
- Confidence scores indicate reliability
- Usage context provided
- Both hex and RGB formats
- Organized by function

### Anti-Examples (What to Avoid)

| Bad Pattern | Why It's Bad | Better Approach |
|-------------|--------------|-----------------|
| "Blue color for buttons" | No hex value, not reproducible | "#5E6AD2 (Primary) for CTAs, hover: #4950A4" |
| "Modern sans-serif font" | Too generic | "Inter, 500 weight, via Google Fonts" |
| "Minimalist design" | Says nothing useful | "Generous whitespace (32px+ section padding) with borderless cards floating on dark backgrounds" |
| Missing confidence scores | Can't assess reliability | Include 0-5 confidence for each token |

---

## Anti-Hallucination Guardrails

1. **Only extract visible elements:** Don't assume colors or fonts not found
2. **Use confidence scores:** Rate each extraction 0-5
3. **Document gaps explicitly:** List what couldn't be extracted
4. **Note assumptions:** Document any inferences made
5. **Verify font sources:** Confirm Google Fonts, Adobe, or custom
6. **Include source URL and date:** For verification

---

## Quality Checklist (Pre-Delivery)

### Extraction Quality
- [ ] All primary colors extracted with confidence ≥3
- [ ] Font families identified with sources
- [ ] Type scale documented
- [ ] Key components captured
- [ ] Effects (shadows, radius) documented

### Visual Description Quality
- [ ] Mood description is evocative, not generic
- [ ] Visual metaphor is specific and memorable
- [ ] Color story explains hierarchy
- [ ] Signature elements are distinguishing

### Implementation Quality
- [ ] CSS variables provided
- [ ] Tailwind config included (if applicable)
- [ ] Component examples have code
- [ ] Gaps and assumptions documented

---

## Post-Output: Iteration Prompts

### Refinement Prompts
1. "Want me to extract from additional pages?"
2. "Should I add dark mode / light mode variations?"
3. "Want more detail on any component?"

### Expansion Prompts
1. "Want me to generate Figma-ready design tokens?"
2. "Should I create a Tailwind config extension?"
3. "Want me to generate a component library skeleton?"

### Quality Prompts
1. "Any values that need verification?"
2. "Want me to find the exact font source?"
3. "Should I add responsive variations?"

---

## Skill Auto-Update Protocol

### Feedback Signal Detection

| User Signal | Interpretation | Action |
|-------------|----------------|--------|
| "This is great" / "Perfect" | High quality match | Log as positive pattern, offer reference example save |
| "Color is wrong" | Extraction issue | Log extraction method to improve |
| "Missing [component]" | Incomplete checklist | Add to extraction checklist |
| "Great visual description" | Effective metaphor | Capture metaphor pattern |
| "Need [format]" | Format preference | Log output format preference |
| Heavy edits to output | Implicit correction | Analyze diff, learn pattern |
| Quick approval (<2 min) | Output was good | Reinforce patterns used |

### Output as Reference Example

When user approves brand guidelines extraction:
1. Ask: "Want me to save this as a reference example for future brand extractions?"
2. If yes: Capture key elements (brand name, extraction strategies used, confidence levels, visual metaphors)
3. Store pattern: `references/example-[brand-name].md`

### Improvement Tracking

After each skill use, capture:
- [ ] Which extraction strategies worked best for this platform?
- [ ] Were confidence scores accurate?
- [ ] What elements weren't captured that should have been?
- [ ] Which output format was most useful to the user?
- [ ] Any new visual metaphor patterns discovered?

### Pattern Detection Rules

**Trigger:** Same feedback received 3+ times
**Action:**
1. Surface to user: "I've noticed [pattern]. Should I update the skill?"
2. If approved: Propose specific SKILL.md edit
3. Log in changelog

**Common Patterns to Watch:**

| Pattern | Frequency Trigger | Suggested Update |
|---------|------------------|------------------|
| "Color extraction inaccurate" | 3+ occurrences | Improve color detection methodology |
| "Missing [component]" | 3+ occurrences | Add to extraction checklist |
| "Need different format" | 3+ occurrences | Add new output format option |
| "Confidence too high/low" | 3+ occurrences | Recalibrate confidence criteria |

---

## Reference Files

| File | Purpose | Status |
|------|---------|--------|
| `references/output-template.md` | Full output template | ✓ Complete |
| `references/example-genesys-growth.md` | Worked example: Genesys Growth | ✓ Complete |
| `references/example-cursor.md` | Worked example: Cursor | ✓ Complete |

---

## Integration with Other Skills

| Skill | Relationship | Usage |
|-------|--------------|-------|
| **landing-page-copy** | Uses output | Brand elements for design handoff |
| **tov-guidelines** | Related | Often run together for full brand |
| **company-context** | Related | Brand is part of company context |

---

## Changelog

| Version | Date | Changes |
|---------|------|---------|
| 2.0 | 2026-01-16 | Refactored to v2.0: structured phases, Claude Code triggers, visual description framework, examples, iteration prompts, auto-update rules, output format with Inter font |
| 1.0 | 2025-XX-XX | Initial skill creation |

---

## Web Research Integration

**Level:** 0 — Context (heavy research)

### Research approach

| Source | What to gather | Method | When |
|--------|-------------|------|------|
| **Company website** | Website pages for design/CSS extraction | Web fetch to retrieve HTML/CSS from target URL and key subpages | Always |
| **External references** | Brand mentions, visual identity references | Web search for company name + "brand" or "design system" | Always |
