# Code Standards

## General

- Keep changes focused and preserve working behavior.
- Use explicit Dart types and avoid `dynamic`.
- Prefer immutable models and `const` constructors.
- Keep widgets, state, and data access as separate concerns.
- Fix root causes instead of layering workarounds.
- Run `dart format` on changed Dart files.
- Keep `flutter analyze` clean; do not suppress lints without justification.

## Flutter and GetX

- Controllers extend `BaseController`.
- Route-level screens extend `BaseView<T>` and implement `buildView()`.
- Feature controllers are registered in a `Bindings` class.
- Use `Obx` for reactive state and keep mutations in controllers/services.
- Do not place backend calls, credentials, or persistence logic inside widgets.
- Use centralized route names rather than string literals.

## Feature Organization

New production logic should move toward focused modules:

```text
features/{feature}/binding/
features/{feature}/controller/
features/{feature}/screen/
features/{feature}/widget/
```

Shared widgets belong in `lib/app/widget/`. Shared services/repositories should use a clearly named data or services layer.

The current consolidated profile screen is accepted as prototype debt, not a pattern to copy into new features.

## Design and Resources

- Prefer `AppColors` and `AppTheme` for colors and component styling.
- Prefer `AppDimens` for dimensions repeated across screens.
- Move repeated user-facing strings to `AppString` as features mature.
- Asset paths must use `AppImages`.
- Use `Theme.of(context).textTheme` for standard text roles.
- Status colors may be semantic, but should become centralized when reused.
- Never reintroduce colored top strips on cards.

## Domain Naming

- Use Work Item, not Task.
- Use App in Builder-facing UI and Squad/App in architecture explanations.
- Use Rewards, Builder Rewards, and Rewards Balance.
- Use Committed, WIP, and Work History.
- Keep Outcome on the Work Item, not the App.

## Data and Security

- Map backend snake_case records to typed Dart models.
- Keep Work Items independent from Builders and Apps; model relationships through links.
- Use repositories/services as the UI boundary.
- Never commit API secrets, service-role keys, seeds, recovery phrases, or private account material.
- Supabase authorization must be enforced with RLS, not client-side hiding.

## Testing

- Widget/unit tests live under `test/`.
- Integration tests belong under `integration_test/` when added.
- Add tests for state transitions, filtering, empty states, and navigation as logic is introduced.
- Run commands independently:

```powershell
flutter analyze
flutter test test\widget_test.dart --reporter expanded
```

Do not combine tests and builds into one long command.
