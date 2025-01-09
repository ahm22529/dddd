import 'package:e_coomer/core/components/custom_button.dart';
import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SuccessDialog extends StatelessWidget {
  final String orderId;

  const SuccessDialog({super.key, required this.orderId});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10.h),
            Icon(
              Icons.check_circle,
              color: Colors.blue,
              size: 50.sp,
            ),
            SizedBox(height: 20.h),
            Text(
              'تم إضافة الطلب رقم',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5.h),
            Text(
              '#$orderId',
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.h),
            Text(
              'سوف تسهيل عروض أسعار الخدمة المطلوبة\nخلال 30 دقيقة من الآن',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.h),
            CustomButton(
                text: ' حسنا',
                onTap: () {
                  Get.back();
                },
                color: AppColors.whiteColor),
          ],
        ),
      ),
    );
  }
}
