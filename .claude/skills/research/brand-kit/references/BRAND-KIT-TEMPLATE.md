---
name: {{client-slug}}-brand
version: "1.0"
author: marketing-team
last_updated: {{YYYY-MM-DD}}
platform_detected: {{Platform}}
extraction_confidence: {{0-5}}
description: |
  Apply {{Company Name}} visual brand guidelines to any output — HTML/CSS components, data visualizations, presentations, or documents. Use whenever the task requires on-brand visual design for {{Company Name}}.
---

# {{Company Name}} Brand System

## Overview

This skill encodes {{Company Name}}'s complete visual brand system: visual identity description, colors, typography, component patterns, data viz rules, logo usage, spacing, and signature elements. Apply it whenever producing anything that represents {{Company Name}} visually.

**Extracted from:** {{Website URL / Screenshots}}
**Extraction date:** {{YYYY-MM-DD}}
**Platform detected:** {{Platform}}
**Keywords**: {{company name}} brand, on-brand, style guide, brand colors, typography, {{industry keywords}}

---

## 0. Visual identity

> For vibe coding and AI-assisted design reproduction. Use this section to prompt AI tools to recreate this design aesthetic.

### Mood & atmosphere

[Description of the emotional feeling — dark and moody, light and airy, bold and confident, warm and inviting, cold and clinical, playful and energetic]

### Visual metaphor

"[What this design evokes — a premium cinema lobby at night, a clean Scandinavian workspace, a high-end fashion editorial]"

### Color story

[How colors create hierarchy and flow — what anchors the page, what creates contrast, how accents guide attention]

### Typography personality

[Character of the text — sharp and geometric, soft and rounded, classic and elegant. How typography supports the brand personality]

### Spatial rhythm

[How space is used — generous whitespace, dense information layouts, asymmetric compositions, grid-based structure]

### Signature elements

- [Element 1 — what makes this instantly recognizable]
- [Element 2]
- [Element 3]

### Texture & depth

[Surface quality — flat and minimal, layered with shadows, glassy with blur effects, noise/grain textures]

### Motion philosophy

[How things move — subtle and professional, playful with bounce, dramatic reveals, snappy and responsive]

### Component character

[How UI elements feel — buttons tactile and pressable, cards floating above surface, inputs responsive and alive]

### Prompt for reproduction

> **Copy this prompt to recreate the design:**
>
> "[Complete natural language description combining all elements above into a cohesive design brief that an AI could use to generate similar designs]"

---

## 1. Colors

### Primary palette

| Token | Hex | Use |
|---|---|---|
| `--background` | `#______` | Page backgrounds |
| `--background-secondary` | `#______` | Cards, elevated surfaces |
| `--foreground` | `#______` | Primary text |
| `--foreground-secondary` | `#______` | Secondary text |
| `--accent` | `#______` | CTAs, links, interactive accents |
| `--brand` | `#______` | Brand primary color |
| `--border` | `#______` | Borders, dividers |
| `--[accent-name]` | `#______` | [Accent description] |
<!-- Add 8-15 colors. Every color needs hex + usage. -->

### Text colors

| Token | Hex | Use |
|---|---|---|
| `--text-primary` | `#______` | Headings, body |
| `--text-secondary` | `#______` | Captions, metadata |
| `--text-muted` | `#______` | Disabled, placeholder |

### Color ramp (if available)

```
#______ (10%)  #______ (20%)  #______ (30%)
#______ (40%)  #______ (50%)  #______ (Base)
#______ (60%)  #______ (70%)  #______ (80%)
#______ (90%)  #______ (100%)
```

### Dark mode / light mode rules

- Background: `#______`
- Text on dark: `#______`
- Accent on dark: `#______`
<!-- Define which mode is default -->

---

## 2. Typography

### Typefaces

| Variable | Font | Fallback | Use |
|---|---|---|---|
| `--font-sans` | [Font Name] | [Fallback], sans-serif | UI, body copy |
| `--font-serif` | [Font Name] | [Fallback], serif | Headlines (if applicable) |
| `--font-mono` | [Font Name] | [Fallback], monospace | Code, labels |

### Type scale

| Token | Size | Weight | Line Height | Use |
|---|---|---|---|---|
| Display | __px | ___ | ___% | Large hero text |
| H1 | __px | ___ | ___% | Page titles |
| H2 | __px | ___ | ___% | Section titles |
| H3 | __px | ___ | ___% | Subsection titles |
| H4 | __px | ___ | ___% | Card titles |
| Body | __px | ___ | ___% | Running text |
| Small | __px | ___ | ___% | Captions, labels |

### Letter spacing

```css
.headline { letter-spacing: ___em; }
.body { letter-spacing: ___em; }
.label { letter-spacing: ___em; text-transform: uppercase; }
```

### CSS quick reference

```css
.headline {
  font-family: '[Font]', [fallback], sans-serif;
  font-weight: ___;
  letter-spacing: ___em;
  line-height: ___;
}
.body {
  font-family: '[Font]', [fallback], sans-serif;
  font-weight: ___;
  line-height: ___;
}
```

---

## 3. Components

### Primary button

```css
.btn-primary {
  background: #______;
  color: #______;
  padding: __px __px;
  border-radius: __px;
  font-family: '[Font]', sans-serif;
  font-weight: ___;
  font-size: __px;
  border: ___;
  cursor: pointer;
  transition: all ___ms ease;
}
.btn-primary:hover {
  /* hover styles */
}
```

### Secondary button

```css
.btn-secondary {
  background: #______;
  color: #______;
  padding: __px __px;
  border-radius: __px;
  font-weight: ___;
  font-size: __px;
  border: ___;
  cursor: pointer;
  transition: all ___ms ease;
}
```

### Cards

```css
.card {
  background: #______;
  color: #______;
  border: 1px solid #______;
  border-radius: __px;
  padding: __px;
  transition: all ___ms ease;
}
.card:hover {
  /* hover styles */
}
```

### Navigation

```css
.nav {
  background: ______;
  padding: __px __px;
  /* position, backdrop-filter, border */
}
```

---

## 4. Data visualization

### Rules

1. [Corner style] on bars and containers
2. [Color spectrum] for chart fills
3. [Highlight color] for the most important value
4. [Font] for chart headlines
5. [Font] for axis labels
6. [Background color] for chart area
7. [Border style] on chart containers

### Color ramp for charts

```
#______ -- [description] (primary series)
#______ -- [description] (secondary)
#______ -- [description] (tertiary)
#______ -- [description] (highlight)
```

### CSS template

```css
.chart-container {
  background: #______;
  border: 1px solid #______;
  border-radius: __px;
  padding: __px;
}
.chart-headline {
  font-family: '[Font]', sans-serif;
  font-size: __px;
  font-weight: ___;
  color: #______;
}
.chart-axis-label {
  font-size: __px;
  font-weight: ___;
  text-transform: uppercase;
  color: #______;
}
```

---

## 5. Logo usage

| Variant | Use | File |
|---|---|---|
| [Variant 1] | [Context] | `[filename]` |
| [Variant 2] | [Context] | `[filename]` |

**Rules:**
- [On dark]: [Which variant]
- [On light]: [Which variant]
- Minimum clear space: [Rule]
- Never: [Restrictions]

**Logo files path:** `marketing/brand/logos/`

---

## 6. Spacing

Base unit: __px.

```css
--space-1: __px;  --space-2: __px;  --space-3: __px;
--space-4: __px;  --space-6: __px;  --space-8: __px;
--space-12: __px; --space-16: __px; --space-24: __px;
```

Container max-width: ____px. Container padding: __px.

---

## 7. Signature elements

1. **[Element 1]** — [Description of what makes this recognizable]
2. **[Element 2]** — [Description]
3. **[Element 3]** — [Description]

---

## How to apply this skill

**For HTML/CSS components**: [Consolidated rules — colors, fonts, corners, borders, spacing]

**For data viz**: [Chart rules summary — color ramp, container style, label fonts]

**For presentations/documents**: [Theme, fonts, accent hierarchy, logo placement]
