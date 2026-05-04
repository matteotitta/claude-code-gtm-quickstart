# Documentation Template

Structure for the markdown design system document output.

---

# {Brand Name} Design System

> **Source**: {URL}
> **Extracted**: {Date}
> **Platform**: {Detected platform: Framer, Webflow, Custom, etc.}
> **Confidence**: {High/Medium/Low based on CSS accessibility}

## Overview

**Aesthetic**: {One-line description: "Dark, professional B2B SaaS with purple accents"}
**Framework**: {Tailwind, shadcn/ui, Chakra, custom, etc.}
**Theme**: {Light/Dark/Both}

---

## Quick start

Copy this entire block into your CSS `:root {}`:

```css
:root {
  /* Colors */
  --primary: {value};
  --primary-foreground: {value};
  --secondary: {value};
  --secondary-foreground: {value};
  --accent: {value};
  --accent-foreground: {value};
  
  --background: {value};
  --foreground: {value};
  --muted: {value};
  --muted-foreground: {value};
  --card: {value};
  --card-foreground: {value};
  --border: {value};
  --input: {value};
  --ring: {value};
  
  --success: {value};
  --warning: {value};
  --error: {value};
  --info: {value};
  
  /* Typography */
  --font-sans: {value};
  --font-mono: {value};
  
  /* Spacing */
  --space-unit: {value};
  
  /* Radius */
  --radius-sm: {value};
  --radius-md: {value};
  --radius-lg: {value};
  
  /* Shadows */
  --shadow-sm: {value};
  --shadow-md: {value};
  --shadow-lg: {value};
  
  /* Transitions */
  --transition-fast: {value};
  --transition-base: {value};
}
```

---

## Typography

### Font stack

| Role | Family | Source |
|------|--------|--------|
| Primary | {name} | {Google Fonts / Adobe / System} |
| Secondary | {name} | {source} |
| Monospace | {name} | {source} |

### Scale

| Token | Size | Line Height | Use |
|-------|------|-------------|-----|
| `text-xs` | {value} | {value} | Labels |
| `text-sm` | {value} | {value} | Secondary |
| `text-base` | {value} | {value} | Body |
| `text-lg` | {value} | {value} | Lead |
| `text-xl` | {value} | {value} | H4 |
| `text-2xl` | {value} | {value} | H3 |
| `text-3xl` | {value} | {value} | H2 |
| `text-4xl` | {value} | {value} | H1 |

### Weights

```css
--font-normal: 400;
--font-medium: 500;
--font-semibold: 600;
--font-bold: 700;
```

---

## Colors

### Brand

| Name | Value | Preview | Usage |
|------|-------|---------|-------|
| Primary | `{hex}` | ![](https://via.placeholder.com/20/{hex without #}/000000?text=+) | CTAs, links |
| Secondary | `{hex}` | ![](https://via.placeholder.com/20/{hex}/000000?text=+) | Secondary actions |
| Accent | `{hex}` | ![](https://via.placeholder.com/20/{hex}/000000?text=+) | Highlights |

### Semantic

| Name | Value | Usage |
|------|-------|-------|
| Success | `{hex}` | Confirmations |
| Warning | `{hex}` | Alerts |
| Error | `{hex}` | Errors |
| Info | `{hex}` | Information |

### Neutrals

| Name | Value | Usage |
|------|-------|-------|
| Background | `{hex}` | Page background |
| Foreground | `{hex}` | Primary text |
| Muted | `{hex}` | Subtle backgrounds |
| Border | `{hex}` | Dividers, borders |

### Gradients (if present)

```css
--gradient-primary: {value};
--gradient-accent: {value};
```

---

## Spacing

| Token | Value | Pixels |
|-------|-------|--------|
| 1 | 0.25rem | 4px |
| 2 | 0.5rem | 8px |
| 3 | 0.75rem | 12px |
| 4 | 1rem | 16px |
| 6 | 1.5rem | 24px |
| 8 | 2rem | 32px |
| 12 | 3rem | 48px |
| 16 | 4rem | 64px |

### Containers

```css
--container-sm: 640px;
--container-md: 768px;
--container-lg: 1024px;
--container-xl: 1280px;
```

---

## Effects

### Border radius

| Token | Value | Use |
|-------|-------|-----|
| `radius-sm` | {value} | Inputs, small elements |
| `radius-md` | {value} | Buttons, cards |
| `radius-lg` | {value} | Modals, large cards |
| `radius-full` | 9999px | Pills, avatars |

### Shadows

```css
--shadow-sm: {full value};
--shadow-md: {full value};
--shadow-lg: {full value};
```

---

## Components

### Buttons

**Primary**
```css
.btn-primary {
  background: var(--primary);
  color: var(--primary-foreground);
  padding: 12px 24px;
  border-radius: var(--radius-md);
  font-weight: 600;
  transition: var(--transition-base);
}
```

**Secondary**
```css
.btn-secondary {
  background: var(--secondary);
  color: var(--secondary-foreground);
  border: 1px solid var(--border);
  /* ... */
}
```

### Cards

```css
.card {
  background: var(--card);
  border: 1px solid var(--border);
  border-radius: var(--radius-lg);
  padding: var(--space-6);
}
```

### Inputs

```css
.input {
  background: var(--background);
  border: 1px solid var(--input);
  border-radius: var(--radius-md);
  padding: 12px 16px;
}

.input:focus {
  border-color: var(--ring);
  box-shadow: 0 0 0 3px rgb(var(--ring) / 0.2);
}
```

---

## Animations

### Transitions

```css
--transition-fast: 150ms ease;
--transition-base: 200ms ease;
--transition-slow: 300ms ease;
```

### Easing

```css
--ease-out: cubic-bezier(0, 0, 0.2, 1);
--ease-in-out: cubic-bezier(0.4, 0, 0.2, 1);
```

### Keyframes (if detected)

```css
@keyframes fade-in {
  from { opacity: 0; }
  to { opacity: 1; }
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
        accent: 'hsl(var(--accent))',
        background: 'hsl(var(--background))',
        foreground: 'hsl(var(--foreground))',
        muted: {
          DEFAULT: 'hsl(var(--muted))',
          foreground: 'hsl(var(--muted-foreground))',
        },
        card: {
          DEFAULT: 'hsl(var(--card))',
          foreground: 'hsl(var(--card-foreground))',
        },
        border: 'hsl(var(--border))',
        input: 'hsl(var(--input))',
        ring: 'hsl(var(--ring))',
      },
      fontFamily: {
        sans: ['var(--font-sans)'],
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

{Add specific observations about the brand's design patterns, unique visual treatments, or implementation considerations}

---

## Confidence notes

| Category | Confidence | Notes |
|----------|------------|-------|
| Colors | {High/Medium/Low} | {explanation} |
| Typography | {High/Medium/Low} | {explanation} |
| Spacing | {High/Medium/Low} | {explanation} |
| Components | {High/Medium/Low} | {explanation} |
