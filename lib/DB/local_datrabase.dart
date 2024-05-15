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
  // ----------------------- Token Section -----------------------------------
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
}
