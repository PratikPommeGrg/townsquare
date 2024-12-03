import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:townsquare/src/core/app/colors.dart';
import 'package:townsquare/src/core/app/dimensions.dart';
import 'package:townsquare/src/core/app/medias.dart';
import 'package:townsquare/src/core/development/console.dart';
import 'package:townsquare/src/core/states/states.dart';
import 'package:townsquare/src/features/main/presentation/screens/main_screen.dart';
import 'package:townsquare/src/helper/common_helper.dart';
import 'package:townsquare/src/widgets/custom_button.dart';
import 'package:townsquare/src/widgets/custom_circle_progress_indicator.dart';
import 'package:townsquare/src/widgets/custom_text.dart';
import 'package:townsquare/src/widgets/custom_vertical_dashed_divider.dart';

import '../../../../core/app/theme/fonts.dart';
import '../../../../widgets/custom_search_bar.dart';
import '../../../../widgets/custom_shadow_container.dart';
import '../../../../widgets/custom_tag_container.dart';
import '../../data/models/mock_activities_model.dart';

part 'components/activities_body_mobile.dart';
part 'components/activities_body_web.dart';
part 'components/widgets/activity_card_widget.dart';
part 'components/widgets/filter_section_widget.dart';
part 'components/widgets/goal_progress_banner_widget.dart';
part 'components/widgets/popular_events_banner_widget.dart';
part 'components/widgets/weekly_workshop_banner.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return isWeb ? const ActivitiesBodyWeb() : const ActivitiesBodyMobile();
  }
}
