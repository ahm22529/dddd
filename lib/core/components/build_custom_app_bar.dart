import 'package:e_coomer/core/components/notifaction_widget.dart';
import 'package:e_coomer/core/utiles/app_sstyel.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(context,
    {required String title,
    bool showBackButton = true,
    bool showNotification = true}) {
  return AppBar(
    backgroundColor: Colors.white,
    actions: [
      Visibility(
        visible: showNotification,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: NotificationWidget(),
        ),
      )
    ],
    leading: Visibility(
      visible: showBackButton,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_ios_new,
        ),
      ),
    ),
    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyles.bold19,
    ),
  );
}
