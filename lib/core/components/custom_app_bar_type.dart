import 'package:e_coomer/core/components/custom_search.dart';
import 'package:e_coomer/core/localization/app_strings.dart';
import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:e_coomer/routing/app_routes.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomAppBarType extends StatelessWidget {
  const CustomAppBarType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.sp),
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        // image: DecorationImage(
        //   image: AssetImage(AppImages.home),
        //   fit: BoxFit.fitWidth,
        // ),
        borderRadius: BorderRadiusDirectional.only(
          bottomStart: Radius.circular(20),
          bottomEnd: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // GestureDetector(
                  //   onTap: () => Get.toNamed(Routes.cart),
                  //   child: Image.asset(
                  //     AppImages.cart,
                  //     width: 50.w,
                  //     height: 50.h,
                  //   ),
                  // ),
                  SizedBox(width: 10.w),
                  // GestureDetector(
                  //   onTap: () {
                  //     Get.toNamed(Routes.notification);
                  //   },
                  //   child: Image.asset(
                  //     AppImages.notification,
                  //     width: 50.w,
                  //     height: 50.h,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              // Get.toNamed(Routes.search);
            },
            child: AbsorbPointer(
              absorbing: true,
              child: CustomSearch(
                hint: AppStrings.searchForProduct.tr,
                textColor: const Color(0xffB5B5B5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
