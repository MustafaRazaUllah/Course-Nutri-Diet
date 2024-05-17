import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nutri_diet/App/Auth/Model/user_model.dart';
import 'package:nutri_diet/App/Auth/Service/auth_srevice.dart';
import 'package:nutri_diet/Utils/Routes/app_routes.dart';

class LoginViewModel extends GetxController with AuthService {
  final formkey = GlobalKey<FormState>();
  Rx<TextEditingController> loginEmail = TextEditingController().obs;
  Rx<TextEditingController> loginPassword = TextEditingController().obs;

  RxBool isLoading = false.obs;

  void onLogin() async {
    if (formkey.currentState!.validate()) {
      try {
        isLoading.value = true;
        print("Login Email ${loginEmail.value.text}");
        print("Login Password ${loginPassword.value.text}");

        UserModel result = await onLoginService(
          email: loginEmail.value.text,
          password: loginPassword.value.text,
        );

        isLoading.value = false;
        if (result.email.isNotEmpty) {
          Get.offAllNamed(AppRoutes.homeView);
        }
      } catch (e) {
        isLoading.value = false;
      }
    }
  }
}
