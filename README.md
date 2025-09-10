# Trendora

Modern Flutter application scaffold with Riverpod state management, JSON models, API service layer, and platform targets for Android, iOS, Web, Windows, macOS, and Linux.

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Run](#run)
  - [Build](#build)
- [Code Generation](#code-generation)
- [Assets](#assets)
- [Testing](#testing)
- [Linting](#linting)
- [Environments](#environments)
- [Troubleshooting](#troubleshooting)

## Overview
Trendora is a Flutter app template showcasing a typical e-commerce flavored flow with a home screen, cart, orders, notifications, and account pages. It demonstrates a clean separation of concerns with models, providers, services, and UI widgets.

## Features
- **Riverpod state management** for predictable and testable state
- **API service layer** using `http`
- **Model serialization** via `json_serializable` and `build_runner`
- **Notifications module** with model and provider
- **Responsive UI** widgets and componentized structure
- **Multi-platform** targets: Android, iOS, Web, Desktop

## Screens
- Home: `Screens/home_screen.dart`
- Cart: `Screens/cart_page.dart`
- Orders: `Screens/order_page.dart`
- Account: `Screens/account_page.dart`
- Notifications: `Screens/notification_screen.dart`

Bottom navigation is implemented in `Core/Widget/bottom_nav_bar.dart` using a `StateProvider<int>` (`bottomnav_provider.dart`).

## Tech Stack
- **Language**: Dart (Flutter)
- **State Management**: `flutter_riverpod`
- **HTTP Client**: `http`
- **Serialization**: `json_annotation`, `json_serializable`, `build_runner`
- **UI/Fonts/Icons**: `google_fonts`, `cupertino_icons`, `lucide_icons_flutter`

## Project Structure
```
lib/
  Core/
    constant.dart              # App-wide constants
    Widget/                    # Shared UI components
  Screens/                     # Feature screens
    Widget/                    # Screen-specific widgets
  models/                      # Data models (+ generated *.g.dart)
  provider/                    # Riverpod providers
  Service/
    api_service.dart           # API client/service layer
  utils/                       # Utilities (e.g., JSON parsing helpers)
  main.dart                    # App entry point
assets/                        # App assets (icons, images)
test/                          # Unit/widget tests
```

### Architecture Overview
- Entry point `main.dart` bootstraps `ProviderScope` and `MaterialApp`.
- Navigation: `BottomNavBar` switches between core screens using Riverpod state.
- Notifications data flow:
  - `provider/notification_provider.dart` fetches JSON via `http`.
  - Parses only the `data` array from the response and offloads JSON parsing to an isolate using `utils/json_parser.dart`.
  - UI layer (`notification_screen.dart`) consumes the `FutureProvider` and renders `notification_Widget/notification_card.dart`.
  - Model is defined in `models/notification_model.dart` (with generated `notification_model.g.dart`).

## Getting Started

### Prerequisites
- Flutter SDK installed and on PATH (`flutter --version`)
- Dart SDK bundled with Flutter
- Platform toolchains as needed (Xcode, Android SDK, Chrome, Desktop toolchains)

### Install
```bash
flutter pub get
```

### Run
```bash
# Choose one of the connected devices or emulators
flutter devices
flutter run
```

### Build
```bash
# Android APK/AAB
flutter build apk      # or: flutter build appbundle

# iOS (requires macOS + Xcode)
flutter build ios

# Web
flutter build web

# Windows/macOS/Linux
flutter build windows  # or: macos, linux
```

## Code Generation
This project uses `json_serializable` for model generation. Whenever you change model classes or add new ones, run:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```
For watch mode during development:
```bash
flutter pub run build_runner watch --delete-conflicting-outputs
```

## Assets
Declare assets in `pubspec.yaml` under `flutter.assets`. This project already includes:
```
assets/
  icons/
```
To use an asset in code:
```dart
Image.asset('assets/icons/download.png')
```

## Testing
```bash
flutter test
```
Widget tests live under `test/`.

## Linting
This project uses `flutter_lints`. To analyze:
```bash
flutter analyze
```

## Environments
If your API service requires environment-specific configuration, consider using Dart `--dart-define` flags or a simple config service. Example run with defines:
```bash
flutter run --dart-define=API_BASE_URL=https://api.example.com
```
Access via `const String.fromEnvironment('API_BASE_URL')`.

Current demo endpoints fetch from GitHub Raw; be aware of rate limits. A `User-Agent` header is set to avoid blocks.

## Troubleshooting
- If code generation fails, run with `--delete-conflicting-outputs` as shown above.
- If assets are not found, ensure paths are correctly listed under `flutter.assets` and run `flutter clean && flutter pub get`.
- For platform-specific build errors, make sure you have the correct toolchains and platform SDK versions installed.

---

Made with Flutter 💙
