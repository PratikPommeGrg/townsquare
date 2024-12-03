import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:townsquare/src/core/app/medias.dart';
import 'package:townsquare/src/core/development/console.dart';

import '../../di_injection.dart';
import '../core/app/colors.dart';
import '../features/main/presentation/cubit/nav_cubit.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final StatefulNavigationShell statefulNavigationShell;

  const CustomBottomNavigationBar(
      {super.key, required this.statefulNavigationShell});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavCubit, int>(
      builder: (context, state) {
        console(" state: $state");
        return BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 5,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColor.kPrimary600,
          unselectedItemColor: AppColor.kNeutral500,
          selectedFontSize:
              Theme.of(context).textTheme.bodySmall?.fontSize ?? 12,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
          unselectedFontSize:
              Theme.of(context).textTheme.bodySmall?.fontSize ?? 12,
          currentIndex: statefulNavigationShell.currentIndex >= 2
              ? statefulNavigationShell.currentIndex + 1
              : statefulNavigationShell.currentIndex,
          onTap: (int index) {
            if (index == 2) return;

            sl.get<NavCubit>().changeCurrentIndex(index);
            int customIndexForNav = index >= 3 ? index - 1 : index;

            statefulNavigationShell.goBranch(
              customIndexForNav,
              initialLocation: (index) == statefulNavigationShell.currentIndex,
            );
          },
          items: [
            customBottomItem(
              "",
              kCalendarLightIconSvg,
              kCalendarLightIconSvg,
            ),
            customBottomItem(
              "",
              kMapLightIconSvg,
              kMapLightIconSvg,
            ),
            customBottomItem(
              "",
              kPlusLightIconSvg,
              kPlusLightIconSvg,
              isCreate: true,
            ),
            customBottomItem(
              "",
              kUsersLightIconSvg,
              kUsersLightIconSvg,
            ),
            customBottomItem(
              "",
              kStarLightIconSvg,
              kStarLightIconSvg,
            ),
          ],
        );
      },
    );
  }

  BottomNavigationBarItem customBottomItem(
    String? label,
    String activeIcon,
    String icon, {
    String? imageUrl,
    String? imageText,
    bool? isProfile,
    bool? isCreate,
  }) {
    return BottomNavigationBarItem(
      label: label,
      activeIcon: BlocBuilder<NavCubit, int>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(top: 16),
            child: SvgPicture.asset(
              activeIcon,
            ),
          );
        },
      ),
      icon: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: SvgPicture.asset(
          icon,
          colorFilter: isCreate == true
              ? null
              : ColorFilter.mode(
                  AppColor.kNeutral500,
                  BlendMode.srcIn,
                ),
        ),
      ),
    );
  }
}
