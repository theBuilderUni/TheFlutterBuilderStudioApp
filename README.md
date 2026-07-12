# theBuilderApp

This repository is an evolving Flutter software-factory training project. It is not a set of disconnected weekly demos. Each week preserves the stable foundation from previous weeks, then evolves the same application toward a more operational theBuilderApp.

## Software-Factory Philosophy

The goal is to learn how real software grows:

- keep a stable working baseline
- evolve features through focused branches
- preserve architecture instead of rewriting from scratch
- document decisions as the system changes
- use AI assistance with clear context and workflow rules

Week 1 established the stable Builder Profile App baseline. Week 2 adds real Android Google Sign-In and one fixed Builder Uni Classroom integration. Week 3 adds an on-device Builder Points wallet that imports a customer access ZIP, encrypts the customer secret with a passcode, signs transactions on the device, and submits them directly to Horizon/NowNodes.

## Week-by-Week Evolution

### Week 1: Stable Baseline

Week 1 is the frozen starter milestone. It includes:

- Flutter + GetX
- `BaseController` / `BaseView`
- centralized resources for colors, dimensions, strings, images, and theme
- feature-based folder structure
- a local profile screen with reactive GetX state

Students should use Week 1 to understand and customize a working app safely.

### Week 2: Member App Identity And Classroom

Week 2 evolves the same codebase toward an operational theBuilderApp. It includes Android Google Sign-In through the official `google_sign_in` package and fixed Builder Uni Classroom course data through Google Classroom API calls.

Week 2 does not show all Classroom courses, implement a course browser, add backend authentication, or persist Google auth state.

### Week 3: Member App With Wallet

Week 3 adds the Builder Points wallet track. It includes local config, customer access ZIP import, on-device encrypted customer secret storage, direct Horizon/NowNodes balance reads, receive QR, QR-based send, local transaction signing, direct transaction submission, and local transaction history.

Week 3 does not fetch wallet credentials from a backend, use backend signing, transfer arbitrary assets, transfer XLM, or implement a full Horizon history explorer.

Do not rewrite the Week 1 app. Extend it.

## Git Workflow

- `main` = stable course starter / Week 1 baseline for new students
- `feature/week2-member-app` = Week 2 theBuilderApp evolution
- `feature/week3-member-app-with-wallet` = Week 3 Member App with Wallet evolution
- weekly feature branches = persistent course learning tracks
- tags = incremental learning checkpoints

Weekly feature branches are not throwaway branches; they hold each week of app evolution. Incremental updates can be found in Git tags. `main` should not automatically absorb weekly work unless the course owner explicitly changes the branch strategy.

## Common Commands

Clone:

```bash
git clone [new repository URL]
```

Return to starter baseline:

```bash
git checkout main
git pull
```

Start Week 2:

```bash
git checkout feature/week2-member-app
```

Start Week 3:

```bash
git checkout feature/week3-member-app-with-wallet
```

## Architecture Baseline

The current architecture must remain intact as the app evolves:

- `lib/main.dart` starts the app
- `lib/main_app.dart` configures `GetMaterialApp`
- `lib/app/constant/resources/` holds centralized resources
- `lib/app/constant/routing/` holds route names and GetX page setup
- `lib/app/core/` holds base controller/view and initial binding
- `lib/app/features/` holds feature modules
- `lib/app/widget/` holds reusable UI widgets

Run the app with:

```bash
flutter run
```
