# Project Overview

<Short description of the project and its purpose.>

**Primary instructions are in `CLAUDE.md`** at the project root. This file supplements with Copilot-specific context.



## Coding Standards

When possible make code easy to change in the future.
Isolate distinct concerns into distinct components because that makes code easy to change.
Create components with single responsibilities because that makes them easy to change.
Name things well because that makes code easy to read and make changes to.
Allow for design decisions to be reversed because that makes code easy to change when new requirements arrive.
Adhere to DRY (don't repeat yourself) principle if possible.
Centralize definition of the same knowledge and use it in all places it's used.
When possible attempt to refactor code to obey this principle.
Design systems to have orthogonal functionality.

Check for python typing information in method signatures is correct and if documentation needs to be updated to reflect existing functionality. Keep documentation concise but informative and avoid excess comments that just describe what code is doing.

Avoid superlative adjectives in code comments and documentation. Use clear, concise language that describes the functionality without exaggeration. e.g. instead of saying "Provides comprehensive support for...", simply state "Supports...".