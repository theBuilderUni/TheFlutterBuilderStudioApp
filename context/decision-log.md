# Decision Log

This file records important architectural, workflow, and product-direction decisions made throughout the evolution of the project.

The purpose is to preserve continuity between:
- project phases,
- architecture evolution,
- AI-assisted implementation sessions,
- and future contributors.

---

# 2026-05-25 — Adopted Context-Driven AI Workflow

## Decision

The project adopts a context-driven AI collaboration workflow using standardized context files.

## Reason

The repository is expected to evolve continuously across multiple training weeks and product phases.

AI agents require:
- continuity,
- architectural awareness,
- implementation history,
- and current project direction.

The context system provides structured operational memory for AI-assisted development.

## Result

The repository now maintains:
- `project-overview.md`
- `architecture.md`
- `code-standards.md`
- `ui-context.md`
- `progress-tracker.md`
- `ai-workflow-rules.md`
- `current-state.md`
- `decision-log.md`
- `AGENTS.md`

---

# 2026-05-25 — Week 1 Architecture Preserved

## Decision

The Week 1 Flutter + GetX architecture will remain the long-term foundation of the project.

## Reason

Week 1 established:
- reusable architecture,
- centralized resources,
- feature-based modules,
- reactive state management,
- and beginner-readable structure.

The goal of the software factory is incremental evolution, not repeated rewrites.

## Result

The following systems are treated as foundational:
- GetX routing
- BaseController / BaseView
- centralized AppColors/AppDimens/AppTheme
- feature module structure
- reusable widgets

Future weeks should extend this foundation rather than replace it.

---

# 2026-05-25 — Week 2 Positioned as Operational Member App

## Decision

Week 2 is defined as a theBuilderApp instead of a generic Flutter tutorial app.

## Reason

The project philosophy emphasizes:
- operational software,
- real users,
- participation systems,
- and ecosystem thinking.

The app should become the first real operational member activation surface for Builder Uni participants.

## Result

Week 2 introduces:
- Google Sign-In
- real member identity
- Google Classroom integration
- member participation context
- future participation economy preparation

The app evolves from:
- static local profile app
into:
- authenticated operational member system.

---

# 2026-05-25 — Google Identity Chosen as Member Identity Layer

## Decision

Google Sign-In becomes the primary identity system for Week 2.

## Reason

Google identity:
- simplifies onboarding,
- provides real authenticated user identity,
- integrates naturally with Google Classroom,
- and reduces custom account-management complexity during early phases.

## Result

The project introduces:
- Google authentication flow
- authenticated member session state
- Google profile rendering
- Classroom-connected learning context

---

# 2026-05-25 — Classroom Integration Prioritized Before Wallet Systems

## Decision

Google Classroom integration is prioritized before implementing Builder Points or wallet systems.

## Reason

The immediate goal of Week 2 is:
- operational learning participation,
- not financial or loyalty mechanics.

The app should first become a real educational participation surface before introducing economy layers.

## Result

Week 2 focuses on:
- course visibility,
- assignment visibility,
- learning participation context,
- and member activation.

Wallets and participation economy systems remain future-phase concerns.

---

# 2026-05-25 — Git Workflow Standardized

## Decision

The repository adopts a real software-factory Git workflow.

## Reason

The project should teach:
- incremental software evolution,
- release continuity,
- feature isolation,
- and operational development workflows.

## Result

Git conventions:
- `main` = latest stable operational version
- feature branches = active development work
- tags = weekly milestone preservation

Example tag:
- `v0.1-week1-first-challenge`

---

# 2026-05-25 — AGENTS.md Adopted as AI Entry Point

## Decision

`AGENTS.md` becomes the primary AI-agent entry point for repository operations.

## Reason

AI coding agents require:
- predictable operating instructions,
- reading order,
- continuity rules,
- and architecture-preservation guidance.

## Result

AI agents should:
1. read `AGENTS.md`,
2. follow context reading order,
3. preserve architecture continuity,
4. and update context files when structural changes occur.

---

# 2026-05-25 — Context Separation Strategy Adopted

## Decision

The repository separates:
- current operational truth,
- historical reasoning,
- implementation progress,
- and architecture documentation.

## Reason

Mixing all project information into a single evolving document creates:
- drift,
- confusion,
- duplication,
- and poor AI continuity.

## Result

Responsibilities are separated:

| File | Responsibility |
|---|---|
| `current-state.md` | current operational direction |
| `decision-log.md` | historical reasoning |
| `progress-tracker.md` | implementation status |
| `architecture.md` | system structure |
| `project-overview.md` | product meaning |
| `AGENTS.md` | AI operating instructions |

---

# Core Long-Term Principle

The project should evolve like a real operational software system.

The repository is not intended to become:
- disconnected weekly demos,
- isolated tutorial exercises,
- or repeatedly rewritten apps.

Instead, the project should accumulate:
- architecture,
- operational meaning,
- reusable systems,
- and participation-driven functionality
over time.
