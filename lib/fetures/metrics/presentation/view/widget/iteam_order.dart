import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:e_coomer/core/utiles/app_image.dart';
import 'package:e_coomer/core/utiles/app_sstyel.dart';
import 'package:e_coomer/fetures/metrics/data/model/Iteam_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/components/custom_image_handelar.dart';

class ItaemOrder extends StatelessWidget {
  const ItaemOrder({
    super.key,
    required this.iteam,
  });
  final Item iteam;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffF3F5F7),
          border: Border.all(color: AppColors.bgGrey),
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff000000).withOpacity(0.25),
              blurRadius: 4,
              spreadRadius: -2,
              offset: const Offset(0, 4),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: CustomImageHandler(AppImages.prouduct)),
            Row(
              children: [
                Text(iteam.company,
                    style: TextStyles.f16600(context)
                        .copyWith(color: Colors.black)),
                const Spacer(),
                Text(
                  iteam.price.toString(),
                  style: TextStyles.f16600(context)
                      .copyWith(color: AppColors.primaryColor),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Wrap(
              children: List.generate(
                iteam.tags.length > 4 ? 4 : iteam.tags.length,
                (index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: AppColors.lightPrimaryColor),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        iteam.tags[index],
                        style: TextStyles.f14600(context)
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
