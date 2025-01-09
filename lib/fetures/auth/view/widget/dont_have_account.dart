import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:e_coomer/core/utiles/app_sstyel.dart';
import 'package:e_coomer/routing/app_routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.registerScreen);
      },
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Don't have an account?",
              style: TextStyles.semiBold16.copyWith(
                color: const Color(0xFF949D9E),
              ),
            ),
            TextSpan(
              text: ' ',
              style: TextStyles.semiBold16.copyWith(
                color: const Color(0xFF616A6B),
              ),
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // Get.toNamed(Routes) ;
                },
              text: 'Create an account',
              style:
                  TextStyles.semiBold16.copyWith(color: AppColors.primaryColor),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
