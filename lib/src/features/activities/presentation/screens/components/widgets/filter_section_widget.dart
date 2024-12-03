part of '../../activities_screen.dart';

Widget filterSectionWidget({required BuildContext context}) {
  return Container(
    padding: screenLeftRightPadding,
    clipBehavior: Clip.none,
    height: 28,
    width: appWidth(context),
    child: ListView.separated(
      clipBehavior: Clip.none,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => hSizedBox0,
      itemCount: activitiesFilterList.length,
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadiusFour),
          color: index == 1
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
  );
}
