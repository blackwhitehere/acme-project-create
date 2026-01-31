# Run Tests

Run the pytest test suite.

## Instructions

Run tests using the admin script or pytest directly:

```bash
# Run all tests
./admin/test.sh

# Run with verbose output
./admin/test.sh -v

# Run specific test file
./admin/test.sh tests/test_specific.py

# Run tests matching a pattern
./admin/test.sh -k "test_name_pattern"
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
