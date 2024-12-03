part of '../../activities_screen.dart';

Widget filterSectionWidget({required BuildContext context}) {
  return Container(
    padding: screenLeftRightPadding,
    clipBehavior: Clip.none,
    height: isWeb ? 35 : 28,
    width: appWidth(context),
    child: ValueListenableBuilder(
      valueListenable: selectedFilter,
      builder: (context, value, child) => ListView.separated(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => hSizedBox0,
        itemCount: activitiesFilterList.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            if (index == 0) return;

            selectedFilter.value = activitiesFilterList[index];

            if (selectedFilter.value == "All") {
              mockFilterActivities.value = List.from(mockActivities);
            } else {
              mockFilterActivities.value = List.from(mockActivities
                  .where((activity) =>
                      activity.categories.contains(selectedFilter.value))
                  .toList());
            }

            console("Selected filter: ${selectedFilter.value}");
            console("Filtered activities: ${mockFilterActivities.value}");
          },
          child: Container(
            padding:
                EdgeInsets.symmetric(vertical: isWeb ? 8 : 5, horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadiusFour),
              color: selectedFilter.value == activitiesFilterList[index]
                  ? AppColor.kSecondaryPurple400
                  : AppColor.kSecondaryPurple200,
            ),
            child: index == 0
                ? SvgPicture.asset(activitiesFilterList[index])
                : CustomText.ourText(
                    activitiesFilterList[index],
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
          ),
        ),
      ),
    ),
  );
}
