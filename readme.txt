TownSquare

This project is built with Flutter and supports both mobile and web platforms.

For this project, I focused on creating a well-structured and maintainable app by using clean architecture. To manage state effectively, I went with BLoC, as it provides a predictable flow and makes the app easier to test and debug. For dependency injection, I used GetIt, which keeps the code modular and neat, making it easy to work with as the app grows. Navigation was handled with GoRouter because it not only simplifies the navigation logic but also supports web URLs, which is a big plus for a seamless experience across mobile and web. Overall, my goal was to ensure the app is scalable, easy to work on, and delivers a consistent experience across all platforms.

How to Run the Project

Prerequisites:
- Install FVM (https://fvm.app/documentation/getting-started/installation) for Flutter version management.
- Use Flutter 3.24.3 for this project.

Steps:

1. Clone the Repository:
   git clone https://github.com/PratikPommeGrg/townsquare.git
   
2. Install FVM and Set Flutter Version:
   fvm install 3.24.3
   fvm use 3.24.3

3. Fetch Dependencies:
   fvm flutter clean && fvm flutter pub get

4. For Mobile (Android/iOS):
   - Comment out the following lines in main.dart:
     // import 'package:flutter_web_plugins/flutter_web_plugins.dart';
     // setUrlStrategy(PathUrlStrategy());
   - Run the app:
     fvm flutter run

5. For Web:
   - Uncomment the following lines in main.dart:
     import 'package:flutter_web_plugins/flutter_web_plugins.dart';
     setUrlStrategy(PathUrlStrategy());
   - Run the app:
     fvm flutter run -d chrome

Notes:
- FVM is used to ensure consistency across development.
- Mock data is used for filters and activities as backend APIs are not yet available.
- Empty, loading and error states are simulated for demo purposes.

- If had more time then app responsiveness could've been improved more for differenct screen sizes.