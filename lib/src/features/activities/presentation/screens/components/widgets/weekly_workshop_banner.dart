part of '../../activities_screen.dart';

Widget weeklyWorkshopBanner() {
  return CustomShadowContainer(
    padding: const EdgeInsets.only(left: 16, right: 25, bottom: 21, top: 64),
    bgColor: AppColor.kSecondaryYellow200,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText.ourText(
          "Weekly workshops for kids",
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        vSizedBox0,
        CustomText.ourText(
          "Sign up for early access to weekly activities for your kids full of learning and fun!",
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        vSizedBox0,
        CustomShadowContainer(
          borderRadius: 5,
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText.ourText(
                "Learn more",
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              const Icon(
                Icons.arrow_circle_right_outlined,
              ),
            ],
          ),
        )
      ],
    ),
  );
}
