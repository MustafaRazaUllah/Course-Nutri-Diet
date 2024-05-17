import 'package:get/get.dart';
import 'package:nutri_diet/DB/local_datrabase.dart';
import 'package:nutri_diet/Utils/Routes/app_routes.dart';

class SplashViewModel extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(
      
      const Duration(seconds: 2),
      () async {
        String token = await DatabaseHandler().getToken();
        bool isOnboarding = await DatabaseHandler().getOnBording();
        if (token.isNotEmpty) {
          Get.toNamed(AppRoutes.homeView);
        } else {
          if (isOnboarding) {
            Get.toNamed(AppRoutes.loginView);
          } else {
            Get.toNamed(AppRoutes.onBoarding1View);
          }
        }
      },
    );
  }
}
