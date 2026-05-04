#!/usr/bin/env bash
# sync-from-master.sh — pull approved skills/agents/commands from the master workspace
# into this Quick Start's .claude/ directory.
#
# Idempotent: safe to re-run. Existing destination paths are deleted before copy
# so renames in master don't leave stale files behind.
#
# Reads scripts/manifest.txt for the list of items to sync.
# After sync, prints a count + suggests running scripts/sanitize-check.sh
# (see SANITIZATION_CHECKLIST.md for what to manually review).

set -euo pipefail

# ─── Paths ──────────────────────────────────────────
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
QUICKSTART_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
MASTER_ROOT="${MASTER_ROOT:-$(cd "$QUICKSTART_ROOT/../../../.." && pwd)}"
MANIFEST="$SCRIPT_DIR/manifest.txt"
DEST_CLAUDE="$QUICKSTART_ROOT/.claude"

# ─── Sanity checks ──────────────────────────────────
if [[ ! -f "$MANIFEST" ]]; then
  echo "ERROR: manifest not found at $MANIFEST" >&2
  exit 1
fi
if [[ ! -d "$MASTER_ROOT/.claude" ]]; then
  echo "ERROR: master workspace not detected at $MASTER_ROOT/.claude" >&2
  echo "Override with MASTER_ROOT=/path/to/master ./sync-from-master.sh" >&2
  exit 1
fi

echo "→ Master:    $MASTER_ROOT"
echo "→ Quickstart: $QUICKSTART_ROOT"
echo "→ Manifest:  $MANIFEST"
echo ""

# ─── Sync loop ──────────────────────────────────────
SKILL_COUNT=0
AGENT_COUNT=0
COMMAND_COUNT=0
MISSING=()

while IFS= read -r line; do
  # Skip blanks and comments
  [[ -z "$line" || "$line" =~ ^# ]] && continue

  TYPE=$(echo "$line" | awk '{print $1}')
  SRC_REL=$(echo "$line" | awk '{print $2}')
  SRC="$MASTER_ROOT/$SRC_REL"

  if [[ ! -e "$SRC" ]]; then
    MISSING+=("$TYPE: $SRC_REL")
    continue
  fi

  # Destination preserves the relative path under .claude/
  DEST="$DEST_CLAUDE/${SRC_REL#.claude/}"
  DEST_DIR="$(dirname "$DEST")"
  mkdir -p "$DEST_DIR"

  # Remove existing destination so renames upstream don't leave stale files
  rm -rf "$DEST"

  if [[ -d "$SRC" ]]; then
    cp -R "$SRC" "$DEST"
  else
    cp "$SRC" "$DEST"
  fi

  case "$TYPE" in
    skill)   SKILL_COUNT=$((SKILL_COUNT + 1)); echo "✓ skill   $SRC_REL" ;;
    agent)   AGENT_COUNT=$((AGENT_COUNT + 1)); echo "✓ agent   $SRC_REL" ;;
    command) COMMAND_COUNT=$((COMMAND_COUNT + 1)); echo "✓ command $SRC_REL" ;;
    *)       echo "⚠ unknown type '$TYPE' on line: $line" ;;
  esac
done < "$MANIFEST"

# ─── Summary ────────────────────────────────────────
echo ""
echo "──────────────────────────────"
echo "Sync complete."
echo "  Skills:   $SKILL_COUNT"
echo "  Agents:   $AGENT_COUNT"
echo "  Commands: $COMMAND_COUNT"

if [[ ${#MISSING[@]} -gt 0 ]]; then
  echo ""
  echo "⚠ MISSING (${#MISSING[@]} items not found in master):"
  for m in "${MISSING[@]}"; do
    echo "  - $m"
  done
  echo ""
  echo "Manifest may reference renamed/removed items. Update manifest.txt and re-run."
fi

echo ""
echo "Next step: run sanitize-check.sh to flag content needing manual review."
echo "(See scripts/SANITIZATION_CHECKLIST.md for the full review process.)"
