import 'package:fluttertoast/fluttertoast.dart';
import 'package:nutri_diet/Commen/app_colors.dart';

class AppToast {
  void onSuccess(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColors.primaryColor,
        textColor: AppColors.blackText,
        fontSize: 16.0);
  }

  void onError(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColors.redText,
        textColor: AppColors.secondaryColor,
        fontSize: 16.0);
  }
}
