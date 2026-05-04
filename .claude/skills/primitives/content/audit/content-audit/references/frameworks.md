# Content audit — core frameworks

Hoisted from pre-slim SKILL.md (`Core Frameworks` and `API Integration Notes` sections, lines 454–532). Detailed scoring rubrics also live in `scoring-framework.md`. Channel-specific scraping methods live in `channel-scraping-guide.md`.

---

## Content Pillar Assessment Framework

| Pillar | Target % | What to Look For |
|--------|----------|------------------|
| **Educational** | 40% | Guides, tutorials, frameworks, comparisons, trends |
| **Personal** | 25% | Founder stories, hot takes, lessons learned, vulnerability |
| **Promotional** | 25% | Case studies, demos, product updates, testimonials |
| **Organizational** | 10% | Team spotlights, milestones, culture, hiring |

## Channel Audit Dimensions

| Dimension | What to Assess | Scoring Basis |
|-----------|----------------|---------------|
| **Volume** | Posts/month, videos/month | vs. B2B benchmarks |
| **Cadence** | Consistency, gaps, predictability | Publishing regularity |
| **Topics** | Theme coverage, pillar balance | Topic diversity |
| **Formats** | Content type mix | Format variety |
| **Quality** | Depth, structure, production | Content standards |
| **Engagement** | Visible engagement signals | Audience response |
| **Voice** | Consistency, distinctiveness | Brand coherence |

## Audit Scoring Scale

| Score | Label | Definition |
|-------|-------|------------|
| 5 | Excellent | Best-in-class, exceeds benchmarks |
| 4 | Strong | Above average, minor improvements possible |
| 3 | Adequate | Meets baseline, clear improvement areas |
| 2 | Weak | Below average, significant gaps |
| 1 | Critical | Major issues, requires intervention |

## B2B Content Benchmarks

| Channel | Minimum | Good | Excellent |
|---------|---------|------|-----------|
| **Newsletter/Blog** | 2/month | 4/month | 8+/month |
| **LinkedIn (company)** | 3/week | 5/week | Daily |
| **LinkedIn (founder)** | 2/week | 4/week | Daily |
| **YouTube** | 1/month | 2/month | Weekly |
| **Events** | 1/quarter | 1/month | 2+/month |

---

## API Integration Notes

### YouTube Data API (v3)

If user provides API key:
- Channel statistics: subscribers, total views, video count
- Video list with: views, likes, comments, duration
- Playlist information
- **Endpoint:** `youtube.googleapis.com/youtube/v3/`

### LinkedIn API (Limited)

LinkedIn API access is restricted. Options:
- **Company pages:** Limited public data via page scraping
- **Profile data:** Not accessible via API
- **Alternative:** Manual review or third-party tools (Shield, Taplio)

### Newsletter Platforms

| Platform | Data Access |
|----------|-------------|
| **Substack** | Public archive, limited metrics |
| **Beehiiv** | Public archive only |
| **ConvertKit** | Requires account access |
| **Ghost** | Public posts only |

### Events Platforms

| Platform | Data Access |
|----------|-------------|
| **Luma** | Public events, attendee counts sometimes hidden |
| **Eventbrite** | Public events, limited attendee data |
| **LinkedIn Events** | Public, limited metrics |

---

## MCP data integration (Level 0 — heavy pulls)

### Pulls fresh

| Source | What to pull | Tool | When |
|--------|-------------|------|------|
| **Firecrawl** | Full site crawl (content inventory) | `firecrawl_crawl` | Always |
| **GTM** | Tag/trigger audit (what's measured) | `list_tags`, `list_triggers` | Always |
| **GSC** | Page performance data (clicks, impressions, position) | GSC pages API | Always (when available) |
| **Exa** | Competitor content benchmarks | `web_search_exa` | Always |

### Fallback (no MCP)

- WebFetch for manual page inventory
- Manual analytics review
- WebSearch for competitor content benchmarks
