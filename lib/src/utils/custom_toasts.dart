import 'dart:io';

import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

import '../core/app/colors.dart';
import '../core/app/dimensions.dart';
import '../widgets/custom_text.dart';

class CustomToasts {
  static void showToast({
    ToastificationType? toastificationType,
    ToastificationStyle? toastificationStyle,
    Widget? title,
    String? description,
  }) {
    toastification.dismissAll();
    toastification.show(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      type: toastificationType ?? ToastificationType.info,
      style: ToastificationStyle.flat,
      title: title,
      description: description == null
          ? null
          : CustomText.ourText(
              description,
              fontSize: 14,
              color: AppColor.kNeutral700,
            ),
      alignment: Platform.isIOS ? Alignment.topCenter : Alignment.bottomCenter,
      autoCloseDuration: const Duration(seconds: 3),
      borderRadius: BorderRadius.circular(borderRadiusSecond),
      progressBarTheme: ProgressIndicatorThemeData(
        color: AppColor.kPrimary600,
      ),
      showProgressBar: false,
      backgroundColor: AppColor.kWhite,
      dragToClose: true,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          offset: const Offset(0, 2),
          blurRadius: 8,
        ),
      ],
      animationBuilder: (context, animation, alignment, child) =>
          FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
}

successToast({
  String? msg,
}) {
  CustomToasts.showToast(
    title: CustomText.ourText(
      msg ?? "Success",
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.green,
    ),
    // description: msg,
    toastificationType: ToastificationType.success,
  );
}

errorToast({
  String? msg,
}) {
  CustomToasts.showToast(
    title: CustomText.ourText(
      msg ?? "Error",
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.red,
    ),
    // description: msg,
    toastificationType: ToastificationType.error,
  );
}

warningToast({
  String? msg,
}) {
  CustomToasts.showToast(
    title: CustomText.ourText(
      msg ?? "Warning",
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.orange,
    ),
    // description: msg,
    toastificationType: ToastificationType.warning,
  );
}

infoToast({
  String? msg,
}) {
  CustomToasts.showToast(
    title: CustomText.ourText(
      msg ?? "Information",
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.blue,
    ),
    // description: msg,
    toastificationType: ToastificationType.info,
  );
}
