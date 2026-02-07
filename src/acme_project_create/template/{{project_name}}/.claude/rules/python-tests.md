---
paths:
  - "tests/**/*.py"
---

# Python Test Conventions

- Use pytest as the test framework
- Follow Arrange-Act-Assert pattern
- Use descriptive test names that explain what is being tested
- Mock cloud/service calls by default — avoid network or AWS usage in unit tests
- Include happy-path and edge case tests for new behavior
- Place test files in `tests/` directory mirroring `src/` structure
