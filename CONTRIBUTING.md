# Contributing to acme-project-create

Thank you for considering contributing to `acme-project-create`! We welcome contributions of all kinds, including bug fixes, new features, documentation improvements, and more.

## Getting Started

1. **Fork the Repository**: Start by forking the repository to your GitHub account.
2. **Clone the Repository**: Clone your forked repository to your local machine.
   ```bash
   git clone https://github.com/<your-username>/acme-project-create.git
   ```
3. **Set Up the Environment**:
   - Create a virtual environment:
     ```bash
     chmod +x .create_env.sh
     ./create_env.sh
     ```
   - Activate the virtual env:
     ```bash
     source .venv/bin/activate
     ```
4. **Run Tests**: Ensure everything is working by running the test suite.
   ```bash
   pytest
   ```
5. **Install pre-commit hooks**: They run linting checks on your commits to make sure consistent formatting is applied.
   ```bash
   pre-commit install
   ```
   
## Making Changes

1. **Create a Branch**: Create a new branch for your changes.
   ```bash
   git checkout -b feature/your-feature-name
   ```
2. **Make Your Changes**: Implement your changes, following the coding standards outlined in `CONTRIBUTING.md`.
3. **Run Tests**: Run the test suite to ensure your changes don't break existing functionality.
   ```bash
   pytest
   ```
4. **Update Documentation**: If your changes affect the public API or user-facing functionality, update the relevant documentation in the `docs/` folder.

5. **Update CHANGELOG.md**: Provide entry under `[Unreleased]` section following this pattern:

        **Feature/Fix Name**: Brief description of the change (#PR_NUMBER)

## Submitting Changes

1. **Commit Your Changes**: Write clear and concise commit messages.
   ```bash
   git add .
   git commit -m "Add feature: your-feature-name"
   ```
2. **Push to Your Fork**: Push your changes to your forked repository.
   ```bash
   git push origin feature/your-feature-name
   ```
3. **Open a Pull Request**: Open a pull request to the `main` branch of the original repository. Include a clear description of your changes and reference any related issues.

## Release Notes

Every pull request must include a release notes entry in `CHANGELOG.md` under the `[Unreleased]` section. Follow the guidelines in `.github/copilot-instructions.md` for formatting and categorizing your entry.

## Need Help?

If you have any questions or need assistance, feel free to open an issue or reach out to the maintainers.