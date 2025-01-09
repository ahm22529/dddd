import 'package:e_coomer/core/utiles/app_sstyel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomListtile extends StatelessWidget {
  const CustomListtile(
      {super.key,
      required this.data,
      required this.data1,
      required this.image});
  final String data, data1, image;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          data,
          style: TextStyles.f16700(context).copyWith(color: Colors.black),
        ),
        subtitle: Text(
          data1,
          style: TextStyles.f12400(context).copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
