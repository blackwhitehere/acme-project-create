---
description: Compare this project against the acme-project-create template and update to latest conventions
---

# Template Sync

Compare this project's structure, configuration files, and conventions against the canonical template in `acme-project-create` and bring it up to date.

## Steps

1. **Fetch the latest template** from `https://github.com/blackwhitehere/acme-project-create`. Inspect the template files under `src/acme_project_create/template/{{project_name}}/`.

2. **Compare these template files** against the current project:
   - `CLAUDE.md` — primary instruction file
   - `CONTRIBUTING.md` — contribution guidelines
   - `.github/copilot-instructions.md` — Copilot-specific instructions
   - `.github/agents/*.agent.md` — Copilot agent definitions
   - `.github/instructions/*.instructions.md` — Copilot scoped instructions
   - `.claude/rules/*.md` — Claude Code scoped rules
   - `justfile` — task runner commands
   - `pyproject.toml` — project configuration (ruff config, dependencies section structure)
   - `docs/mkdocs.yml` — documentation config

3. **Identify differences**:
   - **Missing files**: Template files not in this project
   - **Outdated content**: Files with older conventions (e.g., `admin/` scripts instead of `just`)
   - **Structural differences**: Different folder layout or missing directories
   - **Project-specific content**: Content that correctly differs (project name, description, custom docs)

4. **Apply updates** for missing and outdated files:
   - Replace template variables (`{{project_name}}`, `{{package_name}}`, etc.) with this project's values
   - Preserve project-specific content
   - Add missing agent configs, scoped instructions, and rules
   - Update workflow references from `admin/` scripts to `just` commands if applicable

5. **Report changes** listing each file created or updated.

## Rules

- Do NOT overwrite project-specific documentation or code
- Do NOT change source code or tests
- Focus only on configuration, conventions, and tooling files
- Prefer template conventions over existing project approach
- Replace Jinja2 variables with actual values from `pyproject.toml`
