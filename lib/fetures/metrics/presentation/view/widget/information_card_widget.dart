
import 'package:e_coomer/core/utiles/app_sstyel.dart';
import 'package:flutter/material.dart';

class InformatiionCard extends StatelessWidget {
  const InformatiionCard({
    super.key,
    required this.titel,
    required this.subtitel,
  });
  final String titel, subtitel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: const Color(0xffFFFFFF).withOpacity(.1)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                titel,
                style: TextStyles.f14600(context).copyWith(
                  color: Colors.white,
                ),
              ),
              Text(subtitel,
                  style: TextStyles.f14600(context).copyWith(
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
