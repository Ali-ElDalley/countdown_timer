# ⏳ Countdown Timer

> Portfolio Project #2 — a Flutter app for tracking multiple personal countdowns, with live updating timers and local notifications.

**Status:** 🚧 In active development — this README will be finalized once the app is feature-complete.

---

## About

Countdown Timer lets you create and track multiple personal countdowns (birthdays, deadlines, events) at once. Each countdown updates live down to the second and fires a local notification the moment it hits zero.

This is my second Flutter portfolio project, built after a [To-Do List app](https://github.com/Ali-ElDalley/to_do_list). Where that project focused on basic CRUD + Provider, this one goes deeper into:

- `DateTime` / `Duration` calculations
- `Timer.periodic` for live, per-second UI updates
- Scheduled local notifications (`flutter_local_notifications` + `timezone`)
- Managing a *list* of stateful items with Provider (not just a single value)

## Screens

| Screen | Purpose |
|---|---|
| **Home** | List of all active countdowns |
| **Add / Edit Countdown** | Create a new countdown or edit an existing one |
| **Countdown Detail** *(planned)* | Full view of a single countdown |

## Features (target)

- [ ] Add, edit, delete countdowns
- [ ] Live countdown display (`days:hours:minutes:seconds`)
- [ ] Local notification when a countdown hits zero
- [ ] Local persistence (Hive)
- [ ] Linear progress indicator per countdown (Home list + Detail screen) — *decided, not yet implemented*
- [x] Light / Dark mode (follows system theme)

## Progress so far

- [x] `CountdownItem` model (incl. uuid-based `id` + `createdAt` for future progress tracking)
- [x] Full theming system (Light/Dark, custom colors & fonts)
- [x] Home screen UI (empty state)
- [x] Add/Edit Countdown screen UI (UI + some basic local logic — no state management or storage behind it yet)

## Roadmap

- [ ] Build `CountdownProvider` (state management for the list of countdowns) — currently in design discussion, not started
- [ ] Build local persistence with Hive — not started
- [ ] Connect Home + Add/Edit screens to the Provider once it exists
- [ ] Live per-second countdown rendering (`Timer.periodic`)
- [ ] Local notifications on zero (`flutter_local_notifications` + `timezone`, incl. `SCHEDULE_EXACT_ALARM` on Android 12+)
- [ ] Linear progress bar per countdown, computed from `createdAt` → `targetDateTime` (Home + Detail)
- [ ] Countdown Detail screen
- [ ] Delete countdown
- [ ] Final polish + screenshots

## Tech Stack

- **Flutter / Dart**
- **Provider** — state management
- **Hive** — local storage
- **uuid** — unique id generation for `CountdownItem`
- **flutter_local_notifications** + **timezone** — scheduled notifications
- **google_fonts** — Hanken Grotesk (headings/body) + JetBrains Mono (numbers/labels)
- Design prototyped in **Google Stitch**

## Architecture (planned)

Layered structure (models → providers → services → views/widgets), following the same pattern as the To-Do List project:

- `CountdownItem` — data model *(done — includes `id` (uuid) and `createdAt` for progress calculation)*
- `CountdownProvider` — list state management (ChangeNotifier) — *in design discussion, not started*
- `StorageService` — the layer that would talk to Hive — *not started*
- `AppColors` / `AppTextStyles` / `AppTheme` — centralized theming, accessed via `Theme.of(context)` *(done)*

## Screenshots

*Coming soon.*

## Author

**Ali Ibrahim ElDalley**
Software Engineering Student, University of Benghazi | Flutter Developer Intern @ Code Plus
[GitHub](https://github.com/Ali-ElDalley) · lyaldaly881@gmail.com
