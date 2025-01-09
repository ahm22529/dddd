import 'package:e_coomer/core/components/custom_button.dart';
import 'package:e_coomer/core/components/text_field_component.dart';
import 'package:e_coomer/core/localization/app_strings.dart';
import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

customAlertDailog({
  String? title,
  String? buttonText1,
  String? buttonText2,
  void Function()? onTap,
  bool? withTxtFiled,
  dynamic Function(String?)? onchange,
}) {
  Get.dialog(
    SizedBox(
      child: AlertDialog(
        title: Text(title ?? ''),
        actionsAlignment: MainAxisAlignment.center,
        content: withTxtFiled != null
            ? TextFieldComponent(
                hint: AppStrings.typePassword.tr,
                onChange: onchange,
                hasShowPasswordIcon: true,
              )
            : null,
        actions: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.whiteColor,
                border: Border.all(color: AppColors.redColor)),
            height: Get.height / 18,
            width: Get.width * .27,
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Center(
                child: Text(
                  buttonText2 ?? '',
                  maxLines: 1,
                  style: const TextStyle(color: AppColors.redColor),
                ),
              ),
            ),
          ),
          SizedBox(
            height: Get.height / 18,
            width: Get.width * .27,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0, backgroundColor: AppColors.redColor),
              onPressed: onTap,
              child: FittedBox(
                  child: Text(
                buttonText1 ?? '',
              )),
            ),
          ),
        ],
      ),
    ),
  );
}

successDailog(
    {String? title,
    String? subTitle,
    String? buttonText1,
    void Function()? onTap}) {
  Get.dialog(AlertDialog(
    title: const Icon(
      Icons.check_circle,
      color: AppColors.primaryColor,
      size: 90,
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title ?? '',
          textAlign: TextAlign.center,
          style: Get.textTheme.bodyLarge,
        ),
        const SizedBox(height: 4),
        Text(
          subTitle ?? '',
          textAlign: TextAlign.center,
          style: Get.textTheme.bodySmall!.copyWith(
              color: const Color(0xff8A8A8A),
              fontSize: 14,
              fontWeight: FontWeight.w600),
        ),
      ],
    ),
    actions: [
      CustomButton(
        text: buttonText1 ?? "",
        onTap: () {
          if (onTap != null) onTap();
        },
      ),
    ],
  ));
}
