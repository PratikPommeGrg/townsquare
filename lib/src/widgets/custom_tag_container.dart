import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/app/colors.dart';
import '../core/app/dimensions.dart';
import 'custom_text.dart';

class CustomTagContainer extends StatelessWidget {
  const CustomTagContainer({
    super.key,
    this.text,
    this.icon,
    this.bgColor,
    this.textColor,
  });

  final String? text;
  final String? icon;
  final Color? bgColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: bgColor ?? AppColor.kSecondaryPurple200,
        ),
        child: Row(
          children: [
            if (icon != null) ...[
              SvgPicture.asset(icon ?? ""),
              hSizedBox0,
            ],
            CustomText.ourText(
              text ?? "",
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: textColor ?? AppColor.kNeutral500,
            ),
          ],
        ),
      ),
    );
  }
}
