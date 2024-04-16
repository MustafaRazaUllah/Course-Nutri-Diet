import 'package:get/get.dart';
import 'package:nutri_diet/App/Auth/View%20Model/splash_viewmodel.dart';
import 'package:nutri_diet/App/Auth/View/splash.dart';
import 'package:nutri_diet/App/On%20Baording/View%20Model/onboarding_viewmodel.dart';
import 'package:nutri_diet/App/On%20Baording/View/onboarding.dart';
import 'package:nutri_diet/Utils/Routes/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.splashView,
      page: () =>  SplashView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<SplashViewModel>(
          () => SplashViewModel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.onBoardingView,
      page: () =>  OnBoardingView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<OnBoardingViewModel>(
          () => OnBoardingViewModel(),
        );
      }),
    ),
  ];
}
