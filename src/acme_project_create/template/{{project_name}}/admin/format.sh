#!/usr/bin/env bash
# Format code with ruff and isort
set -e

uv run ruff format src tests
uv run isort src tests
