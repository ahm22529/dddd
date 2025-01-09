import 'package:e_coomer/core/localization/app_strings.dart';
import 'package:e_coomer/core/localization/language_controller.dart';
import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ConfirmationAlertDialog extends StatelessWidget {
  const ConfirmationAlertDialog({
    super.key,
    required this.content,
    required this.onConfirm,
  });

  final String content;
  final Function onConfirm;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: Icon(
        Icons.check_circle,
        color: Get.theme.primaryColor,
        size: 100,
      ),
      title: LanguageController().currentLanguage.value!.languageCode == 'ar'
          ? RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "تم إضافة الطلب رقم",
                  style: Get.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: " $content ",
                  style: Get.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Get.theme.primaryColor,
                  ),
                ),
                TextSpan(
                  text: "بنجاح",
                  style: Get.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ]),
            )
          : RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: "Request Number",
                  style: Get.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                  ),
                ),
                TextSpan(
                  text: " #$content ",
                  style: Get.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                    color: Get.theme.primaryColor,
                  ),
                ),
                TextSpan(
                  text: "has been added successfully",
                  style: Get.textTheme.bodyLarge!.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ]),
            ),
      content: Text(
        LanguageController().currentLanguage.value!.languageCode == 'ar'
            ? "سوف تسقبل عروض أسعار الخدمة المطللوبة خلال 30 دقيقة من الآن"
            : "You will receive offers for the required service within 30 minutes from now.",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14.sp,
          color: AppColors.textLightGreyColor,
        ),
      ),
      //  Text(

      //         ? "تم إضافة الطلب رقم ${content} بنجاح"
      //         : "Request No. ${content} has been added successfully"),

      // Text(
      //   content,
      //   style: Get.textTheme.bodyLarge!.copyWith(
      //     fontWeight: FontWeight.w600,
      //   ),
      // ),

      // contentTextStyle: ,
      actions: [
        SizedBox(
          height: Get.height / 18,
          width: Get.width,
          child: ElevatedButton(
            onPressed: () => onConfirm(),
            child: Text(AppStrings.confirm.tr),
          ),
        ),
      ],
    );
  }
}
