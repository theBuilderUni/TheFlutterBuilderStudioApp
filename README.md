# The Builder App

The Builder App is the Flutter mobile companion for [The Builder Uni](https://github.com/theBuilderUni). It gives Builders a focused view of their identity, Builder Rewards, followed Apps, and the work being shipped by App Squads.

This repository currently implements the mobile experience and navigation with mock data. Authentication, Supabase persistence, live Rewards transactions, and Workspace synchronization are planned for the next integration phase.

## Current experience

The app includes four Builder-facing views:

- **Home** — Builder profile, level, Rewards balance, and followed Apps.
- **Rewards** — balance, receive QR/Reward ID, and a mock send form.
- **Apps** — searchable discovery of Builder Uni Apps and their Squads.
- **App detail** — App overview with WIP, Committed Work, and Work History.

Presentation-level interactions are implemented, including bottom-tab navigation, Apps search, opening and closing App details, following Apps, and switching between Rewards receive/send views. All displayed records and balances are currently mocked.

## Product language

The app follows the Builder Workspace domain model:

- A **Builder** is the signed-in member identity.
- A **Squad/App** is an independent product team or application.
- A **Work Item** is meaningful work that should ship, be demonstrated, or become professional evidence.
- **Rewards** and **Builder Rewards** are used in the UI; wallet and Web3 terminology are intentionally avoided.

Work Item states shown in the mobile experience are:

- `Committed`
- `WIP`
- `Done`, presented as **Work History**

Each Work Item can display its title, outcome, state, Builder Cycle, week number, and week label. The six Builder Cycle week labels are Download, Listen, Emerge, Experiment, Implement, and Launch.

## Design system

The UI uses The Builder Uni logo and brand colors in a restrained professional layout:

- white cards and navigation surfaces
- a neutral page background
- black typography for strong readability
- orange for primary actions and focused emphasis
- violet for navigation state, supporting badges, and small brand accents
- rounded controls, neutral borders, and subtle shadows

Theme tokens are centralized in `lib/app/constant/resources/`. Android launcher icons and the web favicon use the official Builder Uni logo.

## Architecture

The project uses Flutter, Material 3, and GetX while preserving the existing reusable architecture:

```text
lib/
├── main.dart                         # Application entry point
├── main_app.dart                     # GetMaterialApp configuration
└── app/
    ├── constant/
    │   ├── resources/                # Colors, theme, strings, images, dimensions
    │   └── routing/                  # Central route definitions
    ├── core/                         # BaseController, BaseView, initial binding
    ├── features/profile/             # Current mobile shell, screens, mock read model
    └── widget/                       # Shared widgets
```

The current mock models mirror the Workspace concepts `builder`, `squad_app`, `squad_builder`, `work_item`, and `squad_work_item`. Future backend work should keep UI components behind controllers/services rather than calling Supabase directly from widgets.

## Planned integration

The mobile app is intended to share the Builder Workspace Supabase backend:

```text
Electron Builder Workspace      Flutter Builder App
          |                            |
       supabase-js                supabase_flutter
          └──────── Supabase Auth, Postgres, RLS ────────┘
```

Planned work includes:

- Supabase Auth and Builder profile loading
- live followed-App relationships from `squad_builder`
- App and Work Item reads from the shared data model
- Rewards balance, receive, send, and basic history
- loading, empty, error, and authenticated states
- Row-Level Security for Builder-scoped access

Service-role keys, account secrets, recovery phrases, and privileged credentials must never be shipped in the mobile app.

## Getting started

Requirements:

- Flutter SDK compatible with Dart `^3.9.2`
- Android Studio or another configured Flutter target

```powershell
git clone https://github.com/theBuilderUni/TheFlutterBuilderApp.git
cd TheFlutterBuilderApp
flutter pub get
flutter run
```

List available devices when needed:

```powershell
flutter devices
```

## Verification

Run the official Flutter checks independently from the project root:

```powershell
flutter analyze
flutter test test\widget_test.dart --reporter expanded
```

Build a debug Android APK:

```powershell
flutter build apk --debug
```

The APK is generated at `build/app/outputs/flutter-apk/app-debug.apk`.

## Repository status

- UI/navigation phase: implemented
- Data source: mock data
- Backend/auth logic: not implemented yet
- Rewards transaction logic: not implemented yet
- Primary branch: `main`

## Related project

The desktop Builder Workspace owns coordination and execution workflows such as creating Work Items, managing current work, and persisting records. This mobile app stays intentionally minimal and read-focused so Builders can follow Apps, see work updates, and access Rewards without reproducing the full desktop Workspace.
