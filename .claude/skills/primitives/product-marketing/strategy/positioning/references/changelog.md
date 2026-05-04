# Changelog

Skill version history.

| Version | Date | Changes |
|---------|------|---------|
| 2.4 | 2026-03-03 | Added Activity as 4th primary anchor (Framework 1) with Activity vs Use Case distinction. Added Framework 13 (Anchor Selection Decision Tree), Framework 14 (Secondary Angle Archetypes), Framework 15 (Proof Type Mapping per Anchor) — all sourced from Alexander Esner's 3-Step Positioning Framework. Added new Step 2.3 (decision tree diagnostic), enhanced Step 3.2 (anchor + angle selection), enhanced Step 3.7 (proof type cross-reference). Updated flowchart, output template (decision tree block, angle selection, statement templates, proof column, channel guidance), self-evaluation, and reference table. Created `references/esner-positioning-framework.md`. |
| 2.3 | 2026-02-22 | Added clarity ladder validation (Step 3.6), formalized guarantee test table (Step 3.7), added strategic implications mapping (Step 3.8) with optional voice calibration against competitors. Replaced "Market Size" with "Relevance" in anchor scoring (Step 2.3). Updated output template and self-evaluation protocol to match. |
| 2.2 | 2026-02-16 | Removed Phase 4: Positioning Outputs (positioning statement, hero copy, one-liners, deck outline, emerging market strategy). These are downstream deliverables handled by product-messaging, landing-page-copy, and sales-enablement skills. Skill now ends at Phase 3 (Strategy Selection) + Self-Evaluation |
| 2.1 | 2026-01-21 | Enhanced Framework 1 (Positioning Anchors) with Primary vs Secondary anchor taxonomy from Fletch PDF; added Framework 2 (Unique Value = Problem + Differentiation) with DinMo, Kondo, Vanta examples; added clarity spectrum, anchor-to-market-segment mapping, and strategic layering rules |
| 2.0 | 2026-01-21 | Agentic enhancements: YAML frontmatter with dependencies/outputs/triggers, visual flowchart, self-evaluation protocol, auto-update with reference example capture |
| 1.1 | 2026-01-21 | Added positioning anchors framework, three founder types, emerging market positioning |
| 1.0 | 2026-01-21 | Initial skill creation from Fletch PMM database (94 posts synthesized) |

---

## MCP data integration

**Level:** 1 — Strategy (inherits upstream, no unique pulls)

**Inherits from:** competitor-research, icp-behavioural

### Pulls fresh

NONE — all data comes from upstream research. Positioning synthesizes competitor landscape and ICP insights already gathered.

### Fallback (no MCP)

- Use competitor-research and icp-behavioural outputs directly
- If upstream skills haven't run, trigger them first before running positioning
