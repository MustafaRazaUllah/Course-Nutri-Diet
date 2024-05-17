import 'package:shared_preferences/shared_preferences.dart';

class DatabaseHandler {
  //
  // ----------------------- Token Section -----------------------------------
  //
  Future<void> setToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("token", token);
  }

  Future<String> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? result = prefs.getString("token");
    return result ?? "";
  }

  //
  // ----------------------- User Data Section -----------------------------------
  //
  Future<void> setuserData(String userData) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("userData", userData);
  }

  // Future<String> getuserData() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? result = prefs.getString("token");
  //   return result ?? "";
  // }

  //
  // ----------------------- On Boarding Section -----------------------------------
  //
  Future<void> setOnBording(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("onboarding", value);
  }

  Future<bool> getOnBording() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? result = prefs.getBool("onboarding");
    return result ?? false;
  }

  //
  // ----------------------- Logout Section -----------------------------------
  //

  Future<void> logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.remove("token");
    await prefs.remove("userData");
  }
}
