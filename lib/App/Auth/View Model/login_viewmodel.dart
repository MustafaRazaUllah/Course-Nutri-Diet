import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nutri_diet/Utils/Routes/app_routes.dart';

class LoginViewModel extends GetxController {
  final formkey = GlobalKey<FormState>();
  Rx<TextEditingController> loginEmail = TextEditingController().obs;
  Rx<TextEditingController> loginPassword = TextEditingController().obs;

  void onLogin() async {
    if (formkey.currentState!.validate()) {
      print("Login Email ${loginEmail.value.text}");
      print("Login Password ${loginPassword.value.text}");
      Get.offAllNamed(AppRoutes.homeView);
    }
  }
}
