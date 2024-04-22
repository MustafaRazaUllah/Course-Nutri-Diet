import 'package:get/get.dart';
import 'package:nutri_diet/App/Auth/View%20Model/login_viewmodel.dart';
import 'package:nutri_diet/App/Auth/View%20Model/register_viewmodel.dart';
import 'package:nutri_diet/App/Auth/View%20Model/splash_viewmodel.dart';
import 'package:nutri_diet/App/Auth/View/login_view.dart';
import 'package:nutri_diet/App/Auth/View/register_view.dart';
import 'package:nutri_diet/App/Auth/View/splash.dart';
import 'package:nutri_diet/App/On%20Baording/View%20Model/onboarding_viewmodel.dart';
import 'package:nutri_diet/App/On%20Baording/View/onboarding1.dart';
import 'package:nutri_diet/Utils/Routes/app_routes.dart';

import '../../App/On Baording/View/onboarding2.dart';
import '../../App/On Baording/View/onboarding3.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.splashView,
      page: () => SplashView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<SplashViewModel>(
          () => SplashViewModel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.onBoarding1View,
      page: () => OnBoarding1View(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<OnBoardingViewModel>(
          () => OnBoardingViewModel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.onBoarding2View,
      page: () => OnBoarding2View(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<OnBoardingViewModel>(
          () => OnBoardingViewModel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.onBoarding3View,
      page: () => OnBoarding3View(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<OnBoardingViewModel>(
          () => OnBoardingViewModel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.loginView,
      page: () =>  LoginView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<LoginViewModel>(
          () => LoginViewModel(),
        );
      }),
    ),
      GetPage(
      name: AppRoutes.registerView,
      page: () =>  RegisterView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<RegisterViewModel>(
          () => RegisterViewModel(),
        );
      }),
    ),
  ];
}
