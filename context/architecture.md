# Architecture Context

## Architecture Principle

The app evolves week by week, but the Week 1 architecture remains the foundation. Future work should extend the existing Flutter + GetX structure instead of replacing it.

## Stack

| Layer | Technology | Role |
| --- | --- | --- |
| Framework | Flutter (Dart SDK ^3.9) | Cross-platform UI framework |
| State Management | GetX ^4.7.2 | Reactive state, dependency injection, routing |
| SVG Rendering | flutter_svg ^2.0.17 | Renders SVG assets |
| Icons | Material Icons | Built-in Flutter UI icons |

## Current System Boundaries

- `lib/app/constant/` - app-wide constants for resources and routing
- `lib/app/constant/resources/` - colors, dimensions, strings, images, and theme
- `lib/app/constant/routing/` - route constants and GetX page registration
- `lib/app/core/` - shared base abstractions and app-level binding
- `lib/app/features/profile/` - Week 1 profile feature module
- `lib/app/widget/` - shared reusable widgets
- `assets/images/` - static image and SVG assets
- `test/` - widget and unit tests

## Preserved Foundation

The following patterns are stable and should be preserved:

1. Screens extend `BaseView<T>` and implement `buildView()`.
2. Controllers extend `BaseController`.
3. Routes are defined through centralized route constants.
4. Colors, dimensions, strings, images, and theme live in centralized resource files.
5. Features are organized under `lib/app/features/{feature}/`.
6. Shared UI belongs in `lib/app/widget/` when it is reusable across features.

## Routing

Routing is handled by GetX through `GetMaterialApp`.

- Route names live in `lib/app/constant/routing/app_route.dart`.
- Pages and bindings live in `lib/app/constant/routing/app_pages.dart`.
- The current app starts at the profile route.
- `InitialBinding` is registered at app startup for shared dependencies.
- Feature bindings register feature controllers with GetX.

## State Model

Week 1 uses `ProfileController` with a reactive `Rx<ProfileInfo>`.

The same style should guide future features:

- immutable data objects where practical
- explicit state changes
- `Obx()` for reactive UI updates
- shared loading and message state through `BaseController`

## Week 2 Evolution Boundary

Week 2 may add new feature modules such as:

```txt
lib/app/features/auth/
lib/app/features/member/
lib/app/features/classroom/
```

Those modules should integrate with the existing architecture. They should not collapse into the profile feature or bypass the base controller/view patterns.

## Auth and Access Status

Current runtime code has no authentication and no backend/API integration.

Google Sign-In is a planned Week 2 direction, not yet implemented. Any future implementation must happen on a feature branch and keep Week 1 stable.
