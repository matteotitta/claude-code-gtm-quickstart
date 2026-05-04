# Phase 1 — Discovery research

**Purpose:** Gather raw material from all available sources before structured extraction begins.

---

## Steps

### Step 1.1: Fetch core pages

- **Homepage** — extract hero, value prop, core positioning
- **Features / Product page** — extract branded feature names (CRITICAL — see Step 1.3)
- **Pricing page** — understand tiers and value metric
- **Customers / Case studies** — extract logos, testimonials, proof points
- **About page** — company context and mission

**Output:** Raw content from 5+ pages with URLs and access dates logged.

Detailed search and scraping patterns per page → `references/extraction-patterns.md`.

### Step 1.2: Search for external data

- Search: `site:g2.com "[product]" reviews` for ratings and sentiment
- Search: `"[product]" customer testimonial` for quotes
- Search: `"[product]" vs` for competitive positioning

**Output:** External sources with URLs and access dates.

Per Exa protocol, prefer `web_search_exa` with `site:` filters for voice-of-customer harvesting (per `.claude/rules/exa-protocol.md`). Use `web_fetch_exa` to drill into specific reviews or comparison pages.

### Step 1.3: Extract branded feature names FIRST

This step happens before structured extraction (Phase 2) because branded feature names are load-bearing — every Capability and Feature in the 10-component library must use the exact branded name.

- Document exact feature names as branded by company
- Note naming conventions (capitalization, trademarks, " — by " phrasings)
- Capture variants if the company uses multiple names for the same feature

**Output:** Feature name inventory.

---

## Phase 1 checkpoint

Before moving to Phase 2:

- [ ] 5+ pages fetched with content (URLs + access dates logged)
- [ ] External sources searched (G2 / testimonials / vs-pages)
- [ ] Feature names documented verbatim
- [ ] If positioning, icp-behavioural, or competitor-research outputs exist for this client, they've been read into context

---

## Anti-patterns

- ❌ Jumping to Phase 2 extraction without 5+ source pages.
- ❌ Skipping branded feature names — leads to generic feature copy in the final library.
- ❌ Paraphrasing testimonials at extraction time — capture verbatim now, edit in Phase 3 only if needed (and even then only with explicit "[edited for clarity]" markers).
- ❌ Failing to log access date — every source needs a date for provenance.
