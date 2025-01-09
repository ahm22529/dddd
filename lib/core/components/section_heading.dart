import 'package:e_coomer/core/localization/app_strings.dart';
import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.onTap,
    required this.title,
    this.subtitleColor = AppColors.yellowColor,
    this.subTitle,
    this.icon = Icons.arrow_outward_outlined,
    this.iconColor = AppColors.yellowColor,
  });
  final String title;
  final String? subTitle;
  final Color subtitleColor;
  final IconData icon;
  final Color iconColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Text(
          //   title,
          //   style: CustomTextTheme.font18BlackBold.copyWith(
          //     fontWeight: FontWeight.w600,
          //   ),
          // ),
          GestureDetector(
            onTap: onTap,
            child: Row(
              children: [
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    subTitle ?? AppStrings.seeAll.tr,
                    // style: CustomTextTheme.font14HintRegular.copyWith(
                    //   color: subtitleColor,
                    //   fontWeight: FontWeight.w500,
                    //   fontSize: 14.sp,
                    // ),
                  ),
                ),
                4.horizontalSpace,
                Icon(
                  icon,
                  color: iconColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
