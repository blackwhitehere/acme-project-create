---
applyTo: "src/**/*.py"
---

## Python source requirements

- Target Python 3.12
- Maintain type hints on public APIs
- Follow ruff rules; keep imports sorted via ruff
- Keep functions small; separate I/O from pure logic to enable testing
- Prefer dependency injection or passing clients explicitly over globals

### Build and validate locally

- Install: `uv sync`
- Lint: `just lint` or `uv run ruff check src/ tests/`
- Format: `just format` or `uv run ruff format src/ tests/`
- Tests: `just test` or `uv run pytest tests/ -v`

### Guidelines

- Add minimal docstrings for new public functions/classes
- Mock external services (AWS, databases, APIs) in tests
- Include a happy-path and at least one edge case
