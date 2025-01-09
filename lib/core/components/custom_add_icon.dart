import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:flutter/material.dart';

class CustomAddIcon extends StatelessWidget {
  final Function()? onTap;
  const CustomAddIcon({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: 20,
        backgroundColor: AppColors.secondaryColor.withOpacity(.2),
        child: const Icon(Icons.add),
      ),
    );
  }
}
