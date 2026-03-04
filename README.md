# ☕ Coffee Masters

A Flutter mobile application for browsing a coffee shop menu, viewing promotional offers, and managing your order cart.

---

## Features

- **Menu** – Browse coffee products organized by category, with images and prices fetched from a live API.
- **Offers** – View current promotions and special deals.
- **Order Cart** – Add items to your cart, review quantities and totals, and remove items as needed.

---

## Screenshots

> _Run the app on a simulator or device to see it in action (see [Getting Started](#getting-started) below)._

---

## Tech Stack

| Technology | Purpose |
|---|---|
| [Flutter](https://flutter.dev/) | Cross-platform UI framework |
| [Dart](https://dart.dev/) | Programming language |
| [`http`](https://pub.dev/packages/http) | Fetching menu data from the REST API |
| [Material Design 3](https://m3.material.io/) | UI components and theming |

---

## Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) **≥ 3.11.0**
- Dart SDK (bundled with Flutter)
- An Android emulator, iOS simulator, or physical device

---

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/sahirulhassan/coffee_masters.git
cd coffee_masters
```

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Run the app

```bash
flutter run
```

To target a specific platform:

```bash
flutter run -d android   # Android emulator or device
flutter run -d ios       # iOS simulator or device
flutter run -d web       # Web browser
```

---

## Project Structure

```
lib/
├── main.dart           # App entry point and bottom navigation
├── data_manager.dart   # Cart logic and API data fetching
├── data_model.dart     # Data models: Product, Category, ItemInCart
└── pages/
    ├── menu_page.dart  # Browsable product menu
    ├── offers_page.dart# Promotional offers display
    └── orders_page.dart# Cart and order summary
images/
├── logo.png            # App bar logo
├── background.png      # Offers page background
└── black_coffee.png    # Decorative asset
```

---

## API

Menu data is loaded from:

```
https://firtman.github.io/coffeemasters/api/menu.json
```

Product images are served from:

```
https://firtman.github.io/coffeemasters/api/images/<image-filename>
```

---

## Running Tests

```bash
flutter test
```

---

## Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/my-feature`
3. Commit your changes: `git commit -m "Add my feature"`
4. Push to the branch: `git push origin feature/my-feature`
5. Open a Pull Request

---

## Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Flutter Codelabs](https://docs.flutter.dev/get-started/codelab)
- [Dart Language Tour](https://dart.dev/language)
- [pub.dev – Flutter packages](https://pub.dev/)
