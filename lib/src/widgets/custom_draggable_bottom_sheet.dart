import 'package:flutter/material.dart';

import '../core/app/colors.dart';
import '../core/app/dimensions.dart';

void showCustomDraggableBottomSheet({
  required BuildContext context,
  Function()? onClose,
  required Function(ScrollController)? widget,
}) {
  showModalBottomSheet(
    useRootNavigator: true,
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    isScrollControlled: true,
    isDismissible: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    builder: (context) {
      return Container(
        padding: EdgeInsets.only(bottom: keyboardHeight(context)),
        clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColor.kWhite,
          borderRadius: BorderRadius.circular(borderRadiusThird),
        ),
        width: appWidth(context),
        child: DraggableScrollableSheet(
            initialChildSize: 0.6,
            expand: false,
            maxChildSize: 0.9,
            minChildSize: 0.5,
            builder: (context, scrollController) =>
                widget == null ? Container() : widget(scrollController)),
      );
    },
  ).whenComplete(
    () {
      if (onClose != null) {
        onClose();
      }
    },
  );
}
