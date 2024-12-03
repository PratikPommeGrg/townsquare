part of '../../activities_screen.dart';

Widget popularEventsBannerWidget() {
  return CustomShadowContainer(
    bgImage: kBgImage,
    padding: screenPadding,
    child: Column(
      children: [
        CustomText.ourText(
          "Popular events near you!",
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: AppColor.kWhite,
        ),
        vSizedBox6,
        vSizedBox6,
        CustomText.ourText(
          "Unleash the fun! Explore the world of exciting events happening near you.",
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColor.kWhite,
        ),
        vSizedBox2,
        CustomShadowContainer(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 62),
          takeFullWidth: false,
          child: CustomText.ourText(
            "See More",
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    ),
  );
}
