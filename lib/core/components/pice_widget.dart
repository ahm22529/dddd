import 'dart:developer';

import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:e_coomer/core/utiles/app_sstyel.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  final double orderReversed; // النسبة المئوية للـ "order reversed"
  final double orderDelivered; // النسبة المئوية للـ "order delivered"
  final double orderCompleted; // النسبة المئوية للـ "order complete"

  const IncomeChart({
    super.key,
    required this.orderReversed,
    required this.orderDelivered,
    required this.orderCompleted,
  });

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
          activeIndex =
              pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titleStyle: TextStyles.f14600(context),
          showTitle: true,
          title: ' Reversed)',
          value: widget.orderReversed,
          radius: activeIndex == 0 ? 60 : 50,
          color: Colors.red,
        ),
        PieChartSectionData(
          titleStyle: TextStyles.f12400(context),
          showTitle: true,
          title: ' Delivered )',
          value: widget.orderDelivered,
          radius: activeIndex == 1 ? 60 : 50,
          color: AppColors.lightPrimaryColor,
        ),
        PieChartSectionData(
          titleStyle: TextStyles.f12400(context),
          showTitle: true,
          title: ' Completed ',
          value: widget.orderCompleted,
          radius: activeIndex == 2 ? 60 : 50,
          color: AppColors.primaryColor,
        ),
      ],
    );
  }
}
