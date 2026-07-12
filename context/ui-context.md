# UI Context

## UI Direction

The current UI is the Week 1 Builder Profile App baseline. It should remain clean, professional, beginner-readable, and easy to evolve.

Week 2 may evolve the experience toward a theBuilderApp, but the UI system should continue to use the same centralized resources, theme, and reusable section-based layout patterns.

## Theme

Light mode only for the current baseline.

The Week 1 visual language uses:

- light backgrounds
- purple primary color
- orange accent color
- subtle borders
- card-based information sections

No dark mode is currently implemented.

## Colors

All colors are defined in `lib/app/constant/resources/app_colors.dart` and applied through `AppTheme`. Do not hardcode hex values in widgets.

| Role | Constant | Value |
| --- | --- | --- |
| Primary | `AppColors.primary` | `#6419E6` |
| Secondary | `AppColors.secondary` | `#FF5A00` |
| Accent | `AppColors.accent` | `#FF5A00` |
| Page background | `AppColors.background` | `#FBF9FF` |
| Surface | `AppColors.surface` | `#FFFFFF` |
| Primary text | `AppColors.textPrimary` | `#1E293B` |
| Muted text | `AppColors.textSecondary` | `#64748B` |
| Border | `AppColors.border` | `#E5D8FF` |

## Typography

Typography is defined in `AppTheme.lightTheme` through `ThemeData.textTheme`. Use `Theme.of(context).textTheme` in widgets.

| Role | Style key | Size | Weight |
| --- | --- | --- | --- |
| Name / headline | `headlineMedium` | 28 | w800 |
| Section title | `titleMedium` | 16 | w700 |
| Body text | `bodyLarge` | 16 | w400 |
| Label / muted | `bodyMedium` | 14 | w400 |

## Dimensions

Dimensions are defined in `lib/app/constant/resources/app_dimens.dart`.

| Constant | Value | Usage |
| --- | --- | --- |
| `AppDimens.screenPadding` | 20px | ListView outer padding |
| `AppDimens.cardRadius` | 24px | Card and container border radius |
| `AppDimens.avatarSize` | 108px | Avatar circle diameter |
| `AppDimens.itemGap` | 12px | Vertical gap between sections |

## Current Components

Shared widgets live in `lib/app/widget/`:

- `SectionCard` - titled card container used for About, Contact, and Skills sections
- `ProfileInfoTile` - icon, label, and value row used in the Contact section

The app uses Flutter Material components styled through `AppTheme`.

## Layout Patterns

Current layout:

- `Scaffold`
- `AppBar`
- `SafeArea`
- `ListView`
- profile header
- stacked reusable sections
- `Wrap` for skill chips

Week 2 screens should preserve this sense of clarity. New member, auth, or classroom UI should use centralized resources and reusable widgets instead of inline styling.

## Week 2 UI Evolution

Potential Week 2 UI additions:

- sign-in entry screen
- member identity header
- member status section
- classroom participation summary
- dashboard-style sections

These are planned directions only. They are not implemented in the current runtime code.
