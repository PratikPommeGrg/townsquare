import 'package:flutter/material.dart';

import '../core/app/colors.dart';
import '../core/app/dimensions.dart';

void showCustomBottomSheet({
  required BuildContext context,
  required WidgetBuilder widgetBuilder,
  VoidCallback? onClose,
}) {
  showModalBottomSheet(
    useRootNavigator: true,
    elevation: 0.0,
    isScrollControlled: true,
    isDismissible: true,
    context: context,
    backgroundColor: Colors.transparent,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          // topLeft: Radius.circular(24),
          // topRight: Radius.circular(24),
          ),
    ),
    builder: (context) => Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColor.kWhite,
          borderRadius: BorderRadius.circular(borderRadiusThird),
        ),
        width: appWidth(context),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vSizedBox1,
              Center(
                child: Container(
                  width: 48,
                  height: 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.kNeutral200,
                  ),
                ),
              ),
              vSizedBox1,
              widgetBuilder(context),
            ],
          ),
        ),
      ),
    ),
  ).whenComplete(
    () {
      if (onClose != null) {
        onClose();
      }
    },
  );
}
