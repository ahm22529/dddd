import 'package:e_coomer/core/components/custom_button.dart';
import 'package:e_coomer/core/components/custom_image_handler.dart';
import 'package:e_coomer/core/localization/app_strings.dart';
import 'package:e_coomer/core/utiles/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void showCustomAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageHandler(AppImages.imagesCheck),
            SizedBox(height: 15.h),
            // Image.asset(AppImages.coupon),
            //   SizedBox(height: 10.h),
            Text(
              AppStrings.sucessActivate.tr,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 18.0),
            Text(
              AppStrings.canLogin.tr,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 18.h),
            CustomButton(
              text: AppStrings.registerMerchantData.tr,
              onTap: () {
                //     Get.toNamed(Routes.userdatascreen);
              },
              borderRadius: 17.r,
            ),
            SizedBox(height: 16.h),
          ],
        ),
      );
    },
  );
}
