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