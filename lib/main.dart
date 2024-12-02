import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:townsquare/app.dart';

import 'app_bloc_observer.dart';
import 'di_injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initGetIt();
  Bloc.observer = AppBlocObserver();

  runApp(const TownSquareApp());
}
