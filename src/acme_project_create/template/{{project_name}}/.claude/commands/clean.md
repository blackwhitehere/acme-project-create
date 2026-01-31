# Clean Untracked Files

Remove untracked and uncommitted files from the repository.

## Instructions

### Always preview first

```bash
# Show what would be removed (dry run)
./admin/clean.sh --dry-run
```

### Then confirm with user before removing

```bash
# Actually remove untracked files
./admin/clean.sh
```

## Important

1. **Always run with `--dry-run` first** to show what will be deleted
2. **Ask for user confirmation** before running without `--dry-run`
3. This operation is destructive and cannot be undone

## After Running

1. Report files that were removed (or would be removed in dry-run)
2. Warn about any important-looking files that were/would be deleted
