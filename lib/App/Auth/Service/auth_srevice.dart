import 'dart:convert';

import 'package:nutri_diet/App/Auth/Model/user_model.dart';
import 'package:nutri_diet/App/Auth/View/login_view.dart';
import 'package:nutri_diet/DB/local_datrabase.dart';
import 'package:nutri_diet/Network/api_client.dart';
import 'package:nutri_diet/Network/api_urls.dart';

mixin AuthService {
  Future<UserModel> onLoginService({
    required String email,
    required String password,
  }) async {
    print(ApiURLs.login);
    var responsedata = await postClient(
      ApiURLs.login,
      body: {
        "email": email,
        "password": password,
      },
    );

    UserModel result = UserModel.fromJson(responsedata["data"]["user"]);
    DatabaseHandler().setToken(responsedata["data"]["token"]);
    DatabaseHandler().setuserData(jsonEncode(responsedata["data"]["user"]));
    return result;
  }
}
