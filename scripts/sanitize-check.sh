#!/usr/bin/env bash
# sanitize-check.sh — flag patterns in synced .claude/ that need manual review
# before public release.
#
# Does NOT modify files. Only reports.
# After review, edit affected files by hand or extend this script with sed substitutions.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
QUICKSTART_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
DEST="$QUICKSTART_ROOT/.claude"

if [[ ! -d "$DEST" ]]; then
  echo "ERROR: $DEST not found. Run sync-from-master.sh first." >&2
  exit 1
fi

echo "Scanning $DEST for patterns that may need sanitization..."
echo ""

# ─── Client + workspace identifiers ─────────────────
CLIENT_NAMES="genesys|enhesa|advisoryai|advisory.ai|seapoint|crescendo|pivot|zeffy|alphastream|talli|nimbus"
echo "## Client/workspace identifiers (CLIENT_NAMES):"
grep -ril -E "$CLIENT_NAMES" "$DEST" 2>/dev/null || echo "  (none found)"
echo ""

# ─── Internal paths ─────────────────────────────────
INTERNAL_PATHS="\.claude/rules/financial-data|\.claude/rules/gdrive-protocol|\.claude/rules/notion-protocol|\.claude/rules/apollo-credits|\.claude/rules/apify-credits|\.claude/rules/paperclip|\.claude/mcp/gdrive|\.claude/mcp/notion|projects/consulting"
echo "## Internal-only path references (INTERNAL_PATHS):"
grep -ril -E "$INTERNAL_PATHS" "$DEST" 2>/dev/null || echo "  (none found)"
echo ""

# ─── References to gated skills ─────────────────────
# Skills NOT in the public release that may be cross-referenced in shipped SKILL.md files
GATED_SKILLS="icp-behavioural|expert-pov|win-loss|funnel-strategy|customer-interviews|pricing-strategy|pricing-research|storytelling|landing-page|outreach-emails|email-nurture|lifecycle|abm-campaign|lead-scoring|battlecards|sales-deck|demo-script|one-pager|sales-tracks|aeo-content|aeo-strategy|programmatic-seo|local-seo|gbp-suite|website-copy|website-build|website-wireframe|website-score|website-clone|metadata-lint|vibe-coding|dashboard|figma-prototype|linkedin-content|linkedin-hooks|linkedin-comment|linkedin-profile|linkedin-carousels|linkedin-infographics|linkedin-personal-posts|linkedin-expert-posts|linkedin-sales-posts|linkedin-weekly-content|linkedin-content-guide|youtube-scripts|youtube-strategy|gtme-pulse|gtme-podcast|genesys-newsletter|hype-man|video-frames|orchestrator|recall|wiki|today|weekly-plan|session-wrap|workspace-cleanup|skill-catalog|voice-reviewer|design-reviewer|skill-reviewer|brand-context|create-gdrive|paperclip|deepline|clay|apollo|apify"
echo "## References to gated skills (GATED_SKILLS) — strip cross-references in SKILL.md:"
grep -rln -E "$GATED_SKILLS" "$DEST" 2>/dev/null | head -20 || echo "  (none found)"
echo ""

# ─── Email + URL leaks ──────────────────────────────
echo "## Email addresses + Genesys URLs:"
grep -ril -E "@genesysgrowth\.com|genesysgrowth\.com|matteo@" "$DEST" 2>/dev/null || echo "  (none found)"
echo ""

# ─── Author field ───────────────────────────────────
echo "## Skills with 'author: genesys-growth' (consider redacting or replacing):"
grep -rln "^author: genesys-growth" "$DEST" 2>/dev/null || echo "  (none found)"
echo ""

echo "──────────────────────────────"
echo "Scan complete. See SANITIZATION_CHECKLIST.md for the manual review process."
