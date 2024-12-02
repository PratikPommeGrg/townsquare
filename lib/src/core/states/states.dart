import 'package:flutter/material.dart';

//global navigator key
GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

// back button notifier
ValueNotifier<bool> backPressButtonNotifier = ValueNotifier<bool>(false);

