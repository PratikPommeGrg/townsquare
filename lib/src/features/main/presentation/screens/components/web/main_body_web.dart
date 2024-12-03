part of '../../main_screen.dart';

class MainBodyWeb extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainBodyWeb({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Navigation Rail
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          width: 272,
          color: AppColor.kBlack,
          child: Column(
            children: [
              vSizedBox5,
              SvgPicture.asset(
                kAppLogoIconSvg,
                width: 156,
              ),
              vSizedBox6,
              _navItem(title: "Activities", icon: kCalendarLightIconSvg),
              vSizedBox3,
              _navItem(title: "Locations", icon: kMapLightIconSvg),
              vSizedBox3,
              _navItem(title: "Services", icon: kStarLightIconSvg),
              vSizedBox3,
              _navItem(title: "Communities", icon: kUsersLightIconSvg),
              vSizedBox3,
              _navItem(title: "Notifications", icon: kBellIconSvg),
              vSizedBox3,
              CustomButton.elevatedButtonWithIcon(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.add),
                label: CustomText.ourText("Create"),
              ),
              vSizedBox3,
              Row(
                children: [
                  circleProfilePicture(),
                  hSizedBox2,
                  Expanded(
                    child: CustomText.ourText(
                      "Profile",
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColor.kWhite,
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: AppColor.kWhite,
                  ),
                ],
              ),
            ],
          ),
        ),
        // Main Content
        Expanded(
          child: navigationShell,
        ),
        hSizedBox1andHalf,
        Container(
          color: AppColor.kNeutral100,
          width: 305,
          child: Column(
            children: [
              vSizedBox6,
              goalProgressBannerWidget(),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _navItem({
  required String title,
  required String icon,
}) {
  return Row(
    children: [
      SvgPicture.asset(
        icon,
        colorFilter: const ColorFilter.mode(
          Colors.white,
          BlendMode.srcIn,
        ),
      ),
      hSizedBox3,
      Expanded(
        child: CustomText.ourText(
          title,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: AppColor.kWhite,
        ),
      ),
    ],
  );
}
