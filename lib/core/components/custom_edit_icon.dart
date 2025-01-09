import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:flutter/material.dart';

class CustomEditIcon extends StatelessWidget {
  final Function()? onTap;
  const CustomEditIcon({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: 20,
        backgroundColor: AppColors.textDarkGreyColor.withOpacity(.2),
        // child: SvgPicture.asset(AppImages.edit, width: 20),
      ),
    );
  }
}
