# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

Flutter mobile app (Android + iOS) for a live audio-chat / social platform ("World Chat", pubspec name `ahlachat`, Android id `com.worldchat.community`). Core features: live voice rooms with seats/chairs (Agora RTC), gifting, VIP/levels, agencies & families, games (roulette/lucky bags/guessing), moments (posts), wallet/recharge, and 1:1 chat. UI is bilingual English/Arabic (RTL).

- Dart SDK constraint: `>=2.16.2 <3.0.0` — this is a legacy null-safety-era Flutter 2.x/3.0 project. Do not use Dart 3 features (records, patterns, `class` modifiers).

## Commands

```bash
flutter pub get                 # install dependencies
flutter run                     # run on connected device/emulator (debug)
flutter analyze                 # static analysis / lint (uses analysis_options.yaml)
flutter test                    # run all tests
flutter test test/widget_test.dart   # run a single test file
flutter build apk               # Android release build
flutter build ios               # iOS release build
```

Note: `test/widget_test.dart` is the default Flutter counter template and does not match this app — the app has effectively no real test coverage. Verify changes by running the app, not the test suite.

## Architecture (MVVM + Provider)

Layering under `lib/`, wired together in `lib/main.dart`:

- **`models/`** — plain data classes with `fromJson`/`toJson`.
- **`Repositores/`** (sic) — the data/network layer, grouped by domain (e.g. `user_repositores/`, `Room_repositores/`). Each domain has an abstract `*_repository.dart` interface and a concrete `*_api.dart` implementation that does the actual HTTP calls with **Dio** (some older code uses `http`). API classes are instantiated ad-hoc at call sites (e.g. `await userapi().SomeCall(...)`), not injected.
- **`viewmodels/`** — one folder per domain, each a `ChangeNotifier` that calls repository APIs and holds UI state. All ~25 view models are registered as `ChangeNotifierProvider`s in the `MultiProvider` in `main.dart`. Screens read them via `Provider.of<X>(context)` / `Consumer<X>`.
- **`view/Screans/`** (sic) — screens, one folder per feature, each often with a nested `widgets/` folder. Shared widgets live in `view/widgets/`.
- **`util/`** — cross-cutting infrastructure (see below).

Data flow: **Screen → ViewModel (ChangeNotifier) → Repository api → Dio → backend**, with `notifyListeners()` driving rebuilds.

### Key infrastructure in `util/`

- **`app_constants.dart`** — central config and, importantly, a large set of **top-level mutable globals** used as app-wide session state: `Token`, `UserId`, `UserIP`, `deviceId`, `Lang`, etc. Auth headers and many features read these globals directly. `AppConstants` also holds `BASE_URL` (`https://theprochat.com/`), `Image_URL`, the socket host, and **all named-route string constants**. When adding a screen you typically add a route constant here.
- **`Router.dart`** — `generateRoute` maps the route-name constants to screens; navigation uses `Navigator` named routes + `NavigationService.navigatorKey` (global key in `main.dart`).
- **`Localization.dart`** / `models/Language/` — custom localization; strings come from `assets/language/`, current language tracked by the global `Lang` and `languageViewmodel`.
- **`Dialogs.dart`, `styles.dart`, `dimensions.dart`, `SizeConfig.dart`, `helperclass.dart`** — shared dialogs, text styles, responsive sizing, and helpers (downloads, device id, utf8, etc.).

### Realtime (voice + sockets)

- **Agora RTC** (`agora_rtc_engine`) via `Agora_ViewModel/` powers the live voice channels.
- **Pusher** (`pusher_client`) drives room events. `Socket_ViewModel/Socketviewmodel.dart` subscribes to per-room channels (`Room<id>` → `Room` event) and dispatches state updates; there are also global and per-user socket view models. Socket host/port are hardcoded there and in `AppConstants`.
- **Firebase** — Auth (phone/Google), Messaging (push, incl. background handler in `main.dart`), and App Check are initialized in `main()`.

## Conventions & gotchas

- **Spelling is load-bearing.** Directory and file names use nonstandard spellings — `Repositores`, `Screans`, `viewmodels`, `Karisma` (level/charisma). Match existing names exactly; don't "correct" them.
- **Naming is inconsistent.** Classes/methods/variables mix `PascalCase`, `camelCase`, and lowercase freely (e.g. `usermodel`, `LoginViewmodel`, `userapi`, method `UserLogin`). Follow the pattern of the file you're editing rather than imposing Dart style.
- Package imports use the `package:ahlachat/...` prefix.
- Session/auth state lives in mutable globals (`app_constants.dart`), not in a provider — reading/writing those globals is the established pattern.
- `assets/` (image, language, audios, font) must be declared in `pubspec.yaml` under `flutter:` to be bundled.
- Arabic profanity/insult filtering uses the `insult` list in `app_constants.dart`.
- Sentry is present but wrapping in `main()` is currently commented out.
