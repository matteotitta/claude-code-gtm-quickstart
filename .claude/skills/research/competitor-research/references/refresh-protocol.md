# Living dossier — refresh protocol

The competitor dossier is a living document. Two refresh cadences keep it
accurate without redoing the full 13-dimension research every time.

---

## Run modes

This skill supports three run modes for different cadences. Each mode has its
own cost, output behaviour, and trigger.

### Quick scan (weekly)

**Duration:** ~30 min | **Trigger:** `/competitor-research --quick [competitor]` or `/loop 1w`

Refreshes fast-moving data only. Does NOT re-research all 13 dimensions.

**Steps:**
1. Read existing competitor output file
2. Clay enrichment refresh (if Clay MCP connected) — check for funding, headcount, news changes
3. Web news search — `"[competitor]" announcement OR launch OR funding` (last 7 days)
4. Blog scrape — check for new posts since last refresh
5. G2 rating check — has rating or review count changed?
6. Internal sources check — Granola (recent meeting mentions), CRM (active deals), Google Drive (new docs)
7. Compare findings against existing output
8. Update "Recent Changes" section at top with date-stamped entries
9. Refresh only the sections where data changed (Company, Launches, Reviews)
10. Update "Last refreshed" date

**Output:** Updated competitor file with new "Recent Changes" entries. Sections without changes remain untouched.

### Deep refresh (monthly)

**Duration:** ~90 min | **Trigger:** `/competitor-research --refresh [competitor]` or `/loop 1M`

Full 13-dimension research cycle. Rewrites entire output with latest data.

**Steps:**
1. Read existing competitor output file
2. Run full Phase 1-3 process (all 13 dimensions)
3. TrustPilot customer monitoring (optional, for B2B SaaS with customer-facing products)
4. Compare ALL findings against existing output
5. Produce "Recent Changes" section highlighting what's different from last refresh
6. Rewrite all sections with latest data
7. Archive change entries older than 4 weeks to bottom
8. Run Phase 4 aggregate analysis if 2+ competitors refreshed this cycle
9. Update "Last refreshed" date

**Output:** Fully refreshed competitor dossier with change log.

### First run (new competitor)

**Duration:** ~90 min | **Trigger:** `/competitor-research [competitor]` (no --refresh flag)

Standard full process — Phases 1-3 (or 1-4 for aggregate). No existing file to compare against.

---

## Refresh discipline (--quick / --refresh modes)

When running in `--quick` or `--refresh` mode:

1. **Read first.** Before any research, read the existing competitor output file. This is your baseline.
2. **Compare, don't append.** New findings replace old data in the relevant section. Don't just add — update.
3. **"Recent Changes" at the top.** Every refresh adds date-stamped entries to the top of the file:
   ```
   ## Recent changes

   **2026-03-31:** Headcount grew from 150 → 180 (Source: LinkedIn). New blog post on AI guardrails.
   **2026-03-24:** Series C announced — $45M led by Sequoia (Source: TechCrunch).
   **2026-03-17:** G2 rating dropped from 4.6 to 4.4 — 3 new negative reviews about onboarding.
   ```
4. **Archive after 4 weeks.** Move entries older than 4 weeks to "Archived change logs" section at the bottom.
5. **"Last refreshed" date** at the top of every output.
6. **No-change = no entry.** If a dimension hasn't changed, don't add a change log entry for it.

---

## Optional internal intel sources

These sources add depth from internal knowledge. Each requires an MCP connection — the skill runs fine without them.

**Pre-flight check:** At the start of any run, check which optional MCPs are connected. For each that's available, run the corresponding queries. For each that's missing, skip silently.

| Source | MCP Required | What to Query | What to Extract |
|--------|-------------|---------------|-----------------|
| **Clay** | Clay MCP | `find-and-enrich-company` with competitor domain | Funding, headcount growth, recent news, tech stack, company competitors |
| **Granola** | Granola MCP | `query_granola_meetings` — "What was discussed about [competitor] in recent meetings?" | Deal mentions, objections raised, prospect comparisons, win/loss context |
| **Google Drive** | Google Workspace MCP | Search for `[competitor name]` in Drive | Existing battlecards, deal post-mortems, strategy docs, prior research |
| **CRM** | HubSpot / Attio MCP | Search deals mentioning competitor | Active pipeline competition, win/loss data, deal stage when competitor appeared |
| **Notion** | Notion MCP | Search for competitor name or "competitive intelligence" | Existing CI pages to UPDATE rather than duplicate |

**Integration into dimensions:**
- Clay → enriches Dimension 1 (Company) and Dimension 9 (Technographics)
- Granola → enriches Dimension 11 (GTM — real buyer signals) and data for battlecard downstream
- Google Drive → prevents duplicate research, surfaces existing context
- CRM → enriches win/loss context, active competitive landscape
- Notion → determines whether to create new output or update existing page
