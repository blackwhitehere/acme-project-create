# Format Code

Auto-format code using ruff and isort.

## Instructions

Run the formatter using the admin script:

```bash
./admin/format.sh
```

This will:
1. Format code with ruff format
2. Sort imports with isort

## After Running

1. Report files that were modified
2. Summarize the types of changes made (if any)
3. Suggest running `./admin/lint.sh` to verify no issues remain
