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
            ValueListenableBuilder<List<MockActivitiesModel>>(
              valueListenable: mockFilterActivities,
              builder: (context, activities, child) {
                console(
                    "Activity list rebuilt. Filtered activities: ${activities.length}");
                return ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: activities.length,
                  separatorBuilder: (context, index) => vSizedBox1andHalf,
                  itemBuilder: (context, index) {
                    return activityCardWidget(
                      mockActivities: activities[index],
                    );
                  },
                );
              },
            ),
            vSizedBox1andHalf,
          ],
        ),
      ),
    );
  }
}
