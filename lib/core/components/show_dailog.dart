import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

void showMyDialog({
  String? title,
  String? subTitle,
  Color? txtColor1,
  Color? txtColor2,
  void Function()? onTap,
  void Function()? onClose,
}) {
  Get.defaultDialog(
    contentPadding: const EdgeInsets.all(16),
    content: Column(
      children: [
        //const Icon(Icons.delete, color: AppColors.redColor),
        // SvgPicture.asset(AppImages .delete),
        const SizedBox(height: 10),
        Text(
          title ?? "",
          style: Get.textTheme.bodyLarge!,
        ),
        const SizedBox(height: 8),
        Text(subTitle ?? "",
            style: Get.textTheme.bodySmall!.copyWith(fontSize: 10)),
      ],
    ),
    title: '',
    titlePadding: EdgeInsets.zero,
    backgroundColor: Colors.white,
    radius: 10.0,
    actions: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.whiteColor.withOpacity(.8), // Text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // Button border radius
          ),
        ),
        onPressed: () {
          if (onClose != null) {
            onClose();
          } else {
            Get.back();
          }
        },
        child: Text("Close",
            style: Get.textTheme.bodySmall!.copyWith(color: txtColor1)),
      ),
      ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // Button border radius
          ),
        ),
        child: Text("Delete",
            style: Get.textTheme.bodySmall!.copyWith(color: txtColor2)),
      ),
    ],
  );
}
