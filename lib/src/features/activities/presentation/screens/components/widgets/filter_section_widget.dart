part of '../../activities_screen.dart';

Widget filterSectionWidget({required BuildContext context}) {
  return Container(
    padding: isWeb ? screenLeftRightPadding : null,
    clipBehavior: Clip.none,
    height: isWeb ? 35 : 28,
    width: appWidth(context),
    child: ValueListenableBuilder(
      valueListenable: selectedFilter,
      builder: (context, value, child) {
        return ListView.separated(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => hSizedBox0,
          itemCount: activitiesFilterList.length,
          itemBuilder: (context, index) => MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                if (index == 0) return;
                isFailure.value = false;

                selectedFilter.value = activitiesFilterList[index];
                isLoading.value = true;
                Future.delayed(const Duration(milliseconds: 700)).then((_) {
                  isLoading.value = false;
                  if (index == activitiesFilterList.length - 2) {
                    isFailure.value = true;
                  }
                });

                if (selectedFilter.value == "All") {
                  mockFilterActivities.value =
                      List.from(mockActivities); // Create a new list instance
                } else {
                  mockFilterActivities.value = List.from(mockActivities.where(
                      (activity) =>
                          activity.categories.contains(selectedFilter.value)));
                }
              },
              child: AnimatedScale(
                scale: selectedFilter.value == activitiesFilterList[index]
                    ? 1.1
                    : 1.0,
                duration: const Duration(milliseconds: 200),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: isWeb ? 8 : 5, horizontal: 16),
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
      },
    ),
  );
}
