# Raise GitHub Issue

Create a GitHub issue for bugs, problems, or improvements.

## Instructions

Use `gh issue create` to raise issues on the repository.

**Always show issue preview and ask for user confirmation before creating.**

## Issue Templates

### For Bugs

```bash
gh issue create --title "Bug: <title>" --label "bug" --body "$(cat <<'EOF'
## Description
<what's wrong>

## Steps to Reproduce
1. ...
2. ...

## Expected Behavior
<what should happen>

## Actual Behavior
<what happens instead>

## Context
- File(s): <affected files>
- Discovered while: <what you were doing>
EOF
)"
```

### For Enhancements

```bash
gh issue create --title "Enhancement: <title>" --label "enhancement" --body "$(cat <<'EOF'
## Description
<what improvement is needed>

## Motivation
<why this would be valuable>

## Proposed Solution
<how it could be implemented>
EOF
)"
```

### For Tech Debt

```bash
gh issue create --title "Tech Debt: <title>" --label "tech-debt" --body "$(cat <<'EOF'
## Description
<what needs cleanup>

## Current State
<how it is now>

## Desired State
<how it should be>

## Impact
<what this affects>
EOF
)"
```

## When to Use

- Encountered a bug during development
- Found code that needs refactoring
- Identified missing tests
- User explicitly requests issue creation

## After Creating

Report the issue URL so the user can view it.
