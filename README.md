# townsquare

TownSquare

This project is built with Flutter and supports both mobile and web platforms.

Getting Started

1. Clone the Repository
   Clone the repository to your local machine:

2. Install FVM
   This project uses FVM 3.24.3 to manage the Flutter version.

    If FVM is not installed, visit: https://fvm.app/documentation/getting-started/installation
    After installing FVM, run:
    fvm install 3.24.3
    fvm use 3.24.3
    Clean and Fetch Dependencies
    Run the following commands:
    fvm flutter clean && fvm flutter pub get

3. Running the App
    For Mobile (Android/iOS):

    Comment out those two lines in main.dart:
    // import 'package:flutter_web_plugins/flutter_web_plugins.dart';
    // setUrlStrategy(PathUrlStrategy());
    
    Run the app using:
    fvm flutter run


4. For Web:

    Uncomment the web plugin import in main.dart:
    import 'package:flutter_web_plugins/flutter_web_plugins.dart';
    To remove the default hashUrl (#) uncomment line below too:
    setUrlStrategy(PathUrlStrategy());

    Run the app using:
    fvm flutter run -d chrome

Notes:

    Ensure the correct Flutter environment is set up before running the app.
    Follow the steps based on the platform you intend to build for (Mobile or Web).