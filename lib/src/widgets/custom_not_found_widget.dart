import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../core/app/colors.dart';
import '../core/app/dimensions.dart';
import 'custom_button.dart';
import 'custom_text.dart';

class CustomNotFoundWidget extends StatelessWidget {
  const CustomNotFoundWidget({
    super.key,
    this.image,
    this.title,
    this.desc,
    this.showRefresh = false,
    this.showIcon = true,
    this.normalImage,
    this.onRefresh,
    this.imageHeight,
    this.imageWidth,
    this.btnText,
  });
  final String? image;
  final String? title;
  final String? desc;
  final String? btnText;
  final bool? showRefresh;
  final Function()? onRefresh;
  final bool? showIcon;
  final bool? normalImage;
  final double? imageHeight;
  final double? imageWidth;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SizedBox(
          width: appWidth(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (image != null && (image ?? '').isNotEmpty) ...[
                if (showIcon == true)
                  Skeleton.shade(child: SvgPicture.asset(image ?? '')),
                if (normalImage == true)
                  Image.asset(
                    image ?? '',
                    height: imageHeight ?? 120,
                    width: imageWidth ?? 120,
                    fit: BoxFit.contain,
                  ),
              ],
              // CustomNetworkImage(
              //   imageUrl: image ?? '',
              //   height: 120,
              //   width: 120,
              //   boxFit: BoxFit.contain,
              // ),
              vSizedBox2,
              CustomText.ourText(
                title ?? '',
                color: AppColor.kNeutral800,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
              vSizedBox0,
              CustomText.ourText(
                desc ?? '',
                color: AppColor.kNeutral600,
                fontSize: 14,
                textAlign: TextAlign.center,
              ),
              vSizedBox1,
              Visibility(
                visible: showRefresh == true,
                child:
                    // CustomButton.elevatedButton(
                    //   refreshText,
                    //   onRefresh ?? () {},
                    //   fontSize: 15.0,
                    //   width: appWidth(context) * 0.4,
                    // ),
                    FittedBox(
                  child: CustomButton.textButton(
                    btnText ?? '',
                    onRefresh,
                    fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                    fontWeight: FontWeight.w500,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 16,
                    ),
                    isBordered: true,
                    borderWidth: 1.5,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
