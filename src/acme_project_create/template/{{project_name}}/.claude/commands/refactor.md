# Refactor Code

Analyze and simplify code structure.

## Instructions

1. Read the file(s) or code section specified in $ARGUMENTS
2. Analyze for:
   - Code duplication
   - Complex conditionals that can be simplified
   - Long functions that should be split
   - Poor naming that reduces readability
   - Missing or incorrect type hints
   - Opportunities to use Python idioms

3. Propose specific refactoring changes

## Before Making Changes

1. **Ask user to confirm** proposed changes before implementing
2. Read `docs/docs/developer/architecture.md` for structural context
3. Ensure refactoring aligns with project coding standards

## Output Format

1. **Current Issues**: What could be improved
2. **Proposed Changes**: Specific refactoring suggestions
3. **Benefits**: Why each change improves the code
4. **Risks**: Any potential issues with the changes

## After Approval

1. Make the approved changes
2. Run `./admin/lint.sh` to verify no new issues
3. Run `./admin/test.sh` to ensure tests still pass
