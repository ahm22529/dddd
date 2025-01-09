import 'package:e_coomer/core/localization/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomSearch extends StatelessWidget {
  final TextEditingController? controller;
  final Function? onEditingComplete;
  final void Function(String)? onChanged;

  final String? hint;
  final Color? fillColor;
  final Color? textColor;
  final bool withprefixIcon;
  final double? verticalPadding;

  // Function()? onEditingComplete;
  const CustomSearch({
    super.key,
    this.fillColor = Colors.white,
    this.controller,
    this.hint,
    this.verticalPadding,
    this.onEditingComplete,
    this.withprefixIcon = true,
    this.onChanged,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onFieldSubmitted: (value) {
        if (onEditingComplete != null) {
          onEditingComplete!();
        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hint ?? AppStrings.search.tr,
        contentPadding: EdgeInsets.symmetric(vertical: 0.h),
        fillColor: fillColor,
        hintStyle: Get.textTheme.bodyMedium!.copyWith(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: textColor ?? Colors.black),
        filled: true,
        // prefixIcon: Padding(
        //   padding: EdgeInsets.symmetric(
        //       horizontal: 16.w, vertical: verticalPadding ?? 8.h),
        //   child: CustomImageHandler(
        //     AppImages.search,
        //     width: 27.w,
        //     fit: BoxFit.cover,
        //     height: 27.h,
        //   ),
        // ),
        prefixIconConstraints: BoxConstraints(maxWidth: 70.w),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
