import 'package:flutter/material.dart';
import 'package:townsquare/src/core/app/medias.dart';

import '../../features/activities/data/models/mock_activities_model.dart';

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

ValueNotifier<List<MockActivitiesModel>> mockFilterActivities =
    ValueNotifier<List<MockActivitiesModel>>([]);
ValueNotifier<String> selectedFilter = ValueNotifier<String>("All");
