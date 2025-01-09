import 'package:e_coomer/core/components/custom_image_handler.dart';
import 'package:e_coomer/core/services/cash.dart/cash_hepler.dart';
import 'package:e_coomer/core/services/cash.dart/cash_keys.dart';
import 'package:e_coomer/core/utiles/app_sstyel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageviewItem extends StatelessWidget {
  const PageviewItem(
      {super.key,
      required this.image,
      required this.backgroundImage,
      required this.subtitle,
      required this.title,
      required this.isVisible});

  final String image, backgroundImage;
  final String subtitle;
  final Widget title;

  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: CustomImageHandler(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: CustomImageHandler(
                  image,
                ),
              ),
              Visibility(
                visible: isVisible,
                child: GestureDetector(
                  onTap: () {
                    CashHelper.setData(CacheKeys.isseeOnboarding, true);

                    // Navigator.of(context).pushReplacementNamed(
                    //   SigninView.routeName,
                    // );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'تخط',
                      style: TextStyles.regular13.copyWith(
                        color: const Color(0xFF949D9E),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 60.h,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 37,
          ),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold13.copyWith(
              color: const Color(0xFF4E5456),
            ),
          ),
        )
      ],
    );
  }
}
