import 'package:e_coomer/core/components/custom_image_handler.dart';
import 'package:e_coomer/core/utiles/app_sstyel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key,
      required this.image,
      required this.title,
      required this.onPressed});

  final String image;
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xFFDCDEDE), width: 1),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: ListTile(
          visualDensity: const VisualDensity(
            vertical: VisualDensity.minimumDensity,
          ),
          leading: CustomImageHandler(image),
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold16,
          ),
        ),
      ),
    );
  }
}
