# Quality — pre-delivery checklist + worked examples + iteration prompts

Run these gates before handing the brand kit to the user. Then check the worked examples to calibrate "good."

---

## Pre-delivery checklist

### Extraction quality
- [ ] At least 3 screenshots analyzed
- [ ] All primary colors extracted with confidence ≥ 3
- [ ] Font families identified (with sources if possible)
- [ ] Key components captured with CSS

### Visual description quality
- [ ] Mood description is evocative, not generic
- [ ] Visual metaphor is specific and memorable
- [ ] Color story explains hierarchy, not just lists colors
- [ ] Signature elements are distinguishing

### Compilation quality
- [ ] All 8 sections present (even if some are [NEEDS INPUT])
- [ ] "How to apply" section covers at least 3 mediums
- [ ] Color hex values verified
- [ ] CSS code blocks are syntactically correct
- [ ] Type scale covers at least 5 sizes

---

## Confidence scoring

| Score | Meaning |
|-------|---------|
| 5 | Cross-referenced: visual analysis + CSS/Figma agree |
| 4 | From CSS/code with minor inference |
| 3 | Strong visual evidence from screenshot, high confidence |
| 2 | Reasonable inference from patterns |
| 1 | Approximated, needs verification |
| 0 | Unknown, placeholder value |

---

## What good looks like — Visual description (Linear.app)

```markdown
### Mood & atmosphere
Dark, focused, and premium. The design feels like a mission control center
for serious builders — purposeful without being cold.

### Visual metaphor
"A high-end audio mixer in a professional recording studio at night —
every element precisely placed, dark surfaces that recede, and purple
accent lights that guide your attention."

### Color story
Deep black backgrounds create infinite depth while the signature purple
(#5E6AD2) marks every action point — buttons, links, and progress indicators.
The purple doesn't overwhelm; it guides. Gray text (#8A8F98) stays readable
but recessive, creating clear hierarchy.
```

**Why this works:** evocative metaphor; color story explains hierarchy (not just lists colors); specific hex values embedded in narrative.

### Token with confidence

```markdown
| Name | Hex | Usage | Confidence |
|------|-----|-------|------------|
| Primary | #5E6AD2 | CTAs, links, accents | 5 |
| Background | #000000 | Page background | 5 |
| Surface | #111111 | Cards, elevated surfaces | 3 |
| Text Secondary | #8A8F98 | Meta, captions | 4 |
```

---

## Anti-examples

| Bad | Why | Better |
|-----|-----|--------|
| "Blue color for buttons" | No hex, not reproducible | "#5E6AD2 for CTAs, hover: #4950A4" |
| "Modern sans-serif font" | Too generic | "Inter, 500 weight, via Google Fonts" |
| "Minimalist design" | Says nothing | "32px+ section padding, borderless cards on dark backgrounds" |
| Missing confidence | Can't assess reliability | Include 0-5 per token |

---

## Iteration prompts library

### Refinement
1. "Want me to take more screenshots for additional components?"
2. "Should I add dark mode / light mode variations?"
3. "Any values that need verification against the actual brand PDF?"

### Expansion
1. "Want me to generate a Tailwind config from this?"
2. "Should I create a Figma-compatible token file?"
3. "Want me to build a component library skeleton?"

### Downstream
1. "Ready to create a landing page wireframe using this brand kit?"
2. "Want me to sync the voice section into your CLAUDE.md with `/brand-context`?"
