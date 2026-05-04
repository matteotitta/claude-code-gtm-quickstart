# Sanitization checklist — Marketing Quick Start v2

After running `sync-from-master.sh`, the synced `.claude/` contents need a human-eye review before public release. The `sanitize-check.sh` script flags candidate files; this checklist explains what to do with each finding.

## When to run

- **After every sync** from master. Patterns shift as the master workspace evolves.
- **Before every push** to public main. Last gate before content goes live.

## Five categories of findings

### 1. Client + workspace identifiers (`CLIENT_NAMES`)

**Pattern:** any mention of `genesys`, `enhesa`, `advisoryai`, `seapoint`, `crescendo`, `pivot`, `zeffy`, `alphastream`, `talli`, `nimbus`.

**Action:** open each flagged file. For each match:

- **In an example or "for instance" context** → replace with a generic placeholder (e.g., "your B2B SaaS company" or "{Customer}")
- **In a path like `projects/consulting/active/enhesa/...`** → replace with `marketing/...` or strip the example entirely
- **In a hardcoded URL or email** → strip
- **In test data or quoted output** → either rewrite to a synthetic example or strip

### 2. Internal-only path references (`INTERNAL_PATHS`)

**Pattern:** references to `.claude/rules/financial-data.md`, `.claude/rules/gdrive-protocol.md`, `.claude/rules/notion-protocol.md`, `.claude/rules/apollo-credits.md`, `.claude/rules/apify-credits.md`, `.claude/rules/paperclip-*.md`, `.claude/mcp/gdrive`, `.claude/mcp/notion`, `projects/consulting/...`.

**Action:** these rules + MCP scripts are NOT shipped in the public release. For each match:

- **In a "see also" footnote** → strip the cross-reference
- **In an instruction step ("first run X, then run /skill")** → either remove the dependency or replace with a generic equivalent the user can run themselves
- **In a path example** → strip

### 3. References to gated skills (`GATED_SKILLS`)

**Pattern:** any backtick or prose reference to a skill that's NOT in the public 14. The full gated list is in `sanitize-check.sh`.

**Action:** the slug-reference contract from PLUGIN-SCHEMA.md says missing slugs fail-soft, BUT the SKILL.md prose still references them, which confuses public users. Per match:

- **In "Downstream:" or "Upstream:" frontmatter** → strip the gated skill from the comma-separated list
- **In "feeds into" or "depends on" prose** → either strip the sentence or rewrite around the shipped skill set
- **In a worked example** → rewrite using only shipped skills

### 4. Email + URL leaks

**Pattern:** `@genesysgrowth.com` emails, `genesysgrowth.com` URLs, `matteo@` addresses.

**Action:** strip entirely. If the file legitimately needs an author signature, use a generic one (e.g., "Marketing Team Lead" or omit).

### 5. Author field (`author: genesys-growth`)

**Pattern:** SKILL.md frontmatter line `author: genesys-growth`.

**Decision:** either
- **Replace with `author: marketing-team`** (generic, signals "this is your team's skill") — recommended
- **Keep as-is** with a note in the README that the author field is the original source attribution and users should change it after fork

### Special cases — manual review required

- **`.claude/skills/research/icp-research/SKILL.md`** — references icp-behavioural, content-strategy (shipped), product-messaging (shipped — verify it's actually `messaging` per manifest), landing-page-copy (gated), outreach-emails (gated). Strip gated cross-refs.
- **`.claude/skills/primitives/product-marketing/strategy/positioning/SKILL.md`** — likely references pricing-strategy (gated), expert-pov (gated), win-loss (gated). Strip.
- **`.claude/skills/primitives/content/strategy/content-strategy/SKILL.md`** — likely references many gated content skills (linkedin-*, youtube-*, newsletter, gtme-pulse). Strip.
- **`.claude/agents/{role-agent}.md`** — role-agent files have `## Owned skills` sections that auto-regenerate from frontmatter in master. They will list ALL owned skills including gated ones. Manually trim these sections to only list shipped skills, or strip the section entirely.
- **Commands** referencing `/recall`, `/today`, `/wiki`, `/orchestrator`, `/new-client`, etc. → either strip those references or rewrite the command's flow to not depend on them.

## Workflow

1. `bash scripts/sync-from-master.sh`
2. `bash scripts/sanitize-check.sh > /tmp/sanitize-findings.txt`
3. Open each flagged file in the editor; apply the actions above
4. Re-run `bash scripts/sanitize-check.sh` — should report zero `CLIENT_NAMES` and zero `EMAIL+URL leaks`. `GATED_SKILLS` may still show some matches if the references are in worked examples (manual judgment per case).
5. Commit with message `sanitize: <scope>` (e.g., `sanitize: strip Genesys references from research skills`)
6. Repeat until clean

## When in doubt — strip, don't rewrite

The Quick Start is a starter pack, not the master workspace. Removing a reference that doesn't make sense in the public context is almost always safer than trying to rewrite around it.
