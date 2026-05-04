# MCP data integration

**Level:** 0 — Context (heavy pulls)

Per Exa-first protocol (`.claude/rules/exa-protocol.md`), Exa is the default research substrate. MCP fallback chain documented below.

## Pulls fresh

| Source | What to pull | Tool | When |
|--------|-------------|------|------|
| **Exa** | Company profile, funding, news | `company_research_exa` | Always |
| **Firecrawl** | Website scrape (about, pricing, careers) + site map | `firecrawl_scrape`, `firecrawl_map` | Always |
| **Apollo** | Org enrichment (funding, team size, tech stack) | `apollo_search_companies` | Always |
| **Apollo** | Job postings (hiring activity, investment signals) | `apollo_get_organization_job_postings` | Account brief mode (uses credits) |
| **Apollo** | Key people (decision-makers at target company) | `apollo_search_people` | Account brief mode (free) |
| **YouTube** | Channel presence check + recent video samples | `get_transcript` | If YouTube channel exists |
| **Slack** | Prior mentions of company/prospect | `slack_search_public` | Always |
| **Granola** | Previous meetings with this company | `search_meetings` | Always |

## Fallback (no MCP)

- `WebSearch` for company profile and funding data — flag the gap in output
- `WebFetch` for website pages
- Manual search for enrichment data

## Tool surface during the migration window

- New plugin (preferred): `mcp__plugin_exa_exa__company_research_exa` (after `claude plugin i exa@claude-plugins-official`)
- Legacy MCP (still mounted): `mcp__exa__company_research_exa`
- Both backends route to the same Exa API — they don't double-bill

## Citation standard

Every Exa-derived claim uses `[VERIFIED: exa_search, {url}, accessed {YYYY-MM-DD}]` per `.claude/rules/ontology.md`.

## Quality gate (research outputs)

- ≥3 sources per major claim
- ≥50% `[VERIFIED]` confidence
- Date filter for any "recent / latest" claim
- No fallback to `WebSearch` without flagging the data gap

Worked examples + tool catalog: `.claude/skills/meta-skills/exa/`.
