//Class that will contain all Colors thought the App
import 'package:flutter/material.dart';

class AppColors {
  static List<Color> authGradient = [
    const Color(0xff120404),
    const Color(0xff5D0D0D),
  ];
  static List<Color> welcomeGradient = [
    Colors.transparent,
    Colors.black.withOpacity(0.2),
    Colors.black.withOpacity(0.5),
    Colors.black.withOpacity(0.6),
  ];

  static const Color lightestPrimaryColor = Color(0xffFFF8F3);
  static const Color primaryColor = Color(0xff1F5E3B);
  static const Color lightPrimaryColor = Color(0xFF2D9F5D);
  static const Color secondaryColor = Color(0xFFF4A91F);
  static const Color lightSecondaryColor = Color(0xFFF8C76D);
  static const Color whiteColor = Color(0xffFFFFFF);
  static const Color blackColor = Color(0xff00070D);
  static const Color subtitleColor = Color(0xff8A8A8A);
  static const Color offBlackColor = Color(0xff433D42);
  static const Color offWhite = Color(0xffE8E8E8);
  static const Color textLightGreyColor = Color(0xffB0B0B0);
  static const Color textDarkGreyColor = Color(0xffE8E8E8);
  static const Color navigationUnSelected = Color(0xff8C8C8C);
  static const Color textWhiteSubtitleColor = Color(0xffB7D7FF);
  static Color textInputBorderColor =
      const Color.fromRGBO(0, 0, 64, 0).withOpacity(0.25);
  static const Color greenColor = Color(0xff00A92F);
  static const redColor = Color(0xffFF0000);
  static const redAlertColor = Color.fromRGBO(0, 0, 26, 1);
  static const yellowColor = Color(0xffC19600);
  static const Color buttonSecondaryColor = Color(0xffF4F4F4);
  static const Color textfieldBgColor = Color(0xffF9FAFB);
  static const Color textfieldBorderColor = Color(0xffF1F3F9);
  static const Color textfieldHintTxtColor = Color(0xff6F767E);
  static const Color text300Color = Color(0xff010b13);
  static const Color lightGray = Color(0xffB5B5B5);
  static const Color lightGray2 = Color(0xff8A8A8A);
  static const Color bgGrey = Color(0xffF1F5F7);
  static const Color bgGray = Color(0xffE9EFF5);
}
