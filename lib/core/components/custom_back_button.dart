import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButtonWidget extends StatelessWidget {
  final Color? color;
  final double? size;
  final double? width;
  final double? height;
  final Function? onTap;
  const CustomBackButtonWidget(
      {super.key, this.color, this.size, this.width, this.height, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap == null ? Get.back() : onTap!(),
      child: Container(
        width: 40.sp,
        height: 40.sp,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300, width: 1.3),
          color: color ?? Colors.white.withOpacity(.8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.arrow_back_ios_new,
        ),
      ),
    );
  }
}
