import 'package:device_preview/device_preview.dart';
import 'package:e_coomer/core/localization/language_localization.dart';
import 'package:e_coomer/core/services/cash.dart/cash_hepler.dart';
import 'package:e_coomer/core/services/cash.dart/cash_keys.dart';
import 'package:e_coomer/core/services/custom_bloc_observed/custom_bloc_observed.dart';
import 'package:e_coomer/firebase_options.dart';
import 'package:e_coomer/routing/app_page.dart';
import 'package:e_coomer/routing/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CashHelper.init();
  Bloc.observer = CustomBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // await Get.putAsync(() => UserService().init());
  await ScreenUtil.ensureScreenSize();
  var token = CashHelper.getData(CacheKeys.userModel);
  //await LocationService().determinePosition();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // UserModel? userModel = CashHelper.getData(CacheKeys.userModel) == null
  //     ? null
  //     : UserModel.fromJson(
  //         json.decode(CashHelper.getData(CacheKeys.userModel)));
  runApp(
      // baseproject(token: token),
      DevicePreview(
          enabled: true,
          builder: (context) => const EcommerApp(
              // token: userModel
              )));
}

class EcommerApp extends StatelessWidget {
  const EcommerApp({
    super.key,
    // this.token
  });
  // final UserModel? token;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 766),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'baseproject',
          theme: ThemeData(
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                backgroundColor: Colors.white),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
            appBarTheme: AppBarTheme(
                surfaceTintColor: Colors.transparent, toolbarHeight: 50.h),
            useMaterial3: true,
            fontFamily: 'Cairo',
          ),
          locale: const Locale('ar'),
          translations: LanguageLocalization(),
          initialRoute: Routes.splashScreen,
          getPages: appPages(),
        );
      },
    );
  }
}
