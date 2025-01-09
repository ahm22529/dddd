import 'package:e_coomer/core/components/custom_image_handler.dart';
import 'package:e_coomer/core/utiles/app_image.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const ShapeDecoration(
        color: Color(0xFFEEF8ED),
        shape: OvalBorder(),
      ),
      child: CustomImageHandler(AppImages.imagesNotification),
    );
  }
}
