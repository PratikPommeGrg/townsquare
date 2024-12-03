import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:townsquare/src/core/app/colors.dart';
import 'package:townsquare/src/core/app/dimensions.dart';
import 'package:townsquare/src/core/app/medias.dart';
import 'package:townsquare/src/features/activities/presentation/screens/activities_screen.dart';
import 'package:townsquare/src/helper/common_helper.dart';
import 'package:townsquare/src/widgets/custom_button.dart';

import '../../../../widgets/custom_bottom_navigation_bar.dart';
import '../../../../widgets/custom_network_image_widget.dart';
import '../../../../widgets/custom_text.dart';

part 'components/mobile/main_body_mobile.dart';
part 'components/web/main_body_web.dart';
part 'components/widgets/circle_profile_picture_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.statefulNavigationShell});

  final StatefulNavigationShell statefulNavigationShell;

  @override
  Widget build(BuildContext context) {
    return isWeb
        ? MainBodyWeb(navigationShell: statefulNavigationShell)
        : MainBodyMobile(
            statefulNavigationShell: statefulNavigationShell,
          );
  }
}
