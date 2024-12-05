
# TownSquare

This project is built with Flutter and supports both mobile and web platforms.

## Getting Started

### 1. Clone the Repository
Clone the repository to your local machine:
```bash
git clone https://github.com/PratikPommeGrg/townsquare.git
```

### 2. Install FVM
This project uses **FVM 3.24.3** to manage the Flutter version.

- If FVM is not installed, visit: [FVM Installation Guide](https://fvm.app/documentation/getting-started/installation)
- After installing FVM, run:
  ```bash
  fvm install 3.24.3
  fvm use 3.24.3
  ```

### 3. Clean and Fetch Dependencies
Run the following commands:
```bash
fvm flutter clean && fvm flutter pub get
```

### 4. Running the App

#### For Mobile (Android/iOS):
1. Comment out the following two lines in `main.dart`:
   ```dart
   // import 'package:flutter_web_plugins/flutter_web_plugins.dart';
   // setUrlStrategy(PathUrlStrategy());
   ```
2. Run the app using:
   ```bash
   fvm flutter run
   ```

#### For Web:
1. Uncomment the web plugin import in `main.dart`:
   ```dart
   import 'package:flutter_web_plugins/flutter_web_plugins.dart';
   ```
2. To remove the default hash URL (`#`), uncomment the line below:
   ```dart
   setUrlStrategy(PathUrlStrategy());
   ```
3. Run the app using:
   ```bash
   fvm flutter run -d chrome
   ```

---

## Notes

- Ensure the correct Flutter environment is set up before running the app.
- Follow the steps based on the platform you intend to build for (Mobile or Web).
