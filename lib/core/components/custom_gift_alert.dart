import 'package:e_coomer/core/components/custom_button.dart';
import 'package:e_coomer/core/localization/app_strings.dart';
import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void showCustomGiftAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              AppStrings.newGift.tr,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.h),
            // Image.asset(AppImages.coupon),
            SizedBox(height: 10.h),
            Text(
              AppStrings.giftCoupon2.tr,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
            ),
            11.verticalSpace,
            Container(
              decoration: BoxDecoration(
                color: AppColors.bgGray,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: const ListTile(
                // leading: Image.asset(AppImages.gift),
                title: Text('Ahmed Hassan'),
                subtitle: Text('+20 1057393720'),
              ),
            ),
            SizedBox(height: 20.h),
            CustomButton(
              text: AppStrings.useIt.tr,
              onTap: () {},
              borderRadius: 17.r,
            ),
            SizedBox(height: 16.h),
            CustomButton(
              text: AppStrings.later.tr,
              onTap: () => Get.back(),
              color: AppColors.blackColor,
              bordereColor: const Color(0xffE9EFE5),
              borderRadius: 17.r,
              backgroundColor: AppColors.bgGray,
            ),
          ],
        ),
      );
    },
  );
}
