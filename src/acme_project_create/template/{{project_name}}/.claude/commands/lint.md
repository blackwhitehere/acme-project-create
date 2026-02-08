# Lint Code

Check code quality using ruff linter.

## Instructions

Run the linter using just:

```bash
# Check for lint errors
just lint

# Auto-fix fixable errors
just fix
```

Or run ruff directly with arguments:

```bash
uv run ruff check src/ tests/ $ARGUMENTS
```

## Arguments

$ARGUMENTS are passed to ruff:
- `--fix` to automatically fix issues
- `--select E,F` to check specific rules
- `--ignore E501` to ignore specific rules

## After Running

1. Report the number of issues found
2. Categorize issues by type (formatting, imports, unused variables, etc.)
3. If `--fix` was used, report what was automatically fixed
4. For remaining issues, offer to fix them manually
