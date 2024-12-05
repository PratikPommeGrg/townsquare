import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/app/colors.dart';
import '../core/app/dimensions.dart';
import 'custom_text.dart';

class CustomButton {
  static Widget customCircularButton({
    Color? backgroundColor,
    Color? iconColor,
    IconData? icon,
    Function()? onPressed,
    bool? isSVG,
    String? svgImage,
    EdgeInsets? wholePadding,
    double? height,
    double? width,
  }) {
    return Container(
      height: height,
      width: width,
      padding: wholePadding,
      margin: const EdgeInsets.only(left: 8, right: 8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor ?? AppColor.kWhite,
        border: Border.all(
          color: AppColor.kNeutral100,
          width: 1,
        ),
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        icon: (isSVG == true)
            ? SvgPicture.asset(
                svgImage!,
                height: 18,
                width: 18,
              )
            : Icon(
                icon ?? Icons.search,
                size: 22,
                color: iconColor ?? AppColor.kNeutral800,
              ),
      ),
    );
  }

  static Widget elevatedButton(
    String title,
    Function()? onPressed, {
    Color? titleColor,
    double? width,
    EdgeInsets? padding,
    double? height,
    double? fontSize,
    double? elevation,
    FontWeight? fontWeight,
    bool isFitted = false,
    bool isDisable = false,
    Color? color,
    Color? borderColor,
    Color? disabledBackgroundColor,
    TextDecoration? decorateText,
    bool isBorder = false,
    double borderRadius = borderRadiusMax,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: color,
          padding: padding ??
              const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          backgroundColor:
              isBorder ? Colors.transparent : color ?? AppColor.kBlack,
          disabledBackgroundColor:
              disabledBackgroundColor ?? AppColor.kNeutral300,
          disabledForegroundColor: AppColor.kNeutral200,
          shape: RoundedRectangleBorder(
            side: isBorder == true
                ? BorderSide(
                    color: isDisable
                        ? AppColor.kNeutral400
                        : borderColor ?? AppColor.kPrimary600,
                    width: 2,
                  )
                : BorderSide.none,
            borderRadius: BorderRadius.circular(borderRadiusFour),
          ),
        ).copyWith(
          elevation: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.hovered)) {
              return 0.0; // Remove elevation when hovered
            }
            return elevation ?? 0.0; // Default elevation
          }),
        ),
        onPressed: isDisable ? null : onPressed,
        child: Center(
          child: isFitted
              ? FittedBox(
                  child: CustomText.ourText(title,
                      fontSize: fontSize ?? 16,
                      fontWeight: isBorder
                          ? FontWeight.w500
                          : fontWeight ?? FontWeight.w500,
                      color: isBorder
                          ? isDisable
                              ? AppColor.kNeutral400
                              : titleColor ?? AppColor.kPrimary600
                          : titleColor ?? Colors.white,
                      textDecoration: decorateText ?? TextDecoration.none),
                )
              : CustomText.ourText(title,
                  fontSize: fontSize ?? 16,
                  fontWeight: isBorder
                      ? FontWeight.w500
                      : fontWeight ?? FontWeight.w500,
                  color: isBorder
                      ? titleColor ?? Colors.black
                      : titleColor ?? Colors.white,
                  textDecoration: decorateText ?? TextDecoration.none),
        ),
      ),
    );
  }

  static Widget textButton(
    String title,
    Function()? onPressed, {
    Color? titleColor,
    double? width,
    double? height,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    bool? decorateText = false,
    bool isFitted = false,
    bool isDisable = false,
    Color? color,
    Color? borderColor,
    double borderRadius = borderRadiusMax,
    Color? backgroundColor,
    Color? textDecorationColor,
    bool? isBordered = false,
    double? borderWidth,
    EdgeInsets? padding,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: padding ??
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          foregroundColor: Colors.white,
          backgroundColor: backgroundColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: isBordered == true
                ? BorderSide(
                    color: borderColor ?? AppColor.kNeutral900,
                    width: borderWidth ?? 1.0,
                  )
                : BorderSide.none,
          ),
        ),
        onPressed: isDisable ? null : onPressed,
        child: Center(
          child: isFitted
              ? FittedBox(
                  child: CustomText.ourText(
                    title,
                    fontSize: fontSize,
                    fontWeight: fontWeight ?? FontWeight.w300,
                    color: titleColor ?? Colors.black,
                    fontStyle: fontStyle,
                  ),
                )
              : CustomText.ourText(
                  title,
                  fontSize: fontSize,
                  fontWeight: fontWeight ?? FontWeight.w300,
                  color: titleColor ?? Colors.black,
                  fontStyle: fontStyle,
                  textDecoration: decorateText == true
                      ? TextDecoration.underline
                      : TextDecoration.none,
                  decorationColor: textDecorationColor ?? AppColor.kNeutral600,
                ),
        ),
      ),
    );
  }

  static Widget elevatedButtonWithIcon(
      {Key? key,
      required Function()? onPressed,
      VoidCallback? onLongPress,
      ValueChanged<bool>? onHover,
      ValueChanged<bool>? onFocusChange,
      ButtonStyle? style,
      FocusNode? focusNode,
      bool? autofocus,
      Clip? clipBehavior,
      Color? backGroundColour,
      WidgetStatesController? statesController,
      double? width,
      double? borderRadius,
      required Widget icon,
      required Widget label}) {
    return SizedBox(
      height: 44,
      width: width ?? double.infinity,
      child: ElevatedButton.icon(
        icon: icon,
        label: label,
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backGroundColour,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadiusMax,
            ),
          ),
        ),
      ),
    );
  }

  static Widget textButtonWithIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    WidgetStatesController? statesController,
    required Widget icon,
    required Widget label,
    double borderRadius = borderRadiusMax,
    EdgeInsets? padding,
    Color? bgColor,
    double? width,
  }) {
    return SizedBox(
      width: width,
      child: ElevatedButton.icon(
        icon: icon,
        label: label,
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: padding ??
              const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          disabledBackgroundColor: Colors.grey.shade400,
          backgroundColor: bgColor ?? Colors.white,
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1.5),
              borderRadius: BorderRadius.circular(borderRadius)),
        ),
      ),
    );
  }

  static Widget customIconButton({
    Key? key,
    double? iconSize,
    VisualDensity? visualDensity,
    EdgeInsetsGeometry? padding,
    AlignmentGeometry? alignment,
    double? splashRadius,
    Color? color,
    Color? focusColor,
    Color? hoverColor,
    Color? highlightColor,
    Color? splashColor,
    Color? disabledColor,
    required void Function()? onPressed,
    MouseCursor? mouseCursor,
    FocusNode? focusNode,
    bool autofocus = false,
    String? tooltip,
    bool? enableFeedback,
    BoxConstraints? constraints,
    ButtonStyle? style,
    bool? isSelected,
    Widget? selectedIcon,
    double? height,
    double? width,
    required Widget icon,
    Color? backgroundColor = Colors.white,
    double? borderRadius,
    bool? isBordered = false,
    bool? isSvg = false,
  }) {
    return Container(
      padding: padding ?? const EdgeInsets.all(8),
      height: height ?? 44,
      width: width ?? 44,
      decoration: BoxDecoration(
        color: onPressed == null ? disabledColor : backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius ?? 100),
        border: isBordered == true
            ? Border.all(
                color: AppColor.kNeutral100,
                width: 1,
              )
            : null,
      ),
      child: isSvg == true
          ? GestureDetector(
              onTap: onPressed,
              child: icon,
            )
          : IconButton(
              icon: icon,
              onPressed: onPressed,
              splashRadius: splashRadius,
              splashColor: splashColor,
              padding: padding ?? EdgeInsets.zero,
            ),
    );
  }

  static Widget textButtonWithTrailingIcon({
    Key? key,
    dynamic onPressed,
    String? buttonText,
    Icon? trailingIcon,
    Color? backgroundColor = Colors.white,
    double? fontSize,
    FontWeight? fontWeight,
    Color? titleColor,
    EdgeInsets? padding,
  }) {
    return TextButton(
        style: TextButton.styleFrom(
          padding: padding,
          backgroundColor: backgroundColor,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomText.ourText(
              buttonText ?? "",
              fontSize: fontSize,
              fontWeight: fontWeight ?? FontWeight.w300,
              color: titleColor ?? AppColor.kNeutral900,
            ),
            trailingIcon ?? const SizedBox.shrink()
          ],
        ));
  }
}
