# Marketing — workspace context

This is your marketing team's workspace. Every skill output lands here, organized by the marketing/ folder convention — a folder convention where each subfolder maps to a knowledge type (ICP, positioning, messaging, brand, etc.) and each output file follows the `MMYY-topic.md` naming convention.

## Your team

<!-- QUICKSTART: This section gets personalized when you run /quickstart -->

- **Company:** [your company name]
- **Industry:** [your industry / category]
- **ICP:** [one-sentence description of your ideal customer]
- **Stage:** [seed / Series A / B / C / growth / mature]
- **Marketing function:** [solo founder / 1-2 person team / 3-5 person team / 5+ team]

## Your voice

<!-- QUICKSTART: This section gets personalized when you run /quickstart -->

- **Tone:** [operator-first | educational | technical | playful | serious | other]
- **Format:** sentence case for all titles and bullets · em dashes with spaces (" — ") used sparingly · short punchy sentences · evidence over claims
- **Avoid:** corporate buzzwords ("innovative", "leverage", "synergy", "cutting-edge", "best-in-class") · invented testimonials or metrics · vague claims without sources

## Canonical references (read these FIRST)

Skill outputs are the source of truth. Update this table as you produce work.

| Task | Read | Produced by |
|------|------|-------------|
| Company context (firmographics, qualification) | [`docs/MMYY-company-context.md`](./docs/) | `/company-context` |
| ICP, segments, personas | [`icp/MMYY-icp-research.md`](./icp/) | `/icp-research` |
| Positioning | [`positioning/MMYY-positioning.md`](./positioning/) | `/positioning` |
| Messaging library | [`messaging/MMYY-messaging.md`](./messaging/) | `/messaging` |
| Competitor analyses | [`competitors/MMYY-{competitor}.md`](./competitors/) | `/competitor-research` |
| Brand kit + tone of voice | [`brand/MMYY-brand-kit.md`](./brand/) + [`brand/MMYY-tov-guidelines.md`](./brand/) | `/brand-guidelines` + `/tov-guidelines` |
| Content strategy + ops + audit | [`content/strategy/`](./content/strategy/) + [`content/audit/`](./content/audit/) | `/content-strategy` + `/content-ops` + `/content-audit` |
| Thought leadership pieces | [`content/execution/MMYY-{topic}.md`](./content/execution/) | `/thought-leadership` |
| Product launches | [`docs/MMYY-launch-{product}.md`](./docs/) | `/product-launch` |
| Case studies | [`docs/MMYY-case-{customer}.md`](./docs/) | `/case-study` |
| Webinar briefs | [`docs/MMYY-webinar-{topic}.md`](./docs/) | `/webinar` |
| KPIs (read FIRST before producing any output) | [`goals/MMYY-scope.md`](./goals/) | manual |

## Operational protocols

- **Read `latest.md` before starting work** — it's a ≤500-word delta cache of what changed recently
- **Append to `history.md` after each non-trivial action** — append-only ops record
- **Read `goals/MMYY-scope.md` before producing any output** — KPI alignment matters
- **Naming convention:** `MMYY-topic.md` (e.g., `0526-icp-research.md` for May 2026 ICP research)
- **System files exempt from naming:** `CLAUDE.md`, `latest.md`, `history.md`, `README.md`

## Suggested first chain (30 minutes)

1. `/company-context` — captures your firmographics + qualification posture
2. `/competitor-research` — pick your top 2-3 competitors, run one-by-one
3. `/icp-research` — define your ideal customer
4. `/tov-guidelines` — extract or define your tone of voice
5. `/brand-guidelines` — capture your visual identity
6. `/positioning` — synthesize the above into a positioning statement
7. `/messaging` — turn positioning into the 10-component messaging library
8. `/content-strategy` — map messaging to a content roadmap
9. `/thought-leadership` — produce your first long-form piece

Each command saves output to a folder under `marketing/` per the table above.

## What's NOT here

This is the lean Quick Start. The following capabilities stay gated for the paid/advanced tier:

- All sales-enablement (battlecards, sales decks, demo scripts, one-pagers)
- All outbound, paid marketing, SEO/AEO, website builds, design
- All social/LinkedIn (18 LinkedIn skills, YouTube, newsletter)
- All lifecycle (email nurture, lifecycle campaigns)
- All meta/orchestration (`/orchestrator`, `/recall`, `/today`, `/wiki`, `/weekly-audit`)
- All hooks (no automated catalog regen, output routing, naming enforcement)

See [genesysgrowth.com](https://genesysgrowth.com) for the advanced tier.
