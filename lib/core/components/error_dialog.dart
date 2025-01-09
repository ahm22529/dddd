import 'package:e_coomer/core/components/custom_button.dart';
import 'package:e_coomer/core/localization/app_strings.dart';
import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Icon(
        Icons.warning_amber_rounded,
        color: AppColors.redAlertColor,
        size: 90,
      ),
      content: Text(
        AppStrings.someThingWentWrong.tr,
        textAlign: TextAlign.center,
        style: Get.textTheme.bodyLarge,
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: CustomButton(
                text: AppStrings.ok.tr,
                onTap: () {
                  Get.back();
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
