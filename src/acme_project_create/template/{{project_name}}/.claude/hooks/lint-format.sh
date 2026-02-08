#!/usr/bin/env bash
# PostToolUse hook: auto-format and lint Python files after Edit/Write
# Runs ruff format + ruff check on the changed file.
# Exits 0 so the tool call is never blocked; lint issues are reported as context.

set -uo pipefail

INPUT=$(cat)
FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file_path // empty')

# Only process Python files
if [[ -z "$FILE_PATH" || "$FILE_PATH" != *.py ]]; then
    exit 0
fi

# Skip if file doesn't exist (e.g. deleted)
if [[ ! -f "$FILE_PATH" ]]; then
    exit 0
fi

# Skip if uv/ruff not available (e.g. venv not yet created)
if ! command -v uv &>/dev/null; then
    exit 0
fi

# Format the file in place (fast, single-file)
uv run ruff format "$FILE_PATH" 2>/dev/null

# Check for lint issues and report
LINT_OUTPUT=$(uv run ruff check "$FILE_PATH" 2>/dev/null)
if [[ -n "$LINT_OUTPUT" ]]; then
    echo "$LINT_OUTPUT"
fi

exit 0
