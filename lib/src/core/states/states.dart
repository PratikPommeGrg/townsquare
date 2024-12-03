import 'package:flutter/material.dart';
import 'package:townsquare/src/core/app/medias.dart';

//global navigator key
GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

// back button notifier
ValueNotifier<bool> backPressButtonNotifier = ValueNotifier<bool>(false);

//activities screen
List<String> activitiesFilterList = [
  kSlidersIconSvg,
  "All",
  "Sports",
  "Food",
  "Kids",
  "Creative",
  "Popular",
  "Calm",
];
