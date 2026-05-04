<!-- Canonical schema: ../../../_schema/output-templates/brand-kit.md -->
# Output Template

Use this structure for the brand identity document output.

---

# [Brand Name] Design System

> Extracted from: [URL]
> Date: [Extraction date]
> Platform: [Detected platform]

---

## Visual description

> **For vibe coding and AI-assisted design reproduction.** Use this section to prompt AI tools to recreate this design aesthetic.

### Mood & atmosphere

[Describe the emotional feeling of the design. Is it dark and moody? Light and airy? Bold and confident? Warm and inviting? Cold and clinical? Playful and energetic?]

### Visual metaphors

[What does this design remind you of? A premium cinema lobby at night? A clean Scandinavian workspace? A high-end fashion editorial? A developer's terminal with personality? A luxury hotel website? A startup pitch deck?]

### Color story

[How do the colors flow and create hierarchy? What anchors the page? What creates contrast? How do accents guide attention?]

### Typography personality  

[Describe the character of the text. Sharp and geometric? Soft and rounded? Classic and elegant? Modern and minimal? How does the typography support the brand personality?]

### Spatial rhythm

[How is space used? Generous whitespace? Dense information layouts? Asymmetric compositions? Grid-based structure? How does spacing contribute to the feel?]

### Signature elements

[What makes this design instantly recognizable? Gradient rays? Glassmorphic effects? Bold patterns? Organic shapes? Specific icon style? Unique navigation pattern?]

### Texture & depth

[Describe the surface quality. Flat and minimal? Layered with shadows? Glassy with blur effects? Material design elevation? Subtle gradients? Noise/grain textures?]

### Motion philosophy

[How do things move? Subtle and professional? Playful with bounce? Dramatic reveals? Micro-interactions everywhere? Smooth and fluid? Snappy and responsive?]

### Component character

[How do UI elements feel? Are buttons tactile and pressable? Do cards float above the surface? Are inputs responsive and alive? What's the overall interaction personality?]

### Prompt for reproduction

> **Copy this prompt to recreate the design:**
>
> "[Complete natural language description combining all elements above into a cohesive design brief that an AI could use to generate similar designs]"

---

## Brand overview

- **Aesthetic direction**: [Minimal, bold, playful, corporate, editorial, etc.]
- **Industry context**: [SaaS, e-commerce, media, etc.]
- **Design framework detected**: [Tailwind, shadcn/ui, custom, etc.]
- **Confidence level**: [0-5 overall extraction confidence]

---

## Typography

### Font families

Confidence: [0-5]

```css
:root {
  --font-primary: '[Font Name]', [fallback stack];
  --font-secondary: '[Font Name]', [fallback stack];
  --font-accent: '[Font Name]', [fallback stack];
  --font-mono: '[Font Name]', monospace;
}
```

**Font sources**:
- Primary: [Google Fonts / Adobe Fonts / Self-hosted] - [URL if available]
- Secondary: [Source]

### Font scale

| Token | Size | Line Height | Usage | Confidence |
|-------|------|-------------|-------|------------|
| `--text-xs` | 12px / 0.75rem | 1.5 | Captions, labels | 0-5 |
| `--text-sm` | 14px / 0.875rem | 1.5 | Secondary text | 0-5 |
| `--text-base` | 16px / 1rem | 1.5 | Body copy | 0-5 |
| `--text-lg` | 18px / 1.125rem | 1.4 | Lead text | 0-5 |
| `--text-xl` | 20px / 1.25rem | 1.4 | Section headers | 0-5 |
| `--text-2xl` | 24px / 1.5rem | 1.3 | H3 | 0-5 |
| `--text-3xl` | 30px / 1.875rem | 1.2 | H2 | 0-5 |
| `--text-4xl` | 36px / 2.25rem | 1.1 | H1 | 0-5 |
| `--text-5xl` | 48px / 3rem | 1.1 | Hero headlines | 0-5 |

### Font weights

```css
:root {
  --font-normal: 400;
  --font-medium: 500;
  --font-semibold: 600;
  --font-bold: 700;
}
```

---

## Colors

### Brand palette

Confidence: [0-5]

```css
:root {
  /* Primary */
  --primary: [hex];
  --primary-foreground: [hex];
  
  /* Secondary */
  --secondary: [hex];
  --secondary-foreground: [hex];
  
  /* Accent */
  --accent: [hex];
  --accent-foreground: [hex];
}
```

### Semantic colors

```css
:root {
  --success: [hex];
  --success-foreground: [hex];
  
  --warning: [hex];
  --warning-foreground: [hex];
  
  --error: [hex];
  --error-foreground: [hex];
  
  --info: [hex];
  --info-foreground: [hex];
}
```

### Neutral palette

```css
:root {
  --background: [hex];
  --foreground: [hex];
  
  --muted: [hex];
  --muted-foreground: [hex];
  
  --card: [hex];
  --card-foreground: [hex];
  
  --popover: [hex];
  --popover-foreground: [hex];
  
  --border: [hex];
  --input: [hex];
  --ring: [hex];
}
```

### Gradients

```css
:root {
  --gradient-primary: [gradient value];
  --gradient-accent: [gradient value];
  --gradient-background: [gradient value];
}
```

### Chart colors (if applicable)

```css
:root {
  --chart-1: [hex];
  --chart-2: [hex];
  --chart-3: [hex];
  --chart-4: [hex];
  --chart-5: [hex];
}
```

---

## Effects

### Border radius

Confidence: [0-5]

```css
:root {
  --radius-none: 0;
  --radius-sm: [value];
  --radius-md: [value];
  --radius-lg: [value];
  --radius-xl: [value];
  --radius-full: 9999px;
}
```

### Shadows

```css
:root {
  --shadow-sm: [box-shadow value];
  --shadow-md: [box-shadow value];
  --shadow-lg: [box-shadow value];
  --shadow-xl: [box-shadow value];
  
  /* Glow effects if present */
  --shadow-glow: [box-shadow value];
}
```

### Borders

```css
:root {
  --border-width: [value];
  --border-style: solid;
}
```

---

## Spacing

### Scale

Confidence: [0-5]

```css
:root {
  --space-1: 4px;
  --space-2: 8px;
  --space-3: 12px;
  --space-4: 16px;
  --space-5: 20px;
  --space-6: 24px;
  --space-8: 32px;
  --space-10: 40px;
  --space-12: 48px;
  --space-16: 64px;
}
```

### Container

```css
:root {
  --container-sm: 640px;
  --container-md: 768px;
  --container-lg: 1024px;
  --container-xl: 1280px;
}
```

---

## Components

### Buttons

**Primary**
```css
.btn-primary {
  background: var(--primary);
  color: var(--primary-foreground);
  padding: [value];
  border-radius: var(--radius-[size]);
  font-weight: var(--font-[weight]);
  transition: [transition];
}
.btn-primary:hover {
  [hover styles]
}
```

**Secondary**
```css
.btn-secondary {
  [styles]
}
```

**Ghost**
```css
.btn-ghost {
  [styles]
}
```

### Cards

```css
.card {
  background: var(--card);
  color: var(--card-foreground);
  border: var(--border-width) solid var(--border);
  border-radius: var(--radius-[size]);
  box-shadow: var(--shadow-[size]);
  padding: var(--space-[size]);
}
```

### Inputs

```css
.input {
  background: var(--background);
  border: var(--border-width) solid var(--input);
  border-radius: var(--radius-[size]);
  padding: [value];
}
.input:focus {
  outline: none;
  border-color: var(--ring);
  box-shadow: 0 0 0 [width] var(--ring);
}
```

---

## Animations

### Transitions

```css
:root {
  --transition-fast: 150ms ease;
  --transition-base: 200ms ease;
  --transition-slow: 300ms ease;
}
```

### Easing functions

```css
:root {
  --ease-in: cubic-bezier(0.4, 0, 1, 1);
  --ease-out: cubic-bezier(0, 0, 0.2, 1);
  --ease-in-out: cubic-bezier(0.4, 0, 0.2, 1);
}
```

### Keyframe animations

```css
@keyframes fade-in {
  from { opacity: 0; }
  to { opacity: 1; }
}

/* Other detected animations */
```

---

## Dark mode (if detected)

```css
.dark {
  --background: [dark value];
  --foreground: [dark value];
  /* ... other overrides */
}
```

---

## Tailwind config

```js
// tailwind.config.js
module.exports = {
  theme: {
    extend: {
      colors: {
        primary: 'hsl(var(--primary))',
        secondary: 'hsl(var(--secondary))',
        // ...
      },
      fontFamily: {
        sans: ['var(--font-primary)'],
        mono: ['var(--font-mono)'],
      },
      borderRadius: {
        lg: 'var(--radius-lg)',
        md: 'var(--radius-md)',
        sm: 'var(--radius-sm)',
      },
    },
  },
}
```

---

## Implementation notes

[Platform-specific notes, extraction limitations, recommendations]

## What couldn't be extracted

[List any tokens that couldn't be determined and why]
