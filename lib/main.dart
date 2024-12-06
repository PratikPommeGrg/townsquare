import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:townsquare/app.dart';

import 'app_bloc_observer.dart';
import 'di_injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  initGetIt();
  Bloc.observer = AppBlocObserver();

  // setUrlStrategy(PathUrlStrategy());

  runApp(const TownSquareApp());
}
