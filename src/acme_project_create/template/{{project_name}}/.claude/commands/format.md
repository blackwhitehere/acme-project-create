# Format Code

Auto-format code using ruff.

## Instructions

Run the formatter using just:

```bash
just format
```

Or run ruff directly:

```bash
uv run ruff format src/ tests/
```

## After Running

1. Report files that were modified
2. Summarize the types of changes made (if any)
3. Suggest running `just lint` to verify no issues remain
