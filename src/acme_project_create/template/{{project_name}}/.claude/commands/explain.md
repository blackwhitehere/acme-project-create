# Explain Code

Analyze and explain how a piece of code works.

## Instructions

1. Read the file(s) or function specified in $ARGUMENTS
2. Identify the code's purpose and responsibilities
3. Trace the execution flow
4. Document dependencies and side effects
5. Suggest potential improvements

## Output Format

### 1. Purpose
What this code does and why it exists.

### 2. How It Works
Step-by-step explanation of the execution flow:
- Entry points
- Key logic branches
- Data transformations
- Exit points

### 3. Key Dependencies
- Internal modules used
- External packages required
- Configuration or environment variables

### 4. Side Effects
- Files read/written
- Network calls made
- State modifications

### 5. Potential Improvements
Suggestions for:
- Code clarity
- Performance
- Error handling
- Test coverage

## Before Making Changes

- Ask user to confirm proposed changes
- Read `docs/docs/developer/architecture.md` for context
- Ensure changes align with coding standards in CLAUDE.md
