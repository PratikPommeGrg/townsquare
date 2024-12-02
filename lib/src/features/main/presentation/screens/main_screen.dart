import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../widgets/custom_bottom_navigation_bar.dart';

part 'components/main_body.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.statefulNavigationShell});

  final StatefulNavigationShell statefulNavigationShell;

  @override
  Widget build(BuildContext context) {
    return MainBody(
      statefulNavigationShell: statefulNavigationShell,
    );
  }
}
