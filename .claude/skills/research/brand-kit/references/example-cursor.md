# Cursor Design System

> Extracted from: https://www.cursor.com/
> Date: December 26, 2025
> Platform: Next.js (Vercel)

---

## Visual description

> **For vibe coding and AI-assisted design reproduction.** Use this section to prompt AI tools to recreate this design aesthetic.

### Mood & atmosphere

Ethereal, artistic, and unexpectedly beautiful for a developer tool. The design defies the typical dark-mode-with-neon-accents trope of dev tools by introducing painterly, almost dreamlike backgrounds that feel more like visiting a digital art gallery than a software website. There's a sense of quiet confidence and creative ambition — this is a product that believes coding can be beautiful. The atmosphere is calm yet inspiring, sophisticated without being cold, technical without being sterile.

### Visual metaphors

This design feels like **a developer's tool reimagined by a fine art museum** — serious capability wrapped in unexpected beauty. The scenic painted landscape wallpapers evoke **Renaissance paintings meeting Silicon Valley**, suggesting that coding is a craft worthy of artistic presentation. It's **the visual equivalent of a beautifully bound technical manual** — functional content elevated by thoughtful presentation. The floating UI elements over painterly backgrounds create a sense of **software emerging from imagination**, like ideas materializing into interfaces.

### Color story

The color palette is remarkably restrained yet sophisticated. Pure black (#000000) serves as the primary background, creating a void-like canvas that makes content and UI elements feel like they're floating in space. White (#ffffff) text creates maximum contrast and confidence. The magic happens in the background images — soft, muted landscape paintings in earth tones, misty blues, and golden hours that provide warmth and humanity without competing with UI elements. Accent colors are minimal: subtle blues and greens appear in interactive states and code syntax highlighting. The overall effect is monochromatic UI with artistic depth — like a museum where the art provides color and the architecture stays neutral.

### Typography personality

Clean, precise, and beautifully neutral. The typography uses a refined sans-serif (likely Inter or a similar geometric typeface) that stays completely out of the way while remaining highly legible. Headlines are bold but not aggressive — they state facts confidently rather than shouting. Body copy is comfortable and readable with generous line height. Code snippets use a clean monospace font with careful syntax highlighting. The typography personality is "quietly excellent engineer" — no flourishes, no ego, just clear communication.

### Spatial rhythm

Expansive and cinematic. Hero sections command massive viewport real estate, allowing the painterly backgrounds to breathe and create atmosphere. Content sections use generous vertical spacing (80-120px between major blocks), giving each feature room to be appreciated. The layout alternates between full-bleed immersive sections and contained content blocks. There's a cinematic quality to the pacing — scenes unfold as you scroll, each with its own visual moment. Cards and UI elements use comfortable padding (24-32px) with rounded corners that feel friendly without being childish.

### Signature elements

1. **Painterly background images**: The most distinctive element — scenic landscape paintings (mountains, valleys, golden hour skies) that serve as backdrops for UI demonstrations. These aren't generic stock photos but carefully curated artistic images that evoke calm and creativity.

2. **Floating IDE mockups**: Product screenshots appear to float over the painterly backgrounds, creating a layered depth effect. The IDE windows have subtle shadows and feel like tangible objects in a virtual gallery.

3. **Interactive demo sections**: Full-width sections showing actual Cursor interfaces (IDE, CLI, Slack integration) with animated elements, giving visitors a taste of the product without downloading.

4. **Quote carousel**: Testimonials from notable figures (Patrick Collison, Andrej Karpathy, shadcn) displayed in a clean, editorial format with circular avatars and company attribution.

5. **Minimal navigation**: The header is extremely clean — logo, a few links, sign in, and download. No visual noise, maximum focus on content.

6. **Changelog integration**: Recent updates displayed directly on the homepage, signaling active development and transparency.

### Texture & depth

Layered and atmospheric. The primary texture comes from the painterly background images — soft brushstrokes, atmospheric perspective, natural gradients. UI elements float above these backgrounds with subtle drop shadows that create clear separation without harsh edges. Cards use very subtle background fills (rgba whites at 5-10% opacity) that create glass-like surfaces. The overall effect is depth through atmosphere rather than hard shadows — like looking through layers of translucent glass at a painting behind.

### Motion philosophy

Subtle, smooth, and purposeful. Transitions are gentle (200-300ms) with easing that feels natural. Hover states create subtle lifts and shadow deepening. The interactive demos have animated elements (code appearing, chat messages populating) that demonstrate product functionality. Scroll-triggered animations reveal content sections smoothly. Nothing bounces or overshoots — motion serves clarity, not decoration. The philosophy is "invisible excellence" — you don't notice the animation, you just notice that everything feels polished.

### Component character

**Buttons** are minimal and confident. Primary CTAs use solid fills with rounded corners (border-radius around 8px). Download buttons include subtle icons (⤓ arrow). Hover states are subtle — slight darkening or border appearance. The buttons say "click me when you're ready" rather than demanding attention.

**Cards** are glass-like and floating. They use subtle background fills over the painterly backgrounds, with rounded corners and comfortable padding. Feature cards combine headlines, descriptions, and "Learn more →" links in a clean hierarchy.

**Navigation** is nearly invisible — black background, white text, minimal items. The header doesn't fight for attention; it provides utility and gets out of the way.

**Code blocks** are beautifully rendered with syntax highlighting in muted colors. They appear in IDE mockup contexts, making them feel like real product rather than documentation.

**Testimonials** use a magazine-editorial format — large quotes, circular avatars, name and title attribution. Clean, credible, human.

### Prompt for reproduction

> **Copy this prompt to recreate the design:**
>
> "Create a developer tool marketing website with an unexpectedly artistic aesthetic. Use pure black (#000000) backgrounds with white (#ffffff) text for maximum contrast. The signature element is using scenic, painterly landscape images (think misty mountains, golden hour valleys, soft atmospheric paintings) as backgrounds behind floating UI mockups. Product screenshots should appear to float above these artistic backgrounds with subtle shadows. Typography is clean geometric sans-serif (Inter or similar), confident but not loud. Navigation is minimal — just essentials. Feature sections alternate between full-bleed immersive areas with the painterly backgrounds and cleaner content sections. Include interactive product demos showing IDE interfaces, code completion, and integrations. Testimonials use editorial formatting with circular avatars. Motion is smooth and invisible — 200-300ms transitions, gentle hover effects. The overall feeling should be 'developer tool designed by someone who loves fine art' — serious capability wrapped in unexpected beauty. Think Linear's polish meets a digital art gallery."

---

## Brand overview

- **Aesthetic direction**: Artistic minimalism, painterly warmth, developer-focused elegance
- **Industry context**: Developer tools, AI-powered IDE, coding productivity
- **Design framework detected**: Next.js with custom styling (Vercel-hosted)
- **Confidence level**: 3/5 (Visual analysis, CSS not directly extracted)

---

## Typography

### Font families

3/5 Confidence: Medium (inferred from visual patterns)

```css
:root {
  /* Primary - Headlines and UI text */
  --font-primary: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
  
  /* Secondary - Body copy */
  --font-secondary: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
  
  /* Mono - Code blocks */
  --font-mono: 'SF Mono', 'Fira Code', 'JetBrains Mono', 'Consolas', monospace;
}
```

### Font scale

| Token | Size | Line Height | Usage | Confidence |
|-------|------|-------------|-------|------------|
| `--text-xs` | 12px / 0.75rem | 1.5 | Labels, metadata | 3/5 |
| `--text-sm` | 14px / 0.875rem | 1.5 | Secondary text, nav | 3/5 |
| `--text-base` | 16px / 1rem | 1.6 | Body copy | 3/5 |
| `--text-lg` | 18px / 1.125rem | 1.5 | Lead paragraphs | 3/5 |
| `--text-xl` | 20px / 1.25rem | 1.4 | Card titles | 3/5 |
| `--text-2xl` | 24px / 1.5rem | 1.3 | Section headers | 3/5 |
| `--text-3xl` | 30px / 1.875rem | 1.2 | H3 | 3/5 |
| `--text-4xl` | 36px / 2.25rem | 1.15 | H2 | 3/5 |
| `--text-5xl` | 48px / 3rem | 1.1 | H1, hero | 3/5 |
| `--text-6xl` | 60px / 3.75rem | 1.05 | Display headlines | 3/5 |

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

3/5 Confidence: Medium

```css
:root {
  /* Primary - Pure black */
  --primary: #000000;
  --primary-foreground: #ffffff;
  
  /* Secondary - Soft dark */
  --secondary: #111111;
  --secondary-foreground: #ffffff;
  
  /* Accent - Subtle blue (used sparingly) */
  --accent: #3b82f6;
  --accent-foreground: #ffffff;
}
```

### Semantic colors

```css
:root {
  /* Success - Green for positive states */
  --success: #22c55e;
  --success-foreground: #ffffff;
  
  /* Warning */
  --warning: #f59e0b;
  --warning-foreground: #000000;
  
  /* Error / Destructive */
  --error: #ef4444;
  --error-foreground: #ffffff;
  
  /* Info */
  --info: #3b82f6;
  --info-foreground: #ffffff;
}
```

### Neutral palette

3/5 Confidence: Medium

```css
:root {
  /* Backgrounds */
  --background: #000000;
  --background-secondary: #0a0a0a;
  --background-tertiary: #111111;
  --background-elevated: #1a1a1a;
  
  /* Foregrounds */
  --foreground: #ffffff;
  --foreground-secondary: #a3a3a3;
  --foreground-muted: #737373;
  --foreground-faint: #525252;
  
  /* Muted */
  --muted: #262626;
  --muted-foreground: #a3a3a3;
  
  /* Cards - Glass-like surfaces */
  --card: rgba(255, 255, 255, 0.05);
  --card-foreground: #ffffff;
  --card-hover: rgba(255, 255, 255, 0.08);
  
  /* Borders */
  --border: #262626;
  --border-hover: #404040;
  --border-focus: #525252;
  
  /* Inputs */
  --input: #262626;
  --input-focus: #404040;
  
  /* Ring */
  --ring: #525252;
}
```

### Code syntax colors

```css
:root {
  /* Syntax highlighting - muted palette */
  --syntax-keyword: #c084fc;      /* Purple */
  --syntax-string: #86efac;       /* Green */
  --syntax-number: #fcd34d;       /* Yellow */
  --syntax-function: #93c5fd;     /* Blue */
  --syntax-comment: #6b7280;      /* Gray */
  --syntax-variable: #f9fafb;     /* White */
  --syntax-operator: #d1d5db;     /* Light gray */
  --syntax-added: #22c55e;        /* Green for diff + */
  --syntax-removed: #ef4444;      /* Red for diff - */
}
```

---

## Effects

### Border radius

3/5 Confidence: Medium

```css
:root {
  --radius-none: 0;
  --radius-sm: 4px;
  --radius-md: 8px;
  --radius-lg: 12px;
  --radius-xl: 16px;
  --radius-2xl: 20px;
  --radius-3xl: 24px;
  --radius-full: 9999px;
}
```

### Shadows

```css
:root {
  /* Subtle shadows for dark theme */
  --shadow-sm: 0 1px 2px 0 rgba(0, 0, 0, 0.5);
  --shadow-md: 0 4px 6px -1px rgba(0, 0, 0, 0.5), 0 2px 4px -2px rgba(0, 0, 0, 0.5);
  --shadow-lg: 0 10px 15px -3px rgba(0, 0, 0, 0.6), 0 4px 6px -4px rgba(0, 0, 0, 0.5);
  --shadow-xl: 0 20px 25px -5px rgba(0, 0, 0, 0.6), 0 8px 10px -6px rgba(0, 0, 0, 0.5);
  --shadow-2xl: 0 25px 50px -12px rgba(0, 0, 0, 0.7);
  
  /* Floating UI shadow */
  --shadow-float: 0 20px 40px -10px rgba(0, 0, 0, 0.5), 0 0 0 1px rgba(255, 255, 255, 0.05);
}
```

### Borders

```css
:root {
  --border-width: 1px;
  --border-style: solid;
}
```

---

## Spacing

### Scale

3/5 Confidence: Medium

```css
:root {
  --space-0: 0;
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
  --space-20: 80px;
  --space-24: 96px;
  --space-32: 128px;
}
```

### Container

```css
:root {
  --container-sm: 640px;
  --container-md: 768px;
  --container-lg: 1024px;
  --container-xl: 1280px;
  --container-2xl: 1536px;
  
  /* Content max-width */
  --content-max: 1200px;
  
  /* Padding */
  --container-padding: 24px;
  --container-padding-lg: 48px;
}
```

---

## Components

### Buttons

**Primary button (Download)**
```css
.btn-primary {
  background: var(--foreground);
  color: var(--background);
  padding: 12px 20px;
  border-radius: var(--radius-md);
  font-weight: var(--font-medium);
  font-size: 14px;
  border: none;
  cursor: pointer;
  display: inline-flex;
  align-items: center;
  gap: 8px;
  transition: all 200ms ease;
}

.btn-primary:hover {
  background: var(--foreground-secondary);
}
```

**Secondary button**
```css
.btn-secondary {
  background: transparent;
  color: var(--foreground);
  padding: 12px 20px;
  border-radius: var(--radius-md);
  font-weight: var(--font-medium);
  font-size: 14px;
  border: 1px solid var(--border);
  cursor: pointer;
  transition: all 200ms ease;
}

.btn-secondary:hover {
  background: var(--card);
  border-color: var(--border-hover);
}
```

**Ghost button / Link**
```css
.btn-ghost {
  background: transparent;
  color: var(--foreground);
  padding: 8px 12px;
  font-weight: var(--font-medium);
  font-size: 14px;
  border: none;
  cursor: pointer;
  display: inline-flex;
  align-items: center;
  gap: 4px;
  transition: color 150ms ease;
}

.btn-ghost:hover {
  color: var(--foreground-secondary);
}

.btn-ghost .arrow {
  transition: transform 150ms ease;
}

.btn-ghost:hover .arrow {
  transform: translateX(2px);
}
```

### Cards

**Feature card**
```css
.card-feature {
  background: var(--card);
  border: 1px solid var(--border);
  border-radius: var(--radius-xl);
  padding: var(--space-8);
  transition: all 200ms ease;
}

.card-feature:hover {
  background: var(--card-hover);
  border-color: var(--border-hover);
}
```

**Glass card (over painterly backgrounds)**
```css
.card-glass {
  background: rgba(0, 0, 0, 0.6);
  backdrop-filter: blur(20px);
  border: 1px solid rgba(255, 255, 255, 0.1);
  border-radius: var(--radius-xl);
  padding: var(--space-6);
  box-shadow: var(--shadow-float);
}
```

### Navigation

```css
.nav {
  background: var(--background);
  padding: 16px 24px;
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 50;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.nav-link {
  color: var(--foreground-secondary);
  font-size: 14px;
  font-weight: var(--font-medium);
  padding: 8px 12px;
  text-decoration: none;
  transition: color 150ms ease;
}

.nav-link:hover {
  color: var(--foreground);
}
```

### Code blocks

```css
.code-block {
  background: var(--background-secondary);
  border: 1px solid var(--border);
  border-radius: var(--radius-lg);
  padding: var(--space-4);
  font-family: var(--font-mono);
  font-size: 13px;
  line-height: 1.6;
  overflow-x: auto;
}

.code-line-added {
  background: rgba(34, 197, 94, 0.15);
  color: var(--syntax-added);
}

.code-line-removed {
  background: rgba(239, 68, 68, 0.15);
  color: var(--syntax-removed);
}
```

### Testimonials

```css
.testimonial {
  max-width: 600px;
}

.testimonial-quote {
  font-size: var(--text-xl);
  line-height: 1.5;
  color: var(--foreground);
  margin-bottom: var(--space-6);
}

.testimonial-author {
  display: flex;
  align-items: center;
  gap: var(--space-3);
}

.testimonial-avatar {
  width: 48px;
  height: 48px;
  border-radius: var(--radius-full);
  object-fit: cover;
}

.testimonial-name {
  font-weight: var(--font-medium);
  color: var(--foreground);
}

.testimonial-title {
  font-size: var(--text-sm);
  color: var(--foreground-muted);
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
  --transition-slower: 500ms ease;
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

**Fade in**
```css
@keyframes fade-in {
  from { opacity: 0; }
  to { opacity: 1; }
}
```

**Slide up fade**
```css
@keyframes slide-up-fade {
  from {
    opacity: 0;
    transform: translateY(20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}
```

**Typing cursor**
```css
@keyframes blink {
  0%, 50% { opacity: 1; }
  51%, 100% { opacity: 0; }
}

.cursor-blink {
  animation: blink 1s step-end infinite;
}
```

---

## Special elements

### Painterly backgrounds

The signature design element — scenic landscape images used as section backgrounds:

```css
.section-painterly {
  position: relative;
  min-height: 100vh;
  overflow: hidden;
}

.section-painterly-bg {
  position: absolute;
  inset: 0;
  z-index: 0;
}

.section-painterly-bg img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  opacity: 0.8;
}

.section-painterly-content {
  position: relative;
  z-index: 1;
}
```

### Floating UI mockups

```css
.ui-mockup {
  background: var(--background);
  border: 1px solid var(--border);
  border-radius: var(--radius-xl);
  box-shadow: var(--shadow-float);
  overflow: hidden;
}

.ui-mockup-header {
  background: var(--background-secondary);
  padding: 12px 16px;
  border-bottom: 1px solid var(--border);
  display: flex;
  align-items: center;
  gap: 8px;
}

.ui-mockup-dot {
  width: 12px;
  height: 12px;
  border-radius: var(--radius-full);
  background: var(--muted);
}
```

---

## Tailwind config

```js
// tailwind.config.js
module.exports = {
  darkMode: 'class',
  theme: {
    extend: {
      colors: {
        background: '#000000',
        foreground: '#ffffff',
        primary: {
          DEFAULT: '#000000',
          foreground: '#ffffff',
        },
        secondary: {
          DEFAULT: '#111111',
          foreground: '#ffffff',
        },
        muted: {
          DEFAULT: '#262626',
          foreground: '#a3a3a3',
        },
        card: {
          DEFAULT: 'rgba(255, 255, 255, 0.05)',
          foreground: '#ffffff',
        },
        border: '#262626',
      },
      fontFamily: {
        sans: ['Inter', '-apple-system', 'BlinkMacSystemFont', 'sans-serif'],
        mono: ['SF Mono', 'Fira Code', 'monospace'],
      },
      borderRadius: {
        lg: '12px',
        xl: '16px',
        '2xl': '20px',
      },
      animation: {
        'fade-in': 'fade-in 300ms ease-out',
        'slide-up': 'slide-up-fade 500ms ease-out',
      },
    },
  },
}
```

---

## Implementation notes

1. **Platform**: Built on Next.js, hosted on Vercel. Uses Vercel Blob storage for assets.

2. **Signature aesthetic**: The painterly background images are the key differentiator. These are high-quality artistic landscape images (mountains, valleys, atmospheric scenes) that provide warmth and humanity to a developer tool.

3. **Pure black**: Unlike most dark themes that use near-black (#0a0a0f), Cursor uses true black (#000000) which creates maximum contrast and makes the painterly backgrounds more vivid.

4. **Glass-like cards**: UI elements floating over backgrounds use subtle transparency and backdrop blur to create depth without obscuring the artistic backdrops.

5. **Minimal chrome**: Navigation and UI elements are stripped to essentials. The design trusts the content and imagery rather than decorative elements.

6. **Interactive demos**: The homepage features live product demos that show actual IDE interfaces, code completion, and integrations — a sophisticated technical implementation.

7. **Logo trust bar**: Client logos (Stripe, OpenAI, Linear, etc.) appear with subtle companion graphics, adding visual interest to social proof.

## What couldn't be extracted

- **Exact background images**: The painterly landscapes are hosted on Vercel Blob and would need to be recreated or licensed
- **Interactive demo code**: The complex React components powering the demos
- **Custom fonts**: May use custom font loading beyond Inter
- **Animation keyframes**: Complex scroll-triggered animations
