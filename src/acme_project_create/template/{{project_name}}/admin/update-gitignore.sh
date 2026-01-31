#!/usr/bin/env bash
# Add patterns to .gitignore
# Usage: ./admin/update-gitignore.sh <pattern> [pattern2 ...]
set -e

if [[ $# -eq 0 ]]; then
    echo "Usage: $0 <pattern> [pattern2 ...]"
    echo "Example: $0 '*.log' 'temp/'"
    exit 1
fi

for pattern in "$@"; do
    if grep -qxF "$pattern" .gitignore 2>/dev/null; then
        echo "Pattern already exists: $pattern"
    else
        echo "$pattern" >> .gitignore
        echo "Added: $pattern"
    fi
done
