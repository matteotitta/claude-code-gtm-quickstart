# Visual Artifact Template

Generate a React component that visualizes the extracted design system. The artifact should be self-contained and render an interactive design system preview.

## Component structure

```jsx
import React, { useState } from 'react';

// Design tokens extracted from the website
const tokens = {
  colors: {
    primary: { value: '#6366f1', name: 'Primary' },
    // ... more colors
  },
  typography: {
    fontFamily: {
      primary: "'Inter', sans-serif",
      // ...
    },
    fontSize: {
      xs: '0.75rem',
      sm: '0.875rem',
      // ...
    },
  },
  spacing: {
    1: '4px',
    2: '8px',
    // ...
  },
  radius: {
    sm: '4px',
    md: '8px',
    // ...
  },
  shadows: {
    sm: '0 1px 2px rgba(0,0,0,0.05)',
    // ...
  },
};

export default function DesignSystemPreview() {
  const [copiedValue, setCopiedValue] = useState(null);

  const copyToClipboard = (value, label) => {
    navigator.clipboard.writeText(value);
    setCopiedValue(label);
    setTimeout(() => setCopiedValue(null), 2000);
  };

  return (
    <div style={{ fontFamily: tokens.typography.fontFamily.primary }}>
      {/* Header */}
      <header>
        <h1>{brandName} Design System</h1>
        <p>Extracted from {sourceUrl}</p>
      </header>

      {/* Color Palette Section */}
      <ColorPalette colors={tokens.colors} onCopy={copyToClipboard} />

      {/* Typography Section */}
      <TypographyShowcase typography={tokens.typography} />

      {/* Spacing Scale Section */}
      <SpacingScale spacing={tokens.spacing} />

      {/* Effects Section */}
      <EffectsDemo radius={tokens.radius} shadows={tokens.shadows} />

      {/* Component Examples Section */}
      <ComponentExamples tokens={tokens} />

      {/* Copy notification */}
      {copiedValue && <CopyNotification value={copiedValue} />}
    </div>
  );
}
```

## Section components

### Color palette

Display colors as a grid of swatches. Each swatch shows:
- Color fill
- Name label
- Hex/RGB value
- Click to copy functionality

Group colors by category: Brand, Semantic, Neutrals, Gradients

```jsx
function ColorPalette({ colors, onCopy }) {
  return (
    <section>
      <h2>Colors</h2>
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(120px, 1fr))', gap: '16px' }}>
        {Object.entries(colors).map(([key, { value, name }]) => (
          <div
            key={key}
            onClick={() => onCopy(value, name)}
            style={{
              cursor: 'pointer',
              borderRadius: '8px',
              overflow: 'hidden',
              border: '1px solid #e5e5e5',
            }}
          >
            <div style={{ height: '80px', background: value }} />
            <div style={{ padding: '8px', fontSize: '12px' }}>
              <div style={{ fontWeight: 600 }}>{name}</div>
              <div style={{ color: '#666', fontFamily: 'monospace' }}>{value}</div>
            </div>
          </div>
        ))}
      </div>
    </section>
  );
}
```

### Typography showcase

Display each font family, weight, and size combination:

```jsx
function TypographyShowcase({ typography }) {
  return (
    <section>
      <h2>Typography</h2>
      
      {/* Font families */}
      <div>
        <h3>Font Families</h3>
        {Object.entries(typography.fontFamily).map(([key, value]) => (
          <div key={key} style={{ fontFamily: value, marginBottom: '16px' }}>
            <span style={{ fontSize: '12px', color: '#666' }}>{key}:</span>
            <p style={{ fontSize: '24px', margin: '4px 0' }}>
              The quick brown fox jumps over the lazy dog
            </p>
            <code style={{ fontSize: '12px' }}>{value}</code>
          </div>
        ))}
      </div>

      {/* Type scale */}
      <div>
        <h3>Type Scale</h3>
        {Object.entries(typography.fontSize).map(([key, value]) => (
          <div key={key} style={{ display: 'flex', alignItems: 'baseline', gap: '16px', marginBottom: '8px' }}>
            <span style={{ width: '60px', fontSize: '12px', color: '#666' }}>{key}</span>
            <span style={{ fontSize: value }}>Aa</span>
            <code style={{ fontSize: '12px' }}>{value}</code>
          </div>
        ))}
      </div>
    </section>
  );
}
```

### Spacing scale

Visualize spacing as proportional boxes:

```jsx
function SpacingScale({ spacing }) {
  return (
    <section>
      <h2>Spacing</h2>
      <div style={{ display: 'flex', flexDirection: 'column', gap: '8px' }}>
        {Object.entries(spacing).map(([key, value]) => (
          <div key={key} style={{ display: 'flex', alignItems: 'center', gap: '16px' }}>
            <span style={{ width: '40px', fontSize: '12px', color: '#666' }}>{key}</span>
            <div
              style={{
                width: value,
                height: '24px',
                background: 'linear-gradient(135deg, #6366f1, #8b5cf6)',
                borderRadius: '4px',
              }}
            />
            <code style={{ fontSize: '12px' }}>{value}</code>
          </div>
        ))}
      </div>
    </section>
  );
}
```

### Effects demo

Show radius and shadow variations:

```jsx
function EffectsDemo({ radius, shadows }) {
  return (
    <section>
      <h2>Effects</h2>
      
      {/* Border radius */}
      <div>
        <h3>Border Radius</h3>
        <div style={{ display: 'flex', gap: '16px', flexWrap: 'wrap' }}>
          {Object.entries(radius).map(([key, value]) => (
            <div key={key} style={{ textAlign: 'center' }}>
              <div
                style={{
                  width: '64px',
                  height: '64px',
                  background: '#f0f0f0',
                  borderRadius: value,
                  border: '2px solid #333',
                }}
              />
              <div style={{ fontSize: '12px', marginTop: '4px' }}>{key}</div>
              <code style={{ fontSize: '10px' }}>{value}</code>
            </div>
          ))}
        </div>
      </div>

      {/* Shadows */}
      <div>
        <h3>Shadows</h3>
        <div style={{ display: 'flex', gap: '24px', flexWrap: 'wrap' }}>
          {Object.entries(shadows).map(([key, value]) => (
            <div key={key} style={{ textAlign: 'center' }}>
              <div
                style={{
                  width: '80px',
                  height: '80px',
                  background: '#fff',
                  borderRadius: '8px',
                  boxShadow: value,
                }}
              />
              <div style={{ fontSize: '12px', marginTop: '8px' }}>{key}</div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
```

### Component examples

Show button variants, cards, inputs:

```jsx
function ComponentExamples({ tokens }) {
  return (
    <section>
      <h2>Components</h2>
      
      {/* Buttons */}
      <div>
        <h3>Buttons</h3>
        <div style={{ display: 'flex', gap: '12px', flexWrap: 'wrap' }}>
          <button style={{ /* primary styles */ }}>Primary</button>
          <button style={{ /* secondary styles */ }}>Secondary</button>
          <button style={{ /* ghost styles */ }}>Ghost</button>
          <button style={{ /* destructive styles */ }}>Destructive</button>
        </div>
      </div>

      {/* Cards */}
      <div>
        <h3>Cards</h3>
        <div style={{ /* card styles */ }}>
          <h4>Card Title</h4>
          <p>Card content with extracted styling.</p>
        </div>
      </div>

      {/* Inputs */}
      <div>
        <h3>Inputs</h3>
        <input type="text" placeholder="Default input" style={{ /* input styles */ }} />
        <input type="text" placeholder="Focus state" style={{ /* focus styles */ }} />
      </div>
    </section>
  );
}
```

## Styling guidelines

1. Use inline styles for portability (artifact will render standalone)
2. Apply extracted tokens directly to demonstrate real appearance
3. Use the brand's background color for the artifact background
4. Include hover states where possible (use useState for interactive demos)
5. Add subtle animations to demonstrate motion tokens

## Interactive features

- Click any color swatch to copy hex value
- Click any code snippet to copy
- Hover states on buttons and cards
- Toggle between light/dark mode if both were extracted

## Responsive behavior

The artifact should work at different viewport sizes:
- Use CSS Grid with `auto-fill` for color swatches
- Stack sections vertically on narrow viewports
- Maintain readable font sizes
