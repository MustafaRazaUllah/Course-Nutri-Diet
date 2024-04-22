import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterViewModel extends GetxController {
  Rx<TextEditingController> regFullName = TextEditingController().obs;
  Rx<TextEditingController> regEmail = TextEditingController().obs;
  Rx<TextEditingController> regPassword = TextEditingController().obs;
  Rx<TextEditingController> regConfirmPassword = TextEditingController().obs;

  void onRegister() {
    print("reg FullName  ${regFullName.value.text}");
    print("reg Email  ${regEmail.value.text}");
    print("reg Password  ${regPassword.value.text}");
    print("reg Confirm Password  ${regConfirmPassword.value.text}");
  }
}
