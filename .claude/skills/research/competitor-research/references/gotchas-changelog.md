# Gotchas + changelog

Hard-won lessons from prior runs, plus the version history that explains why
the skill looks the way it does.

---

## Gotchas

- **Fabricated competitor data**: When Exa/Apollo returns sparse results, Claude invents plausible-sounding data (funding rounds, employee counts, features) → Mark as [UNAVAILABLE] per ontology rules. Never fill gaps with generated data.
- **Company doesn't exist**: Claude proceeds with analysis without verifying the company actually exists → Always verify company URL resolves and has real content before deep analysis.
- **Shallow competitor differentiation**: Produces generic "they focus on X, we focus on Y" instead of specific feature/positioning differences → Ground every claim in scraped website copy or verified source.
- **Missing threat level assignment**: Forgets to assign PRIMARY/ENTERPRISE/DIRECT/STEALTH/LOW threat level → Threat level is required per ontology entity schema.
- **Stale data not flagged**: Uses cached/old information without noting when it was last verified → Include access date on every source; flag anything older than 6 months.

---

## Changelog

| Version | Date | Changes |
|---------|------|---------|
| 2.7 | 2026-03-31 | Living dossier: added run modes (quick-scan/deep-refresh), refresh protocol with change detection and "Recent Changes" rolling log. Added optional MCP integrations: Clay (company enrichment), Granola (meeting intel), Google Drive (existing docs), CRM (deal intel), Notion (existing CI pages). Added TrustPilot customer monitoring to Dimension 5 (Reviews). Added Clay enrichment as preferred source for Dimension 1 (Company). Added scheduling instructions for /loop and /schedule. |
| 2.4 | 2026-03-17 | Expanded from 11 → 13 dimensions. Added D12 (LinkedIn/Social): organic posting strategy, content types, founder activity, follower count. Added D13 (Paid advertising): LinkedIn Ads Library, Meta Ads Library, Google Ads Transparency Center — includes "no ads" as verified data point. Expanded D11 (GTM) with outbound signals: SDR/BDR hiring, tool stack detection from JDs, channel mix estimation. Added process steps 2.12 and 2.13. Added Apify RAG browser and ads library URL patterns to MCP integrations. Updated all quality checklists and self-evaluation sections from 11 → 13. |
| 2.3 | 2026-02-06 | Phase 4: Aggregate Analysis — new cross-competitor synthesis phase triggered after 2+ deep dives for same client. Includes threat matrix, feature parity, credibility signals, market positioning dynamics, and strategic recommendations. New `aggregate-insights` output type. |
| 2.1 | 2026-01-21 | Agentic enhancements: YAML frontmatter with dependencies/outputs/triggers, visual flowchart, self-evaluation protocol, enhanced auto-update with reference example capture, upstream/downstream integration map |
| 2.0 | 2026-01-16 | Refactored to v2.0 template: structured phases, confidence scoring, iteration prompts, auto-update rules |
| 1.0 | Original | Initial skill creation with 11 dimensions |
| 2.8 | 2026-04-29 | Phase 3 lossless slim: SKILL.md reduced from 1609 → ~280 lines. Detail relocated to references/ — no content lost. References/ split into steps/ (4 phase files) and examples/ (3 worked examples). New reference files: refresh-protocol, process-flowchart, quality-gates, iteration-prompts, gotchas-changelog. Pre-slim original archived at .claude/skills/_archive/competitor-research/SKILL-pre-slim-20260429.md. |

---

## MCP data integration (Level 0 — Context, heavy pulls)

### Pulls fresh

| Source | What to pull | Tool | When |
|--------|-------------|------|------|
| **Exa** | Company profile per competitor | `company_research_exa` | Per competitor |
| **Firecrawl** | Full competitor site crawl + map | `firecrawl_crawl`, `firecrawl_map` | Per competitor |
| **Apify** | G2/Capterra reviews | `call-actor` (g2-scraper) | Per competitor |
| **YouTube** | Competitor video content/presence | `get_transcript` | If YouTube channel exists |
| **GTM** | Competitor tracking patterns | `list_tags` | If container accessible |
| **Slack** | Internal competitive intel threads | `slack_search_public` | Always |
| **Granola** | Client call mentions of competitors | `search_meetings` | Always |
| **Apify RAG browser** | LinkedIn Ads Library, Meta Ads Library, Google Ads Transparency Center | `apify-slash-rag-web-browser` | D13 per competitor |
| **Firecrawl** | Full site crawl + ads library pages (when credits available) | `firecrawl_scrape` | Per competitor; fallback to Apify if credits exhausted |

**D13 URL patterns:**

| Platform | URL pattern | Priority |
|----------|------------|----------|
| LinkedIn Ads Library | `linkedin.com/ad-library/search?companyIds=[handle]` | High (B2B standard) |
| Google Ads Transparency | `adstransparency.google.com` (search by domain) | High (search ads common) |
| Meta Ads Library | `facebook.com/ads/library/?q=[competitor name]` | Low (B2B enterprise unlikely) |

### Fallback (no MCP)

- WebSearch + WebFetch for competitor sites and profiles
- Manual G2/Capterra review search
- Manual competitive intel gathering
