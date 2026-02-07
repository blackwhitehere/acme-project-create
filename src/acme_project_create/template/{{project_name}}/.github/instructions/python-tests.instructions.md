---
applyTo: "tests/**/*.py"
---

## Pytest conventions

- Use clear arrange/act/assert sections
- Prefer fixtures over ad-hoc setup
- Name tests descriptively; one assertion focus per test where possible
- Mock external services, network calls, filesystem when appropriate

### Running tests

- `just test` or `uv run pytest tests/ -v`

### Coverage and reliability

- Add one happy-path and one edge case for new behavior
- Prefer deterministic inputs and seeded randomness
