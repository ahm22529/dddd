import 'package:e_coomer/fetures/onbording/view/widget/body_onbording_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  static const String routeName = 'onBoardingView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: OnBoardingViewBody()),
    );
  }
}
