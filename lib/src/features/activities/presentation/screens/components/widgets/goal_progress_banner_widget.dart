part of '../../activities_screen.dart';

Widget goalProgressBannerWidget() {
  return Padding(
    padding: isWeb ? EdgeInsets.zero : screenLeftRightPadding,
    child: CustomShadowContainer(
      bgColor: AppColor.kPrimary200,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText.ourText(
                  "You’re close to your goal!",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColor.kBlack,
                ),
                vSizedBox0,
                CustomText.ourText(
                  "Join more sport activities to collect more points",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColor.kBlack,
                ),
                vSizedBox1,
                Row(
                  children: [
                    CustomButton.elevatedButton(
                      "Join now",
                      () {},
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      height: 28,
                    ),
                    hSizedBox0andHalf,
                    CustomButton.elevatedButton(
                      "My points",
                      () {},
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      height: 28,
                    ),
                  ],
                ),
              ],
            ),
          ),
          hSizedBox0andHalf,
          Stack(
            alignment: Alignment.center,
            children: [
              CustomText.ourText(
                "27",
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: AppColor.kBlack,
              ),
              const CustomCircleProgressIndicator(progress: 0.5),
            ],
          ),
        ],
      ),
    ),
  );
}
