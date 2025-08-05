# Project Overview

`acme-project-create` is a Python-based tool designed to set up new projects using a predefined template. It simplifies the process of creating a new project by automating the setup of files and directories, substituting variables, and generating files using Jinja2 templates.

## Folder Structure

- **docs/**: Documentation files for the project.
  - **mkdocs.yml**: Configuration for MkDocs documentation generator.
  - **docs/**: Contains markdown files for various documentation topics.
- **src/**: Source code for the `acme_project_create` package.
- **tests/**: Test cases for the project.

## Libraries and Frameworks

- **uv**: Used for creating isolated Python environments.
- **setuptools**: For packaging and distribution of the project.
- **pytest**: Testing framework for writing and running tests.
- **mkdocs**: Documentation generator for creating static sites.
- **Jinja2**: Template engine for generating files with variable substitution.

## Coding Standards

When possible make code easy to change in the future. Isolate distinct concerns into distinct components because that makes code easy to change. Create components with single reponsibilities because that makes them easy to change. Name things well becasue that makes code easy to read and make changes to. Allow for design decisions to be reversed because that makes code easy to change when new requirements arrive.

Adhere to DRY (don't repeat yourself) principle if possible. Centralize definition of the same knowledge and use it in all places it's used. When possible attempt to refactor code to obey this principle.

Design systems to have orthogonal functionality.

Check for python typing information in method signatures is correct and if documentation needs to be updated to reflect existing funcionality. Keep documentation concise but informative and avoid excess comments that just describe what code is doing.

Avoid superlative adjectives in code comments and documentation. Use clear, concise language that describes the functionality without exaggeration. e.g. instead of saying "Provides comprehensive support for...", simply state "Supports...".

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