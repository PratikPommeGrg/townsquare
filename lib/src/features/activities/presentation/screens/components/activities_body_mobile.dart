part of '../activities_screen.dart';

class ActivitiesBodyMobile extends StatelessWidget {
  const ActivitiesBodyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: isWeb
              ? const EdgeInsets.only(top: 50, left: 32, right: 32)
              : const EdgeInsets.all(0),
          clipBehavior: Clip.none,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: screenLeftRightPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText.ourText(
                        "Tues, Nov 12",
                        fontWeight: FontWeight.w500,
                        color: AppColor.kNeutral500,
                        fontSize: 12,
                      ),
                      if (!isWeb) ...[
                        Row(
                          children: [
                            SvgPicture.asset(kBellIconSvg),
                            hSizedBox1,
                            circleProfilePicture(heigth: 28, width: 28)
                          ],
                        ),
                      ],
                    ],
                  ),
                  CustomText.ourText(
                    "This week in Estepona",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColor.kBlack,
                  ),
                ],
              ),
            ),
            vSizedBox2,
            if (!isWeb) ...[
              goalProgressBannerWidget(),
              vSizedBox1andHalf,
            ],
            const Padding(
              padding: screenLeftRightPadding,
              child: CustomShadowContainer(
                height: 42,
                child: CustomSearchBar(),
              ),
            ),
            vSizedBox2,
            filterSectionWidget(context: context),
            vSizedBox2andHalf,
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              padding: screenLeftRightPadding,
              shrinkWrap: true,
              separatorBuilder: (context, index) => vSizedBox1andHalf,
              itemCount: mockActivities.length,
              itemBuilder: (context, index) =>
                  activityCardWidget(mockActivities: mockActivities[index]),
            ),
            vSizedBox1andHalf,
          ],
        ),
      ),
    );
  }
}
