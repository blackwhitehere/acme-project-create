# Project Overview

<Short description of the project and its purpose.>

**Primary instructions are in `CLAUDE.md`** at the project root. This file supplements with Copilot-specific context.

## Folder Structure

```
{{project_name}}/
├── src/{{package_name}}/    # Main package source code
├── tests/                   # Test files (pytest)
├── docs/                    # Documentation (MkDocs)
├── .github/                 # GitHub workflows, agents, and scoped instructions
│   ├── agents/              # Copilot agent definitions
│   └── instructions/        # Copilot file-scoped instructions
├── .claude/                 # Claude Code configuration
│   ├── rules/               # Claude Code file-scoped rules
│   └── commands/            # Claude Code slash commands
├── justfile                 # Task runner (all dev commands)
├── pyproject.toml           # Project configuration
└── CLAUDE.md                # Primary instruction file (read by both Copilot and Claude Code)
```

## Libraries and Frameworks

<List of major libraries and frameworks used in the project, with a brief description of their purpose.>

## AI Assistant Context

When working on this project, reference these documents for context:

| Document | Purpose |
|----------|---------|
| `CLAUDE.md` | Primary project instructions and quick reference |
| `CONTRIBUTING.md` | Contribution guidelines and workflow |
| `CHANGELOG.md` | Release notes format |
| `docs/docs/developer/architecture.md` | System design and structure |
| [acme-arch/docs/acme-architecture.md](https://github.com/blackwhitehere/acme-arch/blob/main/docs/acme-architecture.md) | Overall ACME system architecture |

## Development Commands

All development tasks use `just` as the command runner:

| Command | Purpose |
|---------|---------|
| `just test` | Run pytest test suite |
| `just lint` | Check code with ruff |
| `just format` | Format code with ruff |
| `just fix` | Auto-fix lint issues |
| `just install` | Install dependencies (`uv sync`) |
| `just clean` | Remove generated files |
| `just demo` | Launch Streamlit demo |

## Environment Management

This project uses `uv` for Python environment and dependency management:

```bash
# Install/sync dependencies
uv sync

# Add a new dependency
uv add <package>

# Add a dev dependency
uv add --dev <package>

# Run a command in the environment
uv run <command>

# Run the application
uv run python -m {{package_name}}
```

## Testing Guidelines

- All new code requires tests in `tests/`
- Run tests with `just test`
- Aim for meaningful test coverage of business logic
- Use descriptive test names that explain what is being tested
- Follow the Arrange-Act-Assert pattern

## Coding Standards

When possible make code easy to change in the future. Isolate distinct concerns into distinct components because that makes code easy to change. Create components with single responsibilities because that makes them easy to change. Name things well because that makes code easy to read and make changes to. Allow for design decisions to be reversed because that makes code easy to change when new requirements arrive.

Adhere to DRY (don't repeat yourself) principle if possible. Centralize definition of the same knowledge and use it in all places it's used. When possible attempt to refactor code to obey this principle.

Design systems to have orthogonal functionality.

Check for python typing information in method signatures is correct and if documentation needs to be updated to reflect existing functionality. Keep documentation concise but informative and avoid excess comments that just describe what code is doing.

Avoid superlative adjectives in code comments and documentation. Use clear, concise language that describes the functionality without exaggeration. e.g. instead of saying "Provides comprehensive support for...", simply state "Supports...".

## Code Organization

- Keep modules focused on a single responsibility
- Place reusable utilities in a dedicated `utils` module
- Use type hints for all function signatures
- Prefer composition over inheritance
- Keep functions small and focused

## SDLC Best Practices

### Before Committing

1. Run `just lint` and fix any errors
2. Run `just format` to format code
3. Run `just test` to ensure tests pass
4. Update `CHANGELOG.md` under `[Unreleased]` section

### Pull Request Requirements

- Tests added or updated for changes
- Linting passes (`just lint`)
- CHANGELOG.md updated with user-focused description
- Documentation updated if API changes

## Release Notes Requirements

**Every pull request must include a release notes entry in CHANGELOG.md under `[Unreleased]` section**

When making changes:
1. **Always add an entry to the `[Unreleased]` section** in CHANGELOG.md
2. **Use the appropriate category**:
   - `### Added` - for new features
   - `### Changed` - for changes in existing functionality
   - `### Fixed` - for bug fixes
   - `### Security` - for security-related changes
   - `### Deprecated` - for soon-to-be removed features
   - `### Removed` - for removed features

3. **Format entries correctly**:
   ```markdown
   - **Feature/Fix Name**: Brief description of the change (#PR_NUMBER)
   ```

4. **Include PR reference**: Always add the PR number in parentheses for linking
5. **Make it user-focused**: Describe the change from the user's perspective, not implementation details

**Example entry:**
```markdown
### Added
- **Deploy Progress Notifications**: Added real-time progress updates during flow deployment operations (#42)
```

See CONTRIBUTING.md for complete release notes guidelines.
