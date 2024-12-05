part of '../../main_screen.dart';

class MainBodyWeb extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const MainBodyWeb({super.key, required this.navigationShell});

  @override
  State<MainBodyWeb> createState() => _MainBodyWebState();
}

class _MainBodyWebState extends State<MainBodyWeb> {
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
              _navItem(
                title: "Activities",
                icon: kCalendarLightIconSvg,
                onTap: () => widget.navigationShell.goBranch(0),
              ),
              vSizedBox3,
              _navItem(
                title: "Locations",
                icon: kMapLightIconSvg,
                onTap: () => widget.navigationShell.goBranch(1),
              ),
              vSizedBox3,
              _navItem(
                title: "Services",
                icon: kStarLightIconSvg,
                onTap: () => widget.navigationShell.goBranch(3),
              ),
              vSizedBox3,
              _navItem(
                title: "Communities",
                icon: kUsersLightIconSvg,
                onTap: () => widget.navigationShell.goBranch(2),
              ),
              vSizedBox3,
              _navItem(
                title: "Notifications",
                icon: kBellIconSvg,
                onTap: () {},
              ),
              vSizedBox3,
              CustomButton.elevatedButtonWithIcon(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.add,
                  color: Colors.black,
                ),
                label: CustomText.ourText(
                  "Create",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                backGroundColour: AppColor.kPrimary600,
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
          child: widget.navigationShell,
        ),
      ],
    );
  }
}

Widget _navItem({
  required String title,
  required String icon,
  required void Function()? onTap,
}) {
  return MouseRegion(
    cursor: SystemMouseCursors.click,
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        child: Row(
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
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColor.kWhite,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
