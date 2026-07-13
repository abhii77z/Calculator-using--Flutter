# 📱 Calculator App using Flutter

A modern, clean, and interactive Calculator application built with Flutter and Dart. This app showcases a simple yet effective architecture using custom widgets and a dedicated calculator service.

---

## 🚀 Features

- **Basic Operations**: Supports core arithmetic operations:
  - ➕ **Addition** (`+`)
  - ➖ **Subtraction** (`-`)
  - ✖️ **Multiplication** (`*`)
  - ➗ **Division** (`/`)
- **Robust Error Handling**: Prevents division by zero with custom exception handling and displays an `Error` message.
- **Custom Modular Architecture**:
  - Reusable buttons (`CalcButton`) for interactive math operations.
  - A custom output screen (`Display`) to render results beautifully.
  - Separated business logic under a calculator service layer (`CalculatorService`).

---

## 🛠️ Tech Stack & Structure

- **Framework**: [Flutter](https://flutter.dev/)
- **Language**: [Dart](https://dart.dev/)
- **Design Pattern**: Separated Service layer & View layer (Stateful UI interacting with CalculatorService).

### Project Layout

```text
lib/
├── main.dart                 # Application entry point
├── models/                   # Models representing operations or state
├── screens/
│   └── calculator_screen.dart # Main screen with UI & user interactions
├── services/
│   └── calculator_service.dart# Math logic & division by zero handling
└── widgets/
    ├── calc_button.dart      # Custom reusable button component
    └── display.dart          # Display widget to output results
```

---

## 📦 Getting Started

### Prerequisites

Ensure you have the following installed on your system:
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (version `3.x` or higher recommended)
- [Dart SDK](https://dart.dev/get-started) (bundled with Flutter)
- An Android/iOS Emulator, Windows/macOS desktop support, or Chrome for Web testing.

### Installation & Run

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/abhii77z/Calculator-using--Flutter.git
   cd Calculator-using--Flutter
   ```

2. **Get Dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the Application**:
   ```bash
   flutter run
   ```

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://github.com/abhii77z/Calculator-using--Flutter/issues).
