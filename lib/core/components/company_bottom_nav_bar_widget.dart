import 'package:e_coomer/core/components/custom_image_handelar.dart';
import 'package:e_coomer/core/localization/app_strings.dart';
import 'package:e_coomer/core/utiles/app_image.dart';
import 'package:e_coomer/core/utiles/app_sstyel.dart';
import 'package:e_coomer/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

Widget buildBottomNavBarWidget(int currentIndex) {
  return BottomNavigationBar(
    currentIndex: currentIndex,
    onTap: (index) {
      switch (index) {
        case 0:
          Get.offNamed(Routes.homeScreen);
          break;
        case 1:
          Get.offNamed(
            Routes.homeScreen,
          );
          break;
        case 2:
          Get.offNamed(Routes.homeScreen);
          break;
        case 3:
          Get.offNamed(Routes.homeScreen);
          break;
      }
    },
    showUnselectedLabels: true,
    selectedFontSize: 12,
    unselectedFontSize: 12,
    iconSize: 20,
    elevation: 0,
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: true,
    // selectedIconTheme:
    //     const IconThemeData(color: AppColors.secondaryColor, size: 20),
    selectedLabelStyle: TextStyles.semiBold13
        .copyWith(color: AppColors.lightGray)
        .copyWith(color: AppColors.secondaryColor),
    unselectedItemColor: const Color(0xff2C262C),

    selectedItemColor: AppColors.secondaryColor,
    items: [
      BottomNavigationBarItem(
        icon: IteamNavBar(
          notactiveimage: "assets/images/home.svg",
          isactive: currentIndex == 0,
          imageactive: currentIndex == 0
              ? "assets/images/home_bold.svg"
              : 'assets/svg/home.svg',
          titel: "الرئيسية",
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: IteamNavBar(
          notactiveimage: "assets/images/element-3.svg",
          isactive: currentIndex == 1,
          imageactive: "assets/images/x.svg",
          titel: "المنتجات",
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: IteamNavBar(
          notactiveimage: "assets/images/shopping-cart.png",
          isactive: currentIndex == 2,
          imageactive: "assets/images/shopping-cart_bolf.svg",
          titel: 'سلة التسوق',
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: IteamNavBar(
          notactiveimage: "assets/images/user.png",
          isactive: currentIndex == 3,
          imageactive: "assets/images/user_bold.svg",
          titel: 'حسابي',
        ),
        label: "",
      ),
    ],
  );
}

class IteamNavBar extends StatelessWidget {
  final bool isactive;
  final String imageactive, notactiveimage;
  final String titel;

  const IteamNavBar({
    super.key,
    required this.isactive,
    required this.imageactive,
    required this.notactiveimage,
    required this.titel,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        decoration: BoxDecoration(
            color: isactive ? Color(0xffEEEEEE) : Colors.transparent,
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              isactive
                  ? CircleAvatar(
                      backgroundColor: AppColors.primaryColor,
                      child: SvgPicture.asset(
                        "assets/images/home_bold.svg",
                        colorFilter: ColorFilter.mode(
                          isactive ? AppColors.whiteColor : AppColors.bgGray,
                          BlendMode.srcIn,
                        ),
                      ))
                  : CustomImageHandler(notactiveimage, height: 20, width: 20),
              SizedBox(
                width: 5.w,
              ),
              if (isactive)
                Text(
                  titel,
                  style: TextStyles.f14600(context).copyWith(
                      color: isactive ? AppColors.primaryColor : Colors.black),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
