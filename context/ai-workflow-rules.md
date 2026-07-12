# AI Workflow Rules

## Purpose

This file defines how AI agents should work in the theBuilderApp repository.

The repository evolves like a software factory. Agents must preserve stable milestones, follow existing architecture, and keep documentation synchronized with meaningful changes.

## Required Reading Order

Before architectural or implementation work, read:

1. `AGENTS.md`
2. `context/current-state.md`
3. `context/project-overview.md`
4. `context/architecture.md`
5. `context/code-standards.md`
6. `context/ui-context.md`
7. `context/progress-tracker.md`
8. `context/decision-log.md`
9. `context/ai-workflow-rules.md`

Use `current-state.md` as the current project direction and `decision-log.md` as historical reasoning.

## Operating Rules

- Preserve Flutter + GetX.
- Preserve `BaseController` and `BaseView`.
- Preserve centralized resources.
- Preserve feature-based structure.
- Do not hardcode routes, colors, dimensions, strings, or asset paths.
- Prefer small, focused changes.
- Do not rewrite working systems unless explicitly instructed.
- Keep implementation beginner-readable.

## Week Continuity

Week 1 is the stable baseline. It should remain accessible through its frozen tag.

Week 2 is the current evolution. It should be developed on feature branches and merged only when stable.

Future weeks should extend the same app rather than creating unrelated projects.

## Git Workflow

- `main` represents the latest stable operational version.
- tags preserve frozen weekly milestones.
- feature branches hold active development.

Common branch pattern:

```bash
git checkout main
git pull
git checkout -b feature/week2-member-app
```

Do not commit unrelated runtime changes during documentation-only tasks.

## Documentation Maintenance

Update documentation when changing:

- product direction
- architecture
- workflow
- feature boundaries
- implementation status
- UI system rules

For documentation-only synchronization, do not modify runtime code.

## Week 2 Implementation Guardrail

Google Sign-In, authenticated member state, and Google Classroom integration are planned Week 2 directions. They are not part of this documentation synchronization unless the user explicitly requests implementation work.

When implementation begins, add new feature modules instead of overloading the existing profile module.
