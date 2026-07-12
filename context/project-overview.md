# Project Overview

## Product Direction

This repository is the theBuilderApp: an evolving Flutter training application that grows week by week like real operational software.

Week 1 remains the stable Builder Profile App baseline. Week 2 is the current evolution toward a theBuilderApp. The repository should preserve earlier working milestones while teaching students how to extend architecture safely.

## Software-Factory Purpose

The project teaches:

- Flutter application structure
- GetX state management, routing, and dependency injection
- reusable architecture patterns
- centralized UI resources
- AI-assisted development workflows
- Git-based product evolution with branches and tags

The repository should not become isolated weekly tutorial apps. Each week should build on the same operational codebase.

## Week 1: Stable Baseline

Week 1 established a Builder Profile App. It displays local profile information with a clean mobile UI and reactive GetX state.

Week 1 includes:

- Flutter + GetX app scaffold
- `BaseController` and `BaseView`
- centralized `AppColors`, `AppDimens`, `AppString`, `AppImages`, and `AppTheme`
- GetX routing through route constants and page registration
- feature-based `profile` module
- reusable shared widgets
- widget smoke test coverage

Week 1 is preserved as the starting point for new students and as the stable architectural baseline.

## Week 2: Current Evolution

Week 2 reframes the app as a theBuilderApp. The app is expected to evolve toward:

- real member identity
- member profile display
- member or builder status
- Google Classroom-connected learning context
- future participation economy foundations

Important: Google Sign-In and Classroom integration are product direction for Week 2, not implemented yet in this documentation-only synchronization.

## Core User Flow Today

1. App launches through `GetMaterialApp`.
2. The Profile feature opens as the initial screen.
3. User sees profile header, About, Contact, and Skills sections.
4. Profile data is reactive through GetX.

## Long-Term Success Criteria

The project succeeds when students can:

- start from a known weekly milestone
- understand the current architecture quickly
- create a feature branch for active development
- extend the app without rewriting the baseline
- keep documentation synchronized with implementation
