part of '../activities_screen.dart';

class ActivitiesBodyWeb extends StatelessWidget {
  const ActivitiesBodyWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(top: 50, left: 32, right: 32),

                clipBehavior: Clip.none,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: screenLeftRightPadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText.ourText(
                          "Tues, Nov 12",
                          fontWeight: FontWeight.w500,
                          color: AppColor.kNeutral500,
                          fontSize: 14,
                        ),
                        CustomText.ourText(
                          "This week in Estepona",
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: AppColor.kBlack,
                        ),
                      ],
                    ),
                  ),
                  vSizedBox2,
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
                  ValueListenableBuilder(
                    valueListenable: mockFilterActivities,
                    builder: (context, value, child) => Padding(
                      padding: screenLeftRightPadding,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 6,
                                backgroundColor: AppColor.kSecondaryYellow300,
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
                            child: ListView.separated(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              separatorBuilder: (context, index) => vSizedBox1,
                              itemCount: 1,
                              itemBuilder: (context, index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: "Today",
                                      style: TextStyle(
                                        fontFamily: appFont,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      children: [
                                        TextSpan(
                                            text: " / tuesday",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: AppColor.kNeutral500,
                                            )),
                                      ],
                                    ),
                                  ),
                                  vSizedBox2andHalf,
                                  ListView.separated(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) =>
                                        vSizedBox1andHalf,
                                    itemCount: activitiesFilterList[1] ==
                                            selectedFilter.value
                                        ? mockActivities.length
                                        : mockFilterActivities.value.length,
                                    itemBuilder: (context, index) {
                                      return activityCardWidget(
                                        mockActivities:
                                            activitiesFilterList[1] ==
                                                    selectedFilter.value
                                                ? mockActivities[index]
                                                : mockFilterActivities
                                                    .value[index],
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  vSizedBox1andHalf,
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 35),
              width: 350,
              child: Column(
                children: [
                  vSizedBox6,
                  goalProgressBannerWidget(),
                  vSizedBox3,
                  weeklyWorkshopBanner(),
                  vSizedBox3,
                  popularEventsBannerWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
