---
name: brand-kit
version: '4.0'
last_updated: 2026-04-26
author: marketing-team
description: 'Extracts visual identity from screenshots (primary) or website URLs (fallback) and compiles into a DESIGN.md-format
  brand system file: YAML token frontmatter (colors, typography, rounded, spacing, components) + 8 ordered prose sections
  (Overview, Colors, Typography, Layout, Elevation & Depth, Shapes, Components, Do''s and Don''ts). Screenshot-first for higher
  fidelity — Claude''s vision extracts exact colors, spacing, and component patterns directly from pixels. The YAML tokens
  are machine-authoritative and consumed directly by landing-page-wireframe, landing-page-copy, landing-page-playground, landing-page-audit,
  vibe-coding, website-build, website-copy, figma-to-prototype, dashboard, and downstream visual-brief skills (linkedin-carousels,
  linkedin-infographics, sales-deck, one-pager, ad-creative-brief). Triggers: "brand kit", "brand guidelines", "brand identity",
  "extract brand", "design system", "design tokens", "visual identity", "brand file for [client]", "DESIGN.md for [client]".
  Upstream: recommended company-context. NOT for voice/messaging context — use brand-context instead. Authority: see `.claude/rules/design-production.md`
  for the integration contract with shadcn and downstream consumers.'
goal: 'Extracts visual identity from screenshots (primary) or website URLs (fallback) and compiles into a DESIGN.md-format
  brand system file: YAML token frontmatter (colors, typography, rounded, spacing, com'
outcome: 'Extracts visual identity from screenshots (primary) or website URLs (fallback) and compiles into a DESIGN.md-format
  brand system file: YAML token frontmatter (colors, typography, rounded, spacing, components) + 8 ordered prose sections
  (Overview, Colors, Typography, Layout, Elevation & Depth,...'
primitive: research
ontology_type: brand-kit
review_gate: 2
inputs:
  required: []
  recommended:
  - company-context
outputs:
- type: brand-kit
  feeds_into:
  - landing-page-wireframe
  - website-copy
  - vibe-coding
  - website-build
  - website-copy
  - figma-to-prototype
  - dashboard
  - linkedin-carousels
  - linkedin-infographics
  - sales-deck
  - one-pager
  - ad-creative-brief
depends_on: []
feeds_into:
- ad-creative-brief
- dashboard
- figma-to-prototype
- website-copy
- landing-page-wireframe
- linkedin-carousels
- linkedin-infographics
- one-pager
- sales-deck
- vibe-coding
- website-build
- website-copy
owned_by_agent: researcher
mcps_used:
- exa
- figma
- firecrawl
push_targets:
- gdrive
triggers:
  slash_commands: []
  natural_language: []
status: draft
locked_by: null
locked_date: null
lock_version: null
sources_count: 0
effort: high
---

## Research substrate (Exa)

**Default:** Exa, per `.claude/rules/exa-protocol.md` (auto-loaded for research, audit, competitor, ICP, AEO, content sourcing, sales prospecting work).

**Primary tools:** `web_search_exa, web_fetch_exa`. **Use case:** fallback visual-identity reference harvest when screenshots unavailable.

**Citation:** every Exa-derived claim uses `[VERIFIED: exa_search, {url}, accessed {YYYY-MM-DD}]` per `.claude/rules/ontology.md`. **Quality gate:** ≥3 sources per major claim, ≥50% `[VERIFIED]` confidence.

---

# Brand Kit

Extract visual identity from screenshots and compile into a **DESIGN.md-format** brand system file: YAML token frontmatter (machine-authoritative) + 8 ordered prose sections (human rationale). Screenshot-first approach for pixel-perfect fidelity — URL scraping available as supplementary input.

**Scope:** Visual identity only. Voice, copy, and messaging live in TOV guidelines and client CLAUDE.md — not in the brand kit. Use `/brand-context` for voice sync.

**Authority:** This skill produces the canonical input for every downstream visual-production skill. The integration contract (how DESIGN.md flows to shadcn primitives, Figma variables, and non-web tools) is defined in `.claude/rules/design-production.md` — that file auto-loads when working on visual production. Read it before invoking this skill.

---

## Output format — DESIGN.md

The output is a single `.md` file at `marketing/brand/{MMYY}-brand-kit.md` with two parts: machine-authoritative YAML frontmatter (colors, typography, rounded, spacing, components with `{path.to.token}` cross-refs) + 8 ordered prose sections (Overview → Colors → Typography → Layout → Elevation & Depth → Shapes → Components → Do's and Don'ts).

Full spec — YAML schema + all 8 section definitions: [`references/output-format.md`](./references/output-format.md).

**Tokens are normative; prose explains.** When prose names a color "Boston Clay" and the token is `tertiary: "#B8422E"`, the token is what gets rendered.

---

## Claude Code triggers

**Invoke when:**
- "extract brand from [company]"
- "brand kit for [client]"
- "brand guidelines for [URL]"
- "brand identity for [company]"
- "design system extraction"
- "get colors and fonts from [screenshots/URL]"
- "create brand file for [client]"
- "build brand system for [client]"
- "design tokens from [company]"
- "visual identity extraction"
- After completing initial client onboarding when brand assets are available

**Do NOT invoke when:**
- User wants TOV/voice guidelines → use `/tov-guidelines`
- User wants messaging/positioning → use `/product-messaging`
- User wants competitor analysis → use `/competitor-research`

---

## Modes

### Quick mode (default)

Use when you have screenshots and/or a website URL. Analyze screenshots → extract visual identity → compile into template → mark gaps as `[NEEDS VERIFICATION]`.

**Time:** ~10 minutes. **Quality:** Good for drafts, internal use, early engagement.

### Full mode

Use when you have brand guidelines PDF, Figma access, or prior work alongside screenshots. Gather all sources → cross-reference for accuracy → populate all 8 sections with verified data → self-review.

**Time:** ~20 minutes. **Quality:** Production-ready, client-facing.

**Trigger:** Use full mode when user says "full brand kit" or provides multiple source types.

---

## Proactive input prompting

When invoked, immediately ask for these inputs before starting:

> **Before I create the brand kit, I need:**
>
> 1. **Client name** — which client is this for?
> 2. **Screenshots** — paste or provide paths to 3-5 screenshots (homepage, about, pricing, feature page)
> 3. **Website URL** (optional) — I'll use this for supplementary CSS extraction
> 4. **Mode** — Quick (screenshots only) or Full (with brand PDF/Figma/prior work)?
> 5. **Any brand assets?** — Figma files, brand PDF, style guide, logo files?
>
> _If you give me just a URL, I'll take screenshots via Playwright and run in Quick mode._

Skip prompting if all inputs are already clear from context.

---

## Input requirements

### Required

| Input | Description | Source |
|-------|-------------|--------|
| **Screenshots** (primary) | 3-5: homepage, about, pricing, feature page | User pastes images, file paths, or URL for auto-capture |
| **Client name** | Company name | User specification |

### Optional (improve quality significantly)

| Input | How it helps |
|-------|--------------|
| Website URL | Supplementary CSS extraction — exact hex values, font imports, variable names |
| Figma URL | Exact tokens via Figma MCP (`get_screenshot` + `get_variable_defs`) |
| Brand PDF / style guide | Official brand assets — verified colors, fonts, usage rules |
| Logo files | Exact logo variants for Section 5 |

### Validation

Before proceeding: at least one source available (screenshots, URL, or brand PDF); client project folder exists at `marketing/` (or will be created); template file exists at `references/BRAND-KIT-TEMPLATE.md`.

---

## Process

The brand kit runs in 4 phases. Read [`references/process.md`](./references/process.md) for the full step-by-step.

Phase summary:

1. **Capture & analyze** — collect screenshots, visual analysis (colors / typography / spacing / components / effects / layout), optional CSS extraction with platform detection, cross-reference and score confidence (0-5).
2. **Visual description** — mood, metaphor, color story, typography personality, spatial rhythm, signature elements, texture, motion, component character, prompt for reproduction.
3. **Compile DESIGN.md** — YAML tokens FIRST (Step 3.0), then 8 prose sections in canonical order. Tokens are machine-authoritative; prose explains.
4. **Write, lint & verify** — write file, run 8 lint rules (3 mandatory: broken-ref, primary-defined, section-order; 5 strong recommendations: contrast-ratio, typography-defined, orphaned-tokens, one-primary-per-screen, two-font-weights-max), self-review, update client CLAUDE.md, suggest downstream actions.

---

## Anti-hallucination guardrails

1. **Never invent hex values.** If you can't extract a color with confidence, mark it as `[NEEDS VERIFICATION]` with your best approximation and confidence score.
2. **Never invent font names.** If you can't identify the font, describe the letterform shape and suggest likely candidates marked `[NEEDS VERIFICATION]`.
3. **Never invent logo variants.** Only document logo files that actually exist in the project folder.
4. **Mark confidence levels.** Every token gets a 0-5 confidence score.
5. **Source every section.** Note whether each value came from screenshot analysis, CSS extraction, or brand PDF.
6. **Screenshots are visual truth.** When CSS and screenshots disagree, trust what you see in the screenshot — the CSS may be overridden or compiled differently.

---

## Quality

Pre-delivery checklist + confidence scoring + worked example (Linear.app) + anti-examples + iteration prompts library: [`references/quality.md`](./references/quality.md).

---

## Integration with other skills

The DESIGN.md output is the canonical input for every visual-production skill. The contract — how tokens flow to shadcn primitives (web), Figma variables, and non-web tools — is defined in `.claude/rules/design-production.md`.

| Skill | Relationship | What it reads from DESIGN.md |
|-------|--------------|------------------------------|
| **company-context** | Upstream | (Provides company description / ICP — input, not output) |
| **brand-context** | Sibling sync | Reads voice signals → updates client CLAUDE.md |
| **landing-page-wireframe** | Downstream (web) | All tokens → wireframe spec |
| **landing-page-copy** | Downstream (web) | colors, typography, Do's/Don'ts |
| **landing-page-playground** | Downstream (web) | All tokens → multiple variants |
| **landing-page-audit** | Downstream (web) | All tokens (used as the rubric) |
| **vibe-coding** | Downstream (web) | All tokens → CSS vars + Tailwind config + shadcn components |
| **website-build** | Downstream (orchestrator) | All tokens (orchestrates brand → wireframe → copy → deploy) |
| **website-copy** | Downstream (web) | colors (semantic), typography, Do's/Don'ts |
| **figma-to-prototype** | Downstream (Figma) | All tokens → Figma variables |
| **dashboard** | Downstream (web) | colors, typography, spacing → React + shadcn + recharts |
| **linkedin-carousels** | Downstream (brief) | colors, typography, Do's/Don'ts |
| **linkedin-infographics** | Downstream (brief) | colors, typography, components |
| **sales-deck** | Downstream (brief) | colors, typography, components |
| **one-pager** | Downstream (brief) | colors, typography, spacing, components |
| **ad-creative-brief** | Downstream (brief) | colors, typography, components |

---

## MCP data integration

**Level:** 0 — Context (heavy pulls)

### Pulls fresh

| Source | What to pull | Tool | When |
|--------|-------------|------|------|
| **Playwright** | Screenshots of website pages | `browser_take_screenshot` | When user provides URL instead of screenshots |
| **Figma** | Design tokens and screenshots | `get_screenshot`, `get_variable_defs` | When user provides Figma URL |
| **Firecrawl** | Website CSS for supplementary extraction | `firecrawl_scrape` | Optional — URL provided |
| **Exa** | Brand mentions, visual identity references | `web_search_exa` | Optional enrichment |

### Fallback (no MCP)

- User-provided screenshots (always works — no MCP needed)
- WebFetch for website pages
- WebSearch for brand references

---

## Reference files

| File | Purpose |
|------|---------|
| [`references/process.md`](./references/process.md) | Full 4-phase step-by-step (capture / describe / compile / lint) |
| [`references/output-format.md`](./references/output-format.md) | DESIGN.md spec — YAML schema + 8 section definitions |
| [`references/quality.md`](./references/quality.md) | Pre-delivery checklist + Linear.app worked example + iteration prompts |
| [`references/BRAND-KIT-TEMPLATE.md`](./references/BRAND-KIT-TEMPLATE.md) | Template with placeholder sections |
| [`references/example-cursor.md`](./references/example-cursor.md) | Reference implementation: Cursor |
| [`references/visual-artifact-template.md`](./references/visual-artifact-template.md) | React component for interactive design system preview |

---

## Changelog

| Version | Date | Changes |
|---------|------|---------|
| 4.0 | 2026-04-26 | **DESIGN.md format adoption.** YAML token frontmatter + 8 ordered prose sections. Phase 3 reorganized to compile YAML tokens FIRST, then prose. Phase 4 adds 8 lint rules as automated quality gate. Integration table expanded to 14 downstream consumer skills. New `.claude/rules/design-production.md` doctrine file is the source of truth for the integration contract. |
| 3.0 | 2026-04-07 | Merged brand-hub compilation into brand-guidelines. Screenshot-first input. 8-section output. Renamed to brand-kit. |
| 2.0 | 2026-01-16 | Refactored to v2.0: structured phases, Claude Code triggers, visual description framework, examples |
| 1.0 | 2025-XX-XX | Initial skill creation |
