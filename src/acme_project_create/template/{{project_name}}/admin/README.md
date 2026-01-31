# Admin Scripts

This directory contains administrative scripts for common development tasks.

## Available Scripts

| Script | Description | Usage |
|--------|-------------|-------|
| `test.sh` | Run pytest test suite | `./admin/test.sh [pytest-args]` |
| `lint.sh` | Check code quality with ruff | `./admin/lint.sh [--fix]` |
| `format.sh` | Auto-format code with ruff and isort | `./admin/format.sh` |
| `clean.sh` | Remove untracked files and directories | `./admin/clean.sh [--dry-run]` |
| `update-gitignore.sh` | Add patterns to .gitignore | `./admin/update-gitignore.sh <pattern>` |

## Examples

```bash
# Run all tests
./admin/test.sh

# Run tests with verbose output
./admin/test.sh -v

# Run specific test file
./admin/test.sh tests/test_main.py

# Check for lint errors
./admin/lint.sh

# Auto-fix lint errors
./admin/lint.sh --fix

# Format all code
./admin/format.sh

# Preview files that would be cleaned
./admin/clean.sh --dry-run

# Remove untracked files
./admin/clean.sh

# Add patterns to .gitignore
./admin/update-gitignore.sh '*.log' 'temp/'
```

## Adding New Scripts

When adding new admin scripts:

1. Place the script in this directory
2. Make it executable: `chmod +x admin/your-script.sh`
3. Add documentation to this README
4. Use `set -e` to exit on errors
5. Include a usage comment at the top of the script
