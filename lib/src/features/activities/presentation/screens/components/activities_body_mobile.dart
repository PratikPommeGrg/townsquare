part of '../activities_screen.dart';

class ActivitiesBodyMobile extends StatefulWidget {
  const ActivitiesBodyMobile({super.key});

  @override
  State<ActivitiesBodyMobile> createState() => _ActivitiesBodyMobileState();
}

class _ActivitiesBodyMobileState extends State<ActivitiesBodyMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(appWidth(context), 70),
        child: AppBar(
          toolbarHeight: 70,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // vSizedBox1,
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
      ),
      body: SafeArea(
        child: ListView(
          padding: isWeb
              ? const EdgeInsets.only(top: 50, left: 32, right: 32)
              : screenLeftRightPadding,
          clipBehavior: Clip.none,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vSizedBox2,
            if (!isWeb) ...[
              goalProgressBannerWidget(),
              vSizedBox1andHalf,
            ],
            const CustomShadowContainer(
              height: 42,
              child: CustomSearchBar(),
            ),
            vSizedBox2,
            filterSectionWidget(context: context),
            vSizedBox2andHalf,
            ValueListenableBuilder(
              valueListenable: isLoading,
              builder: (context, value, child) => ValueListenableBuilder(
                valueListenable: isFailure,
                builder: (context, failureValue, child) =>
                    ValueListenableBuilder<List<MockActivitiesModel>>(
                  valueListenable: mockFilterActivities,
                  builder: (context, activities, child) {
                    return failureValue
                        ? CustomErrorWidget(
                            error: "Something went wrong",
                            showAction: true,
                          )
                        : Skeletonizer(
                            enabled: value,
                            child: activities.isEmpty && value == false
                                ? const CustomNotFoundWidget(
                                    desc: "No activities found",
                                  )
                                : ListView.separated(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 1,
                                    separatorBuilder: (context, index) =>
                                        vSizedBox1,
                                    itemBuilder: (context, index) {
                                      return Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            children: [
                                              CircleAvatar(
                                                radius: 6,
                                                backgroundColor: AppColor
                                                    .kSecondaryYellow300,
                                              ),
                                              verticalDashedLinePainterWidget(
                                                context,
                                                height: appHeight(context),
                                              ),
                                              vSizedBox2andHalf,
                                            ],
                                          ),
                                          hSizedBox1andHalf,
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    text: "Today",
                                                    style: TextStyle(
                                                        fontFamily: appFont,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: AppColor.kBlack),
                                                    children: [
                                                      TextSpan(
                                                          text: " / tuesday",
                                                          style: TextStyle(
                                                            color: AppColor
                                                                .kNeutral500,
                                                            fontSize: 12,
                                                          )),
                                                    ],
                                                  ),
                                                ),
                                                vSizedBox0andHalf,
                                                ListView.separated(
                                                  shrinkWrap: true,
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  separatorBuilder:
                                                      (context, index) {
                                                    return vSizedBox1andHalf;
                                                  },
                                                  itemCount: value
                                                      ? mockActivities.length
                                                      : activities.length,
                                                  itemBuilder:
                                                      (context, index) =>
                                                          activityCardWidget(
                                                    mockActivities: value
                                                        ? mockActivities[index]
                                                        : activities[index],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                          );
                  },
                ),
              ),
            ),
            vSizedBox1andHalf,
          ],
        ),
      ),
    );
  }
}
