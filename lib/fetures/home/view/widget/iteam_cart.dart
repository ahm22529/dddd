import 'package:e_coomer/core/components/custom_image_handelar.dart';
import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:e_coomer/core/utiles/app_sstyel.dart';
import 'package:flutter/material.dart';

class IteamCart extends StatelessWidget {
  const IteamCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffF3F5F7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
          const Align(
            alignment: Alignment.center,
            child: CustomImageHandler(
                "assets/images/6-65920_tropical-watermelon-png-clipart-watermelon-png-removebg-preview 1.png"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(5),
            title: Text(
              "بطيخ",
              style: TextStyles.f14600(context).copyWith(color: Colors.black),
            ),
            subtitle: Row(
              children: [
                Text(
                  "20جنية / الكيلو",
                  style: TextStyles.f14600(context)
                      .copyWith(color: AppColors.secondaryColor),
                ),
                const Spacer(),
                const CircleAvatar(
                  backgroundColor: AppColors.lightPrimaryColor,
                  child: Icon(Icons.add, color: AppColors.whiteColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
