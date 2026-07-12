# Progress Tracker

## Current Phase

Week 2 ready for implementation branch. Runtime implementation has not started yet.

## Stable Baseline

Week 1 is complete and preserved as the stable Builder Profile App baseline.

Week 1 includes:

- Flutter + GetX project scaffold
- centralized `AppColors`, `AppDimens`, `AppString`, `AppImages`, and `AppTheme`
- `BaseController` and `BaseView`
- `InitialBinding` and `ProfileBinding`
- GetX route constants and page registration
- immutable `ProfileInfo` model with `copyWith`
- reactive `ProfileController`
- Profile screen with header, About, Contact, and Skills sections
- reusable `SectionCard` and `ProfileInfoTile`
- SVG logo support through `flutter_svg`
- widget smoke test coverage

## Completed

- Repository references synchronized to `[new repository URL]`
- AI workflow and context system established
- Week 1 frozen baseline preparation completed
- Documentation and workflow alignment completed
- Branch/tag workflow defined for students and contributors

## Current Goal

Begin Week 2 from a feature branch while preserving Week 1 as the frozen learning milestone.

This documentation update synchronizes the product direction, architecture notes, UI context, repository references, and AI workflow. It does not implement Google Sign-In, Classroom integration, or runtime code changes.

## In Progress

- Nothing in runtime implementation

## Next Up

- Create or switch to the Week 2 implementation branch
- Design the member app feature boundaries
- Plan auth/member/classroom modules before coding
- Keep Week 1 available through its milestone tag

## Not Started

- Google Sign-In implementation
- authenticated member state
- Google Classroom integration
- member dashboard UI
- participation economy features
- Week 2 Flutter runtime behavior changes

## Open Questions

- Exact Week 2 implementation order for auth, member profile, and Classroom context
- Google project/client configuration details
- Whether Week 2 should keep the profile screen as a fallback or evolve it into a member dashboard

## Session Notes

- Documentation and workflow synchronization only.
- Runtime Flutter code remains unchanged.
- The `context/` folder is living documentation and should be updated whenever architecture or workflow changes.
