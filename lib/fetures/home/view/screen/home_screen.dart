import 'package:e_coomer/core/components/company_bottom_nav_bar_widget.dart';
import 'package:e_coomer/core/components/custom_image_handelar.dart';
import 'package:e_coomer/core/components/notifaction_widget.dart';
import 'package:e_coomer/core/components/search_text_filed.dart';
import 'package:e_coomer/core/components/show_more.dart';
import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:e_coomer/core/utiles/app_sstyel.dart';
import 'package:e_coomer/fetures/home/view/widget/iteam_cart.dart';
import 'package:e_coomer/fetures/home/view/widget/silder_images.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNavBarWidget(0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            ListTile(
              trailing: const NotificationWidget(),
              subtitle: Text(
                "أحمد مصطفي",
                style: TextStyles.f16600(context)
                    .copyWith(color: AppColors.blackColor, fontSize: 17),
              ),
              title: Text(
                "صباح الخير !..",
                style: TextStyles.f14600(context)
                    .copyWith(color: AppColors.lightGray2),
              ),
              leading: const CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.lightPrimaryColor,
                child: CustomImageHandler(
                  "assets/images/Ellipse 11.png",
                ),
              ),
            ),
            const SearchTextField(),
            const ImageSlider(
              img: ["assets/images/Group 36781.png"],
            ),
            const ShowMore(),
            Align(
              alignment: Alignment.center,
              child: Wrap(
                  spacing: 5,
                  direction: Axis.horizontal,
                  children: List.generate(
                      5,
                      (index) => SizedBox(
                          width: MediaQuery.of(context).size.width * .42,
                          child: const IteamCart()))),
            )
          ],
        ),
      ),
    );
  }
}
