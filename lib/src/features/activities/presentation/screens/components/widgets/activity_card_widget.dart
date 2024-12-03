part of '../../activities_screen.dart';

Widget activityCardWidget({required MockActivitiesModel mockActivities}) {
  return CustomShadowContainer(
    padding:
        const EdgeInsets.symmetric(vertical: 12, horizontal: kIsWeb ? 32 : 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: mockActivities.time,
                  style: TextStyle(
                    color: AppColor.kBlack,
                    fontWeight: FontWeight.w500,
                    fontSize: isWeb ? 14 : 12,
                  ),
                  children: [
                    TextSpan(
                        text: " ${mockActivities.duration}",
                        style: TextStyle(
                          color: AppColor.kNeutral500,
                        ))
                  ],
                ),
              ),
              vSizedBox0,
              CustomText.ourText(
                mockActivities.title,
                fontSize: isWeb ? 20 : 14,
                fontWeight: FontWeight.w700,
                color: AppColor.kBlack,
              ),
              vSizedBox0,
              Row(
                children: [
                  SvgPicture.asset(kMapPinIconSvg),
                  hSizedBox0,
                  CustomText.ourText(
                    mockActivities.location,
                    fontSize: isWeb ? 14 : 12,
                    fontWeight: FontWeight.w500,
                    color: AppColor.kNeutral500,
                  ),
                ],
              ),
              vSizedBox0,
              Wrap(
                runSpacing: 5,
                spacing: 5,
                children: List.generate(
                  mockActivities.tags.length,
                  (index) => CustomTagContainer(
                    text: mockActivities.tags[index].title,
                    bgColor: mockActivities.tags[index].backgroundColor,
                    icon: mockActivities.tags[index].icon,
                    textColor: mockActivities.tags[index].textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            CustomText.ourText(
              mockActivities.price == 0 ? "Free" : "${mockActivities.price}€",
              fontSize: isWeb ? 20 : 14,
              fontWeight: FontWeight.w700,
              color: AppColor.kBlack,
            ),
            vSizedBox1andHalf,
            CustomButton.elevatedButton(
              mockActivities.spot < 1 ? "Sold Out" : "Join",
              () {},
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              borderRadius: borderRadiusSix,
              color: mockActivities.spot == 0
                  ? AppColor.kNeutral500
                  : AppColor.kBlack,
              isDisable: mockActivities.spot == 0,
            ),
          ],
        ),
      ],
    ),
  );
}
