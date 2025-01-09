import 'package:e_coomer/core/components/custom_back_button.dart';
import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent(
      {super.key, required this.title, this.hasBackButton = true});
  final String title;
  final bool hasBackButton;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // toolbarHeight: 140.h,
      backgroundColor: AppColors.whiteColor,
      leading: hasBackButton
          ? Padding(
              padding: const EdgeInsetsDirectional.only(
                  start: 10, top: 10, bottom: 10),
              child: CustomBackButtonWidget(
                size: 16.sp,
                height: 50.sp,
                color: AppColors.bgGray,
              ),
            )
          : null,
      leadingWidth: 50.sp,
      title: Text(
        title,
        // style: CustomTextTheme.font18BlackBold
        // .copyWith(fontWeight: FontWeight.w600, fontSize: 18.sp),
      ),
      centerTitle: true,
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(15.h), child: const SizedBox()),
    );
  }
}
