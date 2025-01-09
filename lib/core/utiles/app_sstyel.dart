import 'package:e_coomer/core/utiles/size_config.dart';
import 'package:flutter/material.dart';

abstract class TextStyles {
  static TextStyle f14600(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.w600,
        color: Colors.white);
  }

  static TextStyle f32600(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 32),
        fontWeight: FontWeight.w600,
        color: Colors.white);
  }

  static TextStyle f12400(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        fontWeight: FontWeight.w600,
        color: Colors.white);
  }

  static TextStyle f18600(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 19),
        fontWeight: FontWeight.w600,
        color: Colors.white);
  }

  static TextStyle f16600(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w600,
        color: Colors.white);
  }

  static TextStyle f16700(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w700,
        color: Colors.white);
  }

  static const TextStyle bold13 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 13,
  );
  static const TextStyle bold23 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 23,
  );

  static const TextStyle semiBold13 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 13,
  );

  static const TextStyle regular13 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 13,
  );

  static const TextStyle bold16 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static const TextStyle bold19 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 19,
  );

  static const TextStyle semiBold16 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  static const TextStyle bold28 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 28,
  );

  static const TextStyle regular22 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 22,
  );

  static const TextStyle semiBold11 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 11,
  );

  static const TextStyle medium15 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );

  static const TextStyle regular26 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 26,
  );

  static const TextStyle regular16 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );

  static const TextStyle regular11 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 11,
  );
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
