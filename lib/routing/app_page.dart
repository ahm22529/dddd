import 'package:e_coomer/fetures/auth/view/screen/login_screen.dart';
import 'package:e_coomer/fetures/auth/view/screen/sing_up_screen.dart';

import 'package:e_coomer/fetures/onbording/view/screen/onbording_screen.dart';
import 'package:e_coomer/fetures/splash/presention/view/screen/splash_screen.dart';
import 'package:e_coomer/routing/app_routes.dart';
import 'package:get/get.dart';

class AppPages {}

// String setInitialRoute() {
//   UserModel? user = UserService.to.currentUser?.value;
//   if (user == null) {
//     return Routes.loginScreen;
//   }
//   // debugPrint("user!.toJson()");
//   if (!(user.userViewModel?.emailVerified ?? true)) {
//     return Routes.verifyOtpScreen;
//   } else if (!(user.userViewModel?.phoneVerified ?? true)) {
//     return Routes.addMyPhoneScreen;
//   }
// //  else if (!(user.userViewModel?.roles)){
//   return CashHelper.getData(CacheKeys.userType) == 'Vendor'
//       ? Routes.serviceProviderHome
//       : Routes.clientHome;
// //  }
// }

appPages() => [
      GetPage(
        name: Routes.splashScreen,
        //  binding: AddPofaBinding(),
        page: () => const SplashScreen(),
      ),
      GetPage(
        transition: Transition.zoom,
        name: Routes.onboardingScreen,
        //  binding: AddPofaBinding(),
        page: () => const OnBoardingScreen(),
      ),
      GetPage(
        transition: Transition.zoom,
        name: Routes.loginScreen,
        //  binding: AddPofaBinding(),
        page: () => const LoginScreen(),
      ),
      GetPage(
        transition: Transition.zoom,
        name: Routes.registerScreen,
        //  binding: AddPofaBinding(),
        page: () => const SingUpScreen(),
      ),
      // GetPage(
      //   name: Routes.metricsScreen,
      //   //  binding: AddPofaBinding(),
      //   page: () => const MetricsScreen(),
      // ),
      // GetPage(
      //   name: Routes.detailsScreen,
      //   //  binding: AddPofaBinding(),
      //   page: () => const DetailsScreen(),
      // ),
    ];
