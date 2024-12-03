import 'package:flutter/material.dart';

import '../core/app/colors.dart';
import '../core/app/dimensions.dart';

class CustomShadowContainer extends StatelessWidget {
  const CustomShadowContainer({
    super.key,
    this.bgColor,
    this.child,
    this.padding,
    this.height,
  });

  final Color? bgColor;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      width: appWidth(context),
      decoration: BoxDecoration(
        color: bgColor ?? AppColor.kWhite,
        borderRadius: BorderRadius.circular(borderRadiusTen),
        boxShadow: [
          BoxShadow(
            color: AppColor.kBlack.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: child,
    );
  }
}
