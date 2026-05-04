# Output format — DESIGN.md spec

The output is a single `.md` file at `marketing/brand/{MMYY}-brand-kit.md` with two parts: machine-authoritative YAML frontmatter + 8 ordered prose sections.

---

## Part 1 — YAML token frontmatter

Machine-authoritative; consumed directly by downstream skills.

```yaml
---
version: alpha
name: "Client Brand Name"
description: "One-sentence brand identity"

colors:
  primary: "#1A1C1E"           # Required — at least one palette
  secondary: "#6C7278"
  tertiary: "#B8422E"
  neutral: "#F7F5F2"
  surface: "#FFFFFF"
  on-surface: "#1A1C1E"
  error: "#C62828"

typography:
  display-lg: { fontFamily: "Inter", fontSize: 84px, fontWeight: 700, lineHeight: 1.05, letterSpacing: -0.04em }
  headline-lg: { fontFamily: "Inter", fontSize: 32px, fontWeight: 600, lineHeight: 1.1 }
  body-md: { fontFamily: "Inter", fontSize: 16px, fontWeight: 400, lineHeight: 1.6 }
  label-sm: { fontFamily: "Inter", fontSize: 12px, fontWeight: 600, lineHeight: 1, letterSpacing: 0.05em }

rounded:
  sm: 4px
  md: 8px
  lg: 12px
  full: 9999px

spacing:
  base: 8px
  xs: 4px
  sm: 8px
  md: 16px
  lg: 32px
  xl: 64px

components:
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.surface}"
    typography: "{typography.label-sm}"
    rounded: "{rounded.md}"
    padding: 12px 24px
  card:
    backgroundColor: "{colors.surface}"
    rounded: "{rounded.lg}"
    padding: "{spacing.lg}"
---
```

Token references use `{path.to.token}` syntax. All colors are hex with `#`. Dimensions are number + unit (`px`, `em`, `rem`).

---

## Part 2 — Markdown body (8 ordered sections)

Order matters. Each section can be omitted, but the order is fixed:

1. **Overview** (or "Brand & Style") — brand personality, target emotional response
2. **Colors** — palette rationale with semantic role per palette
3. **Typography** — typeface choices, voice expressed through type
4. **Layout** (or "Layout & Spacing") — grid model, rhythm
5. **Elevation & Depth** — visual hierarchy strategy
6. **Shapes** — corner radii, geometry language
7. **Components** — component-by-component application guidance
8. **Do's and Don'ts** — opinionated guardrails (e.g., "one primary color per screen", "never mix rounded and sharp corners")

**Tokens are normative; prose explains.** When prose names a color "Boston Clay" and the token is `tertiary: "#B8422E"`, the token is what gets rendered. Prose is what gets quoted in design rationale.
