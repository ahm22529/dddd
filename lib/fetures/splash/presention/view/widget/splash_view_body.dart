import 'package:e_coomer/core/components/custom_image_handler.dart';
import 'package:e_coomer/core/services/cash.dart/cash_hepler.dart';
import 'package:e_coomer/core/services/cash.dart/cash_keys.dart';
import 'package:e_coomer/core/utiles/app_image.dart';
import 'package:e_coomer/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNaviagtion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomImageHandler(AppImages.imagesPlant),
          ],
        ),
        CustomImageHandler(AppImages.imagesLogo),
        CustomImageHandler(
          AppImages.imagesSplashBottom,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  void excuteNaviagtion() {
    bool isOnBoardingViewSeen =
        CashHelper.getData(CacheKeys.isseeOnboarding) ?? false;
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingViewSeen) {
        Get.offAllNamed(Routes.loginScreen);
        var isLoggedIn = CashHelper.getData(CacheKeys.isLogin);

        if (isLoggedIn) {
          Get.offAllNamed(Routes.homeScreen);
        } else {
          Get.offAllNamed(Routes.loginScreen);
        }
      } else {
        Get.offAllNamed(Routes.loginScreen);
        //  Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
