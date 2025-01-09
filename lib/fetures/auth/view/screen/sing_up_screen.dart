import 'dart:developer';

import 'package:e_coomer/core/components/build_custom_app_bar.dart';
import 'package:e_coomer/core/components/build_text_filed.dart';
import 'package:e_coomer/core/components/custom_button.dart';
import 'package:e_coomer/core/components/custom_check_box.dart';
import 'package:e_coomer/core/components/toast_manager.dart';
import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:e_coomer/core/utiles/app_sstyel.dart';
import 'package:e_coomer/core/utiles/app_vaildation_function.dart';
import 'package:e_coomer/fetures/auth/logic/sing_up/singup_cubit.dart';
import 'package:e_coomer/fetures/auth/view/widget/have_an_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SingupCubit>(
      create: (context) => SingupCubit(),
      child: Builder(
        builder: (context) {
          final authCubit = context.read<SingupCubit>();
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: buildAppBar(
              showNotification: false,
              context,
              title: "حساب جديد",
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Form(
                  key: context.read<SingupCubit>().globalKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFieldBuilder(
                        title: "الاسم كامل",
                        bgColor: AppColors.whiteColor,
                        controller: authCubit.nameController,
                        validator: (name) =>
                            AppValidationFunctions.stringValidationFunction(
                                name, "الاسم كامل"),
                      ),
                      const SizedBox(height: 16),
                      TextFieldBuilder(
                        title: "البريد الإلكتروني",
                        bgColor: AppColors.whiteColor,
                        controller: authCubit.emailController,
                        validator: (email) =>
                            AppValidationFunctions.emailValidationFunction(
                                email),
                      ),
                      const SizedBox(height: 16),
                      TextFieldBuilder(
                        title: "كلمة المرور",
                        isPassword: true,
                        bgColor: AppColors.whiteColor,
                        controller: authCubit.passwordController,
                        validator: (password) =>
                            AppValidationFunctions.passwordValidationFunction(
                                password),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          BlocBuilder<SingupCubit, SingupState>(
                            builder: (context, state) {
                              return CustomCheckbox(
                                value: authCubit.accept,
                                onChanged: (value) {
                                  log(value.toString());
                                  context
                                      .read<SingupCubit>()
                                      .updateAccept(value!);
                                },
                              );
                            },
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        'من خلال إنشاء حساب ، فإنك توافق على ',
                                    style: TextStyles.semiBold13.copyWith(
                                      color: const Color(0xFF949D9E),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'الشروط والأحكام',
                                    style: TextStyles.semiBold13.copyWith(
                                      color: AppColors.lightPrimaryColor,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: ' ',
                                    style: TextStyles.semiBold13,
                                  ),
                                  TextSpan(
                                    text: 'الخاصة',
                                    style: TextStyles.semiBold13.copyWith(
                                      color: AppColors.lightPrimaryColor,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: ' ',
                                    style: TextStyles.semiBold13,
                                  ),
                                  TextSpan(
                                    text: 'بنا',
                                    style: TextStyles.semiBold13.copyWith(
                                        color: AppColors.lightPrimaryColor),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.right,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 24),
                      CustomButton(
                          text: "إنشاء حساب جديد",
                          onTap: () {
                            if (context
                                    .read<SingupCubit>()
                                    .globalKey
                                    .currentState!
                                    .validate() &&
                                context.read<SingupCubit>().accept == true) {
                              context.read<SingupCubit>().singUp();
                            } else {
                              ToastManager.showError(
                                  "يجب الموافقه ع الشروط والاحكام ");
                            }
                          }),
                      SizedBox(
                        height: 26.h,
                      ),
                      const Center(child: HaveAnAccountWidget()),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
