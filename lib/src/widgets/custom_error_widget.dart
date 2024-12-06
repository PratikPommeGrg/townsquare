import 'package:flutter/material.dart';

import '../core/app/dimensions.dart';
import '../core/app/texts.dart';
import 'custom_button.dart';
import 'custom_text.dart';

class CustomErrorWidget extends StatelessWidget {
  CustomErrorWidget({
    super.key,
    this.error,
    this.showAction = false,
    this.actionText = tryAgainText,
    this.ontap,
    this.autoHeight = false,
  });
  String? error;
  bool showAction;
  String actionText;
  Function()? ontap;
  bool? autoHeight;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: autoHeight ?? false ? null : 110,
        child: ListTile(
          dense: true,
          minLeadingWidth: 0,
          isThreeLine: true,
          title: CustomText.ourText(
            informationText,
            fontWeight: FontWeight.bold,
          ),
          leading: const Icon(
            Icons.error_outline,
            color: Colors.grey,
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText.ourText(
                "$error",
                fontSize: 13,
                color: Colors.grey,
              ),
              vSizedBox1,
              if (showAction) ...[
                SizedBox(
                  width: appWidth(context),
                  child: CustomButton.textButton(
                    actionText,
                    ontap ?? () {},
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    titleColor: Colors.red,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
