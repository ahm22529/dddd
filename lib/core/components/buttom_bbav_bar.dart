import 'package:e_coomer/core/localization/app_strings.dart';
import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:e_coomer/fetures/metrics/presentation/logic/loaddata/loaddata_cubit.dart';
import 'package:e_coomer/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // استيراد Bloc

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

Widget buildBottomNavBarWidget(int currentIndex) {
  return BlocBuilder<LoaddataCubit, LoaddataState>(
    builder: (context, state) {
      return BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          switch (index) {
            case 0:
              Get.toNamed(Routes.metricsScreen);
              break;
            case 1:
              Navigator.of(context).pushNamed(
                Routes.detailsScreen,
                arguments: context
                    .read<LoaddataCubit>()
                    .sucesdata, // استخدام الحالة هنا
              );
              break;
          }
        },
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        iconSize: 20,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          fontSize: 12.sp,
          color: AppColors.lightPrimaryColor,
        ),
        unselectedItemColor: const Color(0xff8A8A8A),
        selectedItemColor: AppColors.secondaryColor,
        items: [
          BottomNavigationBarItem(
            icon: IteamNavBar(
              isactive: currentIndex == 0,
              image: "assets/images/profit 02.svg",
              titel: AppStrings.metrices.tr,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: IteamNavBar(
              isactive: currentIndex == 1,
              image: "assets/images/Frame 16484.svg",
              titel: AppStrings.graph.tr,
            ),
            label: "",
          ),
        ],
      );
    },
  );
}

class IteamNavBar extends StatelessWidget {
  const IteamNavBar({
    super.key,
    required this.isactive,
    required this.image,
    required this.titel,
  });

  final bool isactive;
  final String image, titel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Active indicator line
        Container(
          width: 50.w,
          height: 4,
          decoration: BoxDecoration(
            color: isactive ? AppColors.lightPrimaryColor : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(height: 3),
        // Icon and Text wrapped in a Container
        Container(
          decoration: BoxDecoration(
            color: isactive ? const Color(0xffFFF8F3) : Colors.transparent,
            borderRadius:
                BorderRadius.circular(8), // To add rounded corners if needed
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon with conditional color change based on active state
              SvgPicture.asset(
                image,
                colorFilter: ColorFilter.mode(
                  isactive
                      ? AppColors.lightPrimaryColor
                      : const Color(0xff8A8A8A),
                  BlendMode.srcIn,
                ),
                width: 24, // Control icon size
                height: 24,
              ),
              const SizedBox(height: 4),
              // Title with conditional text color
              Text(
                titel,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: isactive
                      ? AppColors.lightPrimaryColor
                      : const Color(0xff8A8A8A),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
