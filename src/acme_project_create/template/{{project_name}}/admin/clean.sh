#!/usr/bin/env bash
# Remove untracked files and directories
# Usage: ./admin/clean.sh [--dry-run]
set -e

if [[ "$1" == "--dry-run" ]]; then
    echo "Dry run - showing files that would be removed:"
    git clean -fdn
else
    git clean -fd
fi
