# Process — full step-by-step (4 phases)

The brand kit runs in 4 phases: capture & analyze → visual description → compile DESIGN.md → write/lint/verify. Read this when running the skill end-to-end.

---

## Phase 1: Capture & analyze

**Purpose:** Collect visual data and extract design tokens from screenshots.

**Steps:**

1. **Step 1.1: Collect screenshots**
   - If user provided screenshots → use directly (images in context or file paths via Read tool)
   - If user provided URL only → use Playwright `browser_take_screenshot` on homepage, about, pricing pages
   - If user provided Figma URL → use Figma MCP `get_screenshot` + `get_design_context`
   - **Output:** 3-5 screenshots in context

2. **Step 1.2: Visual analysis of each screenshot**
   Extract from the visuals:
   - **Colors** — primary, secondary, accent, background, text, borders, gradients. Sample hex values from visible elements
   - **Typography** — font families (identify by letterform shape), sizes, weights, line heights
   - **Spacing** — padding, margins, gaps, section spacing. Identify the base unit
   - **Components** — buttons (states, shapes), cards (borders, shadows, radius), navigation, inputs
   - **Effects** — border radius scale, shadows, blur, gradients, overlays
   - **Layout** — grid system, column structure, responsive patterns
   - **Output:** Raw token inventory with confidence scores

3. **Step 1.3: (Optional) Supplementary CSS extraction**
   If URL provided, fetch pages via WebFetch or Firecrawl for:
   - CSS custom properties (`:root` variables)
   - Google Fonts imports (exact font names)
   - Tailwind config or CSS framework detection
   - Exact hex values from stylesheets

   **Platform detection strategy:**
   | Platform | Detection signal | Extraction strategy |
   |----------|------------------|---------------------|
   | Framer | `framerusercontent.com` URLs | Visual analysis primary (CSS compiled away) |
   | Webflow | `.w-` class prefixes | Check compiled CSS for variables |
   | Next.js | `_next/static/` paths | Parse CSS files for tokens |
   | WordPress | `/wp-content/themes/` | Theme CSS files |
   | Tailwind | Utility classes in HTML | Extract config values |
   | Custom | CSS variables in `:root` | Direct extraction |

4. **Step 1.4: Cross-reference and score confidence**
   - Where visual analysis and CSS agree → confidence 5
   - CSS-only values → confidence 4
   - Visual-only values (strong evidence) → confidence 3
   - Inferred from patterns → confidence 2
   - Approximated, needs verification → confidence 1
   - Unknown/placeholder → confidence 0
   - **Output:** Final token inventory with confidence scores

**Phase 1 checkpoint:** ≥3 screenshots analyzed; colors extracted with hex values; typography identified (families + scale); key components captured (buttons, cards minimum); confidence scores assigned.

---

## Phase 2: Visual description

**Purpose:** Write natural language description for vibe coding reproduction.

**Steps:**

1. **Step 2.1: Mood & atmosphere** — Emotional feeling of the design
2. **Step 2.2: Visual metaphor** — What the design evokes (specific, memorable)
3. **Step 2.3: Color story** — How colors create hierarchy and flow
4. **Step 2.4: Typography personality** — Character of the text
5. **Step 2.5: Spatial rhythm** — How space is used
6. **Step 2.6: Signature elements** — 3-5 elements that make this instantly recognizable
7. **Step 2.7: Texture & depth** — Surface quality description
8. **Step 2.8: Motion philosophy** — How things move (infer from component design)
9. **Step 2.9: Component character** — How UI elements feel
10. **Step 2.10: Prompt for reproduction** — Consolidated natural language design brief

**Phase 2 checkpoint:** description captures design essence; metaphors are evocative and specific (not generic like "modern" or "clean"); description is reproducible by AI tools.

---

## Phase 3: Compile DESIGN.md

**Purpose:** Emit the YAML token frontmatter (machine layer) AND the 8 ordered prose sections (human layer) into a single DESIGN.md file.

**Order matters:** Tokens get compiled FIRST so the prose sections can reference token names by their canonical identifier (`primary`, `body-md`, `rounded.md`). This avoids prose-to-token drift.

**Steps:**

1. **Step 3.0: Compile YAML token frontmatter** — the machine-authoritative layer
   - Build YAML in this order: `version: alpha`, `name`, optional `description`, `colors`, `typography`, `rounded`, `spacing`, `components`
   - **Colors:** required `primary` plus the palette (typically `secondary`, `tertiary`, `neutral`, `surface`, `on-surface`, `error`). All hex with `#`, sRGB.
   - **Typography:** define 5-9 typography tokens covering display/headline/body/label tiers. Each token includes `fontFamily`, `fontSize`, `fontWeight`, `lineHeight`, optional `letterSpacing`. Quote font weights as numbers (`fontWeight: 600`).
   - **Rounded:** scale (`sm`, `md`, `lg`, optional `xl`, `full`).
   - **Spacing:** base unit + scale (`xs`, `sm`, `md`, `lg`, `xl`).
   - **Components:** at minimum `button-primary` + `card`. Use `{path.to.token}` references rather than inline values. Variants follow `name-variant` convention (`button-primary-hover`).
   - **Output:** YAML token block, ready to bracket with `---` fences as the file's frontmatter.

2. **Step 3.1: Section 1 — Overview** (also "Brand & Style") — 2-4 paragraphs of brand personality, target audience, emotional response. Reference token names where helpful.

3. **Step 3.2: Section 2 — Colors** — palette rationale with one paragraph per palette color naming the semantic role and visual character. Values live in frontmatter; prose explains *why* and *when*.

4. **Step 3.3: Section 3 — Typography** — typeface choices and the voice they express. One paragraph per major font (display, body, label), referencing the token names. Don't restate `fontSize` numbers in prose.

5. **Step 3.4: Section 4 — Layout** (also "Layout & Spacing") — grid model, rhythm, container widths, negative-space philosophy. Reference `spacing.*` token names for any specific values.

6. **Step 3.5: Section 5 — Elevation & Depth** — visual hierarchy strategy. Whether the brand uses shadows, tonal layers, borders, or other techniques to convey depth.

7. **Step 3.6: Section 6 — Shapes** — corner radii language and geometry, referencing the `rounded.*` tokens. Explain shape philosophy ("architectural sharpness with 4px radius" vs "organic rounded with 16px+ radius").

8. **Step 3.7: Section 7 — Components** — component-by-component application guidance. For each component in the frontmatter, one short paragraph on usage context, when to use the variant, and what it visually communicates.

9. **Step 3.8: Section 8 — Do's and Don'ts** — opinionated guardrails as a bulleted list. Include at minimum:
   - One "Do" about primary-color usage (typically: "Do use the primary color only for the single most important action per screen")
   - One "Don't" about visual mixing (e.g., "Don't mix rounded and sharp corners in the same view" or "Don't use more than two font weights on a single screen")
   - WCAG AA contrast guideline ("Do maintain WCAG AA contrast ratios — 4.5:1 for normal text, 3:1 for large text")
   - Brand-specific rules surfaced in Phase 1/2 (e.g., logo clear-space, signature-element placement)

**Phase 3 checkpoint:** YAML frontmatter parses as valid YAML; required `primary` color defined; all `{path.to.token}` references resolve (no `broken-ref`); typography tokens defined; all 8 prose sections in canonical order; component variants follow `name-variant` convention; color hex values verified.

---

## Phase 4: Write, lint & verify

**Purpose:** Write the DESIGN.md file, run automated lint rules, update client context, verify quality.

**Steps:**

1. **Step 4.1: Write the file**
   - Output path: `marketing/brand/{MMYY}-brand-kit.md`
   - File starts with `---`, then YAML token frontmatter (Phase 3 Step 3.0), then `---`, then the 8 prose sections in canonical order

2. **Step 4.2: Run lint rules** (per `.claude/rules/design-production.md` quality bar)

   **Mandatory (errors — must fix before delivery):**
   - [ ] `broken-ref` — every `{path.to.token}` reference resolves to a defined token
   - [ ] `primary-defined` — at least one `primary` color exists in `colors`
   - [ ] `section-order` — body sections appear in canonical order

   **Strong recommendations (warnings — flag and ask user):**
   - [ ] `contrast-ratio` — every `components.*` `backgroundColor` / `textColor` pair meets WCAG AA
   - [ ] `typography-defined` — if `colors` is defined, `typography` is too
   - [ ] `orphaned-tokens` — every color token is referenced or part of the named palette
   - [ ] `one-primary-per-screen` — Do's and Don'ts includes the primary-color-restraint guideline
   - [ ] `two-font-weights-max` — Do's and Don'ts includes the font-weight-restraint guideline OR brand explicitly justifies more

   **Informational (log, don't block):** token count summary per section.

   If any mandatory rule fails: stop, report the failure with the specific token/section, do not proceed.
   If any warning fires: flag to user with the specific value and ask whether to fix or ship-as-is.

3. **Step 4.3: Self-review against quality checklist**

4. **Step 4.4: Update client CLAUDE.md**
   - Add or update the Design System reference, pointing to the new DESIGN.md file path
   - Note explicitly that the file is DESIGN.md format (so downstream skills know to parse the YAML frontmatter)

5. **Step 4.5: (Optional) Suggest downstream actions**
   - Offer to invoke `/brand-context` to sync voice signals
   - Offer to derive a `tailwind.config.ts` + `app/globals.css` snippet
   - Offer to derive a Figma variables JSON

**Phase 4 checkpoint:** DESIGN.md file written; all mandatory lint rules pass; warnings fixed or waived; self-review passed; client CLAUDE.md updated.
