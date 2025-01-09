import 'package:e_coomer/core/components/notifaction_widget.dart';
import 'package:e_coomer/core/utiles/app_sstyel.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    actions: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: NotificationWidget(),
      ),
    ],
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: const Text(
      'الأكثر مبيعًا',
      textAlign: TextAlign.center,
      style: TextStyles.bold19,
    ),
  );
}
