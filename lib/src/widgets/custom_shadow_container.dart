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
    this.width,
    this.borderRadius,
    this.bgImage,
    this.takeFullWidth = true,
    this.showShadow = true,
  });

  final Color? bgColor;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;
  final double? borderRadius;
  final String? bgImage;
  final bool? takeFullWidth;
  final bool? showShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      width: takeFullWidth == true ? appWidth(context) : width,
      decoration: BoxDecoration(
        image: bgImage != null
            ? DecorationImage(
                image: AssetImage(bgImage ?? ''),
                fit: BoxFit.cover,
              )
            : null,
        color: bgColor ?? AppColor.kWhite,
        borderRadius: BorderRadius.circular(borderRadius ?? borderRadiusTen),
        boxShadow: showShadow == true
            ? [
                BoxShadow(
                  color: AppColor.kBlack.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(3, 3),
                ),
              ]
            : null,
      ),
      child: child,
    );
  }
}
