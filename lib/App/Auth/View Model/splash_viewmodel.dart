import 'package:get/get.dart';
import 'package:nutri_diet/Utils/Routes/app_routes.dart';

class SplashViewModel extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(const Duration(seconds: 2), () {
      Get.toNamed(AppRoutes.onBoardingView);
    });
  }
}
