#!/usr/bin/env bash
# Run pytest with optional arguments
set -e

uv run pytest tests "$@"
