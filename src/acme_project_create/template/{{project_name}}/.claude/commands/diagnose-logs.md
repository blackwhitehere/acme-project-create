# Diagnose from Log Files

Analyze log files or error output to diagnose issues.

## Instructions

### 1. Common Log Locations

**Application Logs:**
- `./logs/` directory (if configured)
- stdout/stderr output (copy from terminal)
- `~/.local/state/<app-name>/` (XDG standard)

**Test Logs:**
- pytest output: `uv run pytest tests -v 2>&1 | tee test.log`
- Coverage reports: `htmlcov/` directory

**Build/Deploy Logs:**
- Docker: `docker logs <container-id>`
- Docker Compose: `docker compose logs <service>`
- Local builds: capture with `command 2>&1 | tee build.log`

**System Logs (if needed):**
- macOS: `~/Library/Logs/` or `log show --predicate`
- Linux: `/var/log/` or `journalctl`

### 2. Provide Log to Agent

User should either:
- Paste error message/stack trace directly
- Provide path to log file for agent to read
- Copy relevant log section

### 3. Analysis Process

1. Identify error type (exception, timeout, config, permission)
2. Find stack trace and locate source file/line
3. Read relevant source code
4. Identify root cause
5. Suggest fix

### 4. Output Format

1. **Error Summary**: What the log shows
2. **Root Cause**: Why it happened
3. **Fix**: How to resolve it
4. **Log Location Tip**: Where to find these logs in future

## After Diagnosis

- Offer to fix the issue if possible
- Offer to use `/raise-issue` if bug tracking is needed
