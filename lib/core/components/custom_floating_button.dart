import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 30, end: 20),
      child: FloatingActionButton(
        elevation: 10,
        shape: const CircleBorder(),
        backgroundColor: AppColors.primaryColor,
        onPressed: () {},
        child: const Icon(Icons.add, color: AppColors.whiteColor),
      ),
    );
  }
}
