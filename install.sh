#!/bin/bash

DEST=".claude/commands"
REPO="https://raw.githubusercontent.com/faizkautsarr/test-agent/main"

mkdir -p "$DEST"

echo "Installing test-agent skills..."

curl -fsSL "$REPO/.claude/commands/count.md" -o "$DEST/count.md"

echo "Done. Available commands:"
echo "  /count \"<string>\" — returns character count"
