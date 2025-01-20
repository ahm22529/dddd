import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:e_coomer/core/utiles/app_sstyel.dart';
import 'package:flutter/material.dart';

class ShowMore extends StatelessWidget {
  const ShowMore({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "الأكثر مبيعًا",
          style: TextStyles.f16700(context).copyWith(color: Colors.black),
        ),
        Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Text(
            "المزيد",
            style:
                TextStyles.f14600(context).copyWith(color: AppColors.lightGray),
          ),
        )
      ],
    );
  }
}
