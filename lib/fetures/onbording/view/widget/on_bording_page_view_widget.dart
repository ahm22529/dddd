import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:e_coomer/core/utiles/app_image.dart';
import 'package:e_coomer/core/utiles/app_sstyel.dart';
import 'package:e_coomer/fetures/onbording/view/widget/on_bording_page_iteam-_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingPageview extends StatelessWidget {
  const OnBoardingPageview({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageviewItem(
          isVisible: true,
          image: AppImages.imagesPageViewItem1Image,
          backgroundImage: AppImages.imagesPageViewItem1BackgroundImage,
          subtitle:
              "Discover a unique shopping experience with FruitHUB. Explore our wide selection of premium fresh fruits and get the best deals and high quality",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome to",
                style: TextStyles.bold23,
              ),
              Text(
                '  HUB',
                style: TextStyles.bold23.copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
              Text(
                'Fruit',
                style: TextStyles.bold23.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        const PageviewItem(
          isVisible: false,
          image: AppImages.imagesPageViewItem2Image,
          backgroundImage: AppImages.imagesPageViewItem2BackgroundImage,
          subtitle:
              "We offer you the best carefully selected fruits. Check out the details, images, and reviews to ensure you choose the perfect fruit.",
          title: Text(
            "Search and Shop",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF0C0D0D),
              fontSize: 23,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        )
      ],
    );
  }
}
