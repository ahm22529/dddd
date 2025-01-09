import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_coomer/core/components/custom_button.dart';
import 'package:e_coomer/core/services/cash.dart/cash_hepler.dart';
import 'package:e_coomer/core/services/cash.dart/cash_keys.dart';
import 'package:e_coomer/fetures/onbording/view/widget/on_bording_page_view_widget.dart';
import 'package:e_coomer/routing/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../core/utiles/app_color.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;

  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageview(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: currentPage == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(.5),
          ),
        ),
        const SizedBox(
          height: 29,
        ),
        Visibility(
          visible: currentPage == 1 ? true : false,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: CustomButton(
              onTap: () {
                CashHelper.setData(CacheKeys.isseeOnboarding, true);
                Get.offAllNamed(Routes.loginScreen);
              },
              text: ' start Now',
            ),
          ),
        ),
        const SizedBox(
          height: 43,
        ),
      ],
    );
  }
}
