# Create Python Project

Generate a new Python project using the acme-project-create template.

## Instructions

When the user invokes this skill, help them create a new Python project:

### Step 1: Gather Required Information

Ask the user for these required parameters (if not already provided):

| Parameter | Description | Format |
|-----------|-------------|--------|
| `target_dir` | Directory where project will be created | Path (use `.` for current dir) |
| `project_name` | Name of the project | kebab-case (e.g., `my-awesome-app`) |
| `description` | Short description of the project | Free text |
| `package_name` | Python package name | snake_case (e.g., `my_awesome_app`) |
| `command_name` | CLI command to run the app | lowercase (e.g., `myapp`) |
| `owner_email` | Project owner's email | Email address |

### Step 2: Optional Parameters

These have sensible defaults - only ask if the user wants customization:

| Parameter | Default |
|-----------|---------|
| `version` | `0.0.1` |
| `license` | `MIT` |
| `homepage_url` | `https://example.com` |
| `repository_url` | `https://example.com` |
| `python_version` | Current Python version |

### Step 3: Run the Generator

First check if `apc` is available, otherwise use `uvx`:

```bash
# Check if apc is available
which apc || echo "apc not found, will use uvx"
```

**If `apc` is available:**
```bash
apc -target-dir <target_dir> \
    -project-name <project_name> \
    -desc "<description>" \
    -package-name <package_name> \
    -command-name <command_name> \
    -owner-email <owner_email>
```

**If `apc` is NOT available, use `uvx`:**
```bash
uvx acme-project-create \
    -target-dir <target_dir> \
    -project-name <project_name> \
    -desc "<description>" \
    -package-name <package_name> \
    -command-name <command_name> \
    -owner-email <owner_email>
```

Add optional parameters as needed:
- `--version <version>`
- `--license <license>`
- `--homepage-url <url>`
- `--repository-url <url>`
- `--python-version <version>`

### Step 4: Post-Generation

After successful generation, tell the user:

1. Project created at `<target_dir>/<project_name>`
2. Next steps:
   ```bash
   cd <project_name>
   ./create_env.sh      # Create virtual environment
   source .venv/bin/activate
   pip install -e ".[dev]"
   ```

## Example

User: "Create a project called weather-api for fetching weather data"

```bash
uvx acme-project-create \
    -target-dir . \
    -project-name weather-api \
    -desc "API for fetching weather data" \
    -package-name weather_api \
    -command-name weather \
    -owner-email user@example.com \
    --license MIT
```

## What Gets Generated

The template creates a complete Python project with:
- Source code structure (`src/<package_name>/`)
- Test suite (`tests/`)
- Documentation (MkDocs)
- CI/CD workflows (GitHub Actions)
- Docker support
- Pre-commit hooks
- Environment management scripts
