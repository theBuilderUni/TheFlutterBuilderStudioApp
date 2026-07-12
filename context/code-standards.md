# Code Standards

## General

- Keep files small and single-purpose — one widget or class per file
- Fix root causes, do not layer workarounds
- Do not mix unrelated concerns in one widget or controller
- Use `const` constructors wherever possible to optimize rebuilds
- Prefer immutable data models with `copyWith` over mutable fields

## Dart / Flutter

- Dart SDK constraint: `^3.9.2`
- Use `flutter_lints` rules — do not suppress lint warnings without justification
- Use named parameters for all widget constructors with more than one argument
- Use `required` for all non-nullable named parameters
- Avoid `dynamic` — use explicit types or generics
- Use `withValues(alpha: x)` instead of deprecated `withOpacity(x)` for color alpha

## GetX

- All controllers must extend `BaseController` (which extends `GetxController`)
- All screens must extend `BaseView<T>` and implement `buildView()` — never override `build()` directly
- Use `Get.lazyPut()` with `fenix: true` in bindings for feature controllers
- Register shared/global services in `InitialBinding`
- Register feature-scoped controllers in their own `Binding` class
- Use `Obx()` for reactive UI rebuilds — prefer it over `GetBuilder` for simplicity

## Theming & Styling

- All colors must come from `AppColors` — no hardcoded hex values in widgets
- All dimensions must come from `AppDimens` — no hardcoded numeric sizes in layout
- All strings must come from `AppString` — no hardcoded user-facing strings in widgets
- All image paths must come from `AppImages` — no hardcoded asset paths in widgets
- Theme is defined in `AppTheme.lightTheme` — do not override theme inline in widgets
- Use `Theme.of(context).textTheme` for typography — do not define custom `TextStyle` inline

## File Organization

- `lib/app/constant/resources/` — Color, dimension, string, image, and theme constants
- `lib/app/constant/routing/` — Route name constants and page registration
- `lib/app/core/base/` — `BaseController` and `BaseView` abstractions
- `lib/app/core/binding/` — `InitialBinding` for app-level dependency registration
- `lib/app/features/{feature}/` — Feature modules, each containing `binding/`, `controller/`, and `screen/`
- `lib/app/widget/` — Shared reusable widgets used across multiple features
- `assets/images/` — Static image and SVG assets
- `test/` — Widget and unit tests

## Testing

- Widget tests live in `test/` and use `flutter_test`
- Test file names mirror the file they test (e.g. `widget_test.dart` for app-level smoke tests)
- Tests must not rely on hardcoded strings — reference `AppString` constants where possible
