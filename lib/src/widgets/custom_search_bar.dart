import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/app/colors.dart';
import '../core/app/medias.dart';
import '../core/app/theme/fonts.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      hintText: "What do you feel like doing?",
      hintStyle: WidgetStatePropertyAll(
        TextStyle(
          color: AppColor.kNeutral500,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: appFont,
        ),
      ),
      overlayColor: const WidgetStatePropertyAll(Colors.white),
      surfaceTintColor: WidgetStateProperty.all(Colors.white),
      backgroundColor: WidgetStateProperty.all(Colors.transparent),
      shadowColor: const WidgetStatePropertyAll(Colors.transparent),
      trailing: [
        SvgPicture.asset(kSearchIconSvg),
      ],
      padding: const WidgetStatePropertyAll(
        EdgeInsets.only(right: 16, left: 8),
      ),
    );
  }
}
