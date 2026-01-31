# Architecture

This document describes the system architecture and design decisions.

## Project Structure

```
{{project_name}}/
├── src/{{package_name}}/        # Main package
│   ├── __init__.py              # Package initialization
│   └── ...                      # Application modules
├── tests/                       # Test suite
│   ├── conftest.py              # Pytest fixtures
│   └── test_*.py                # Test modules
├── docs/                        # Documentation
│   ├── docs/                    # MkDocs content
│   └── mkdocs.yml               # MkDocs configuration
├── admin/                       # Admin scripts
├── .github/                     # GitHub configuration
│   ├── workflows/               # CI/CD workflows
│   └── copilot-instructions.md  # Copilot context
├── .claude/                     # Claude Code configuration
│   ├── commands/                # Slash commands
│   └── settings.local.json      # Permission settings
├── pyproject.toml               # Project metadata and dependencies
├── CLAUDE.md                    # Claude Code context
└── README.md                    # Project documentation
```

## Key Components

<Describe the main components of your application and their responsibilities.>

### Component 1

- **Purpose**: <what it does>
- **Location**: `src/{{package_name}}/...`
- **Dependencies**: <what it depends on>

### Component 2

- **Purpose**: <what it does>
- **Location**: `src/{{package_name}}/...`
- **Dependencies**: <what it depends on>

## Design Decisions

Document significant architectural decisions and their rationale.

| Decision | Rationale | Date |
|----------|-----------|------|
| <decision> | <why this choice was made> | <when> |

## Data Flow

<Describe how data flows through your application.>

```
[Input] → [Processing] → [Output]
```

## Extension Points

Areas where the system is designed to be extended:

- <Extension point 1>: <how to extend>
- <Extension point 2>: <how to extend>

## Dependencies

### Runtime Dependencies

Listed in `pyproject.toml` under `[project.dependencies]`.

### Development Dependencies

Listed in `pyproject.toml` under `[project.optional-dependencies.dev]`.

## Configuration

<Describe how the application is configured, environment variables, config files, etc.>
