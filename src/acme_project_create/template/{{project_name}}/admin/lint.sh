#!/usr/bin/env bash
# Run ruff linter on src and tests directories
# Usage: ./admin/lint.sh [--fix]
set -e

uv run ruff check src tests "$@"
