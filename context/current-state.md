# Current State

## Current Branch Truth

This file describes the current state of `main`.

`main` is the stable course starter / Week 1 baseline for new students. It is not the latest Week 2 runtime app.

Week 2 evolution lives on:

```bash
feature/week2-member-app
```

The Week 2 branch is where Android Google Sign-In was added as the first real Week 2 integration. Do not assume those Week 2 runtime files exist on `main`.

## Current Phase On Main

Week 1 - Builder Profile App starter baseline.

## Current Goal On Main

Provide a clean, stable starter app that teaches:

- Flutter setup
- GetX basics
- reusable architecture
- centralized resources
- safe AI-assisted customization
- working with an existing codebase

New students should start here unless their course instructions tell them to check out a weekly feature branch.

## Runtime Truth On Main

The `main` branch currently contains:

- Flutter + GetX
- `BaseController` / `BaseView`
- centralized app resources
- centralized routing
- a `profile` feature module
- a local Builder Profile screen
- static local profile data

The `main` branch does not currently contain:

- real Google Sign-In
- `google_sign_in`
- auth feature module
- member feature module
- classroom feature module
- Google Classroom API integration
- Builder Points wallet
- backend integration

## Week 2 Runtime Truth

Week 2 is tracked separately on `feature/week2-member-app`.

On the Week 2 branch:

- Android Google Sign-In works through the official `google_sign_in` package.
- Android OAuth depends on package name + SHA-1 registration in Google Cloud.
- A Web OAuth client ID is used as Android `serverClientId`.
- Classroom remains mock-first.
- Member status remains mock-first.
- Builder Points remains placeholder.
- Firebase Auth, backend calls, Classroom scopes, wallet, and points implementation are not added.

## Previous Stable Baseline

### Week 1 - Builder Profile App

Week 1 established:

- Flutter + GetX architecture
- centralized design system
- `BaseController` / `BaseView` patterns
- reusable widgets
- feature-based folder organization
- reactive profile state management

The Week 1 app:

- displays static local profile information
- has no authentication
- has no API integration
- functions as a safe architecture-learning baseline

## Current Product Direction

The application is evolving into the theBuilderApp through weekly feature branches.

A future Builder Uni member should eventually be able to:

- sign in with Google
- view real Google profile information
- view Builder Uni member or builder status
- view learning participation context from Google Classroom
- prepare for future participation economy systems

These product goals should be implemented incrementally on weekly feature branches, not automatically merged into `main`.

## Preserve From Week 1

The following systems and patterns must remain intact unless explicitly changed.

### Architecture

- Flutter + GetX
- feature-based module structure
- centralized routing
- reactive state management

### Base Abstractions

- `BaseController`
- `BaseView`
- `InitialBinding`

### Centralized Resources

- `AppColors`
- `AppDimens`
- `AppString`
- `AppImages`
- `AppTheme`

### UI Direction

- clean professional mobile layout
- reusable section-based UI
- centralized styling
- responsive `ListView`-based screen structure

## Branch Strategy

- `main` = stable course starter / Week 1 baseline for new students
- `feature/week2-member-app` = Week 2 theBuilderApp evolution
- future weekly branches = persistent course learning tracks
- tags = frozen learning milestones

`main` should not automatically absorb weekly work unless the course owner explicitly changes the branch strategy.
