import 'package:nutri_diet/App/privacy_condition.dart/Model/privcy_condition_model.dart';
import 'package:nutri_diet/Commen/app_toast.dart';
import 'package:nutri_diet/DB/local_datrabase.dart';
import 'package:nutri_diet/Network/api_client.dart';
import 'package:nutri_diet/Network/api_urls.dart';

mixin PrivcyConditionService {
  Future<PrivcyConditionModel> getPrivcyConditionService({
    bool isPrivacy = true,
  }) async {
    String url = "";
    if (isPrivacy) {
      print(ApiURLs.privacyPolicy);
      url = ApiURLs.privacyPolicy;
    } else {
      print(ApiURLs.termsConditions);
      url = ApiURLs.termsConditions;
    }

    String token = await DatabaseHandler().getToken();

    print("token $token");

    var responsedata = await getClient(url, token: token);

    print("statusCode $responsedata ");
    PrivcyConditionModel? result;
    if (responsedata["success"] == true) {
      AppToast().onSuccess(responsedata["message"]);
      result = PrivcyConditionModel.fromJson(responsedata["data"]);
    } else {
      AppToast().onError(responsedata["message"]);
    }

    return result!;
  }
}
