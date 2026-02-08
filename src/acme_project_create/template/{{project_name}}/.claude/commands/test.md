# Run Tests

Run the pytest test suite.

## Instructions

Run tests using just:

```bash
# Run all tests
just test

# Or run pytest directly with arguments
uv run pytest tests/ -v $ARGUMENTS
```

## Arguments

$ARGUMENTS can be passed directly to pytest:
- `-v` for verbose output
- `-k "pattern"` to filter tests by name
- `--tb=short` for shorter tracebacks
- `-x` to stop on first failure
- `tests/specific_file.py` to run specific file

## After Running

1. Report test results summary
2. If failures occur, identify the failing tests and offer to investigate
3. Suggest fixes for failing tests if the cause is apparent
