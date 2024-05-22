import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:nutri_diet/App/privacy_condition.dart/Model/privcy_condition_model.dart';
import 'package:nutri_diet/App/privacy_condition.dart/Service/privcy_condition_service.dart';

class PrivcyConditionVM extends GetxController with PrivcyConditionService {
  final String screenTitle = Get.arguments[0] ?? "";

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    getPrivacyConditionData();
  }

  Rx<PrivcyConditionModel> privacyConditionData =
      PrivcyConditionModel.fromEmpty().obs;

  Future<void> getPrivacyConditionData() async {
    PrivcyConditionModel result = await getPrivcyConditionService(
      isPrivacy: screenTitle == 'Privacy Policy' ? true : false,
    );
    privacyConditionData.value = result;
    privacyConditionData.refresh();
  }
}
