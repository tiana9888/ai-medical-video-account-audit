#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="ai-medical-video-account-audit"
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_ROOT="${1:-${AGENT_SKILLS_DIR:-$HOME/.agents/skills}}"
TARGET_DIR="$TARGET_ROOT/$SKILL_NAME"

mkdir -p "$TARGET_ROOT"

if [ -e "$TARGET_DIR" ]; then
  echo "Target already exists: $TARGET_DIR"
  echo "Remove it first or pass a different target root:"
  echo "  ./install.sh /path/to/skills"
  exit 1
fi

mkdir -p "$TARGET_DIR"
cp "$SOURCE_DIR/SKILL.md" "$TARGET_DIR/"
cp "$SOURCE_DIR/README.md" "$TARGET_DIR/"
cp "$SOURCE_DIR/install.sh" "$TARGET_DIR/"
cp -R "$SOURCE_DIR/agents" "$TARGET_DIR/"
cp -R "$SOURCE_DIR/references" "$TARGET_DIR/"

echo "Installed $SKILL_NAME to $TARGET_DIR"
echo "Invoke with: Use \$ai-medical-video-account-audit to audit this Video Account script before publishing."
