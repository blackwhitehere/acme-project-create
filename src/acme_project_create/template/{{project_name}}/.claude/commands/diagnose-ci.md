# Diagnose GitHub Actions Failures

Analyze and diagnose CI/CD workflow failures using gh CLI.

## Instructions

### 1. List Recent Failures

```bash
gh run list --status failure --limit 5
```

### 2. Get Failure Details

If user provides run ID or URL:

```bash
# View failed logs
gh run view <run-id> --log-failed

# View specific job
gh run view <run-id> --job <job-id> --log
```

### 3. Common CI Failures

**Test Failures:**
- Parse pytest output for failing test names
- Read the failing test file locally
- Identify the assertion that failed
- Run locally: `./admin/test.sh` to reproduce

**Lint/Format Failures:**
- Run `./admin/lint.sh` locally to reproduce
- Run `./admin/format.sh` to auto-fix

**Dependency Issues:**
- Check pyproject.toml for version conflicts
- Run `uv lock` to regenerate lockfile

**Docker Build Failures:**
- Read Dockerfile and identify failing step
- Check base image and dependencies

### 4. Output Format

1. **Error Summary**: What failed
2. **Root Cause**: Why it failed
3. **Fix**: How to resolve it
4. **Prevention**: How to avoid in future

## After Diagnosis

- Offer to fix the issue if it can be resolved locally
- Offer to use `/raise-issue` if bug tracking is needed
