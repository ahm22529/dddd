import 'package:e_coomer/core/components/build_custom_app_bar.dart';
import 'package:e_coomer/core/components/build_text_filed.dart';
import 'package:e_coomer/core/components/custom_button.dart';
import 'package:e_coomer/core/utiles/app_color.dart';
import 'package:e_coomer/core/utiles/app_image.dart';
import 'package:e_coomer/core/utiles/app_sstyel.dart';
import 'package:e_coomer/core/utiles/app_vaildation_function.dart';
import 'package:e_coomer/fetures/auth/logic/login_cubit/auth_cubit.dart';
import 'package:e_coomer/fetures/auth/view/widget/dont_have_account.dart';
import 'package:e_coomer/fetures/auth/view/widget/or_divder.dart';
import 'package:e_coomer/fetures/auth/view/widget/socail_media_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:io';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (context) => AuthCubit(),
      child: Builder(
        builder: (context) {
          final authCubit = context.read<AuthCubit>();
          return Scaffold(
            backgroundColor: AppColors.whiteColor,
            appBar: buildAppBar(
              showNotification: false,
              context,
              title: 'Login',
            ),
            body: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24),
              child: Form(
                key: authCubit.loginkey,
                child: Column(
                  children: [
                    TextFieldBuilder(
                      title: "Email",
                      bgColor: AppColors.whiteColor,
                      controller: authCubit.email,
                      validator: (email) =>
                          AppValidationFunctions.emailValidationFunction(email),
                    ),
                    TextFieldBuilder(
                      title: 'Password',
                      isPassword: true,
                      bgColor: AppColors.whiteColor,
                      controller: authCubit.password,
                    ),
                    SizedBox(height: 16.h),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyles.semiBold13
                            .copyWith(color: AppColors.primaryColor),
                      ),
                    ),
                    SizedBox(height: 32.h),
                    CustomButton(
                      text: "Login",
                      onTap: () {
                        if (authCubit.loginkey.currentState!.validate()) {
                          authCubit.login();
                        }
                      },
                    ),
                    SizedBox(height: 33.h),
                    const DontHaveAnAccountWidget(),
                    SizedBox(height: 33.h),
                    const OrDivider(),
                    const SizedBox(height: 16),
                    SocialLoginButton(
                      onPressed: () {
                        authCubit.loginWithGoogle();
                      },
                      image: AppImages.imagesGoogleIcon,
                      title: 'Login with Google',
                    ),
                    const SizedBox(height: 16),
                    Platform.isIOS
                        ? Column(
                            children: [
                              SocialLoginButton(
                                onPressed: () {},
                                image: AppImages.imagesApplIcon,
                                title: 'Login with Apple',
                              ),
                              const SizedBox(height: 16),
                            ],
                          )
                        : const SizedBox(),
                    SocialLoginButton(
                      onPressed: () {},
                      image: AppImages.imagesFacebookIcon,
                      title: 'Login with Facebook',
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
