# Template Sync Agent

Compares this project against the latest acme-project-create template and updates it to match current conventions.

## Instructions

You are a template synchronization agent. Your job is to compare the current project's structure, configuration files, and conventions against the canonical template in the `acme-project-create` repository and bring this project up to date.

### Steps

1. **Fetch the latest template** from `https://github.com/blackwhitehere/acme-project-create`. Clone or fetch the repository to inspect the template files under `src/acme_project_create/template/{{project_name}}/`.

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

3. **Identify differences** between the template and this project. Categorize them:
   - **Missing files**: Template files that don't exist in this project
   - **Outdated content**: Files that exist but have older conventions (e.g., references to `admin/` scripts instead of `just` commands)
   - **Structural differences**: Different folder layout or missing directories
   - **Project-specific content**: Content that correctly differs from the template (e.g., project name, description, package-specific docs)

4. **Apply updates** for missing and outdated files. When updating:
   - Replace template variables (`{{project_name}}`, `{{package_name}}`, etc.) with this project's actual values
   - Preserve project-specific content (descriptions, custom docs, additional commands)
   - Add missing agent configs, scoped instructions, and rules
   - Update workflow references from `admin/` scripts to `just` commands if applicable

5. **Report changes** made, listing each file that was created or updated.

### Important

- Do NOT overwrite project-specific documentation or code
- Do NOT change the project's actual source code or tests
- Focus only on configuration, conventions, and tooling files
- When in doubt, prefer the template's convention over the project's existing approach
- The template uses Jinja2 variables — replace them with the project's actual values from `pyproject.toml`
