# [Unreleased]

### Changed
- **Justfile demo split**: `demo` recipe split into `demo-clean` (remove fixture data), `demo-fixtures` (populate samples), and `demo-ui` (launch Streamlit) for granular control

### Added
- **Copilot Agent Definitions**: Template now includes `.github/agents/` with contribution-expert, plan, and template-sync agents
- **Copilot Scoped Instructions**: Template includes `.github/instructions/` with Python source, tests, and docs instructions
- **Claude Code Scoped Rules**: Template includes `.claude/rules/` with Python source, tests, and docs rules
- **Claude Code Commands**: Template includes `.claude/commands/template-sync.md` for syncing project to latest template
- **Architecture Reference**: CLAUDE.md and copilot-instructions.md now link to acme-arch system architecture

### Changed
- **Justfile-Only Workflow**: Removed `admin/` scripts from template; all dev commands use `just` exclusively
- **Updated CLAUDE.md Template**: Simplified structure, added agent configuration section, removed admin script references
- **Updated CONTRIBUTING.md Template**: Modernized setup instructions to use `uv sync` and `just` commands
- **Updated Copilot Instructions**: Removed admin scripts section, added CLAUDE.md as primary reference, added development commands table