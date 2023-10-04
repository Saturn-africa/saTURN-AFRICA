import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static Future<bool> setLoginStatus(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await setFirstTimeStatus(false);
    return await prefs.setBool("status", value);
  }

  static Future<bool> getLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? status = prefs.getBool("status");
    return status ?? false;
  }

  static Future<bool> setFirstTimeStatus(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool("firstTime", value);
  }

  static Future<bool> getFirstTimeStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? status = prefs.getBool("firstTime");
    return status ?? true;
  }

  static Future<bool> setUserId(String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString("userId", id);
  }

  static Future<String> getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? id = prefs.getString("userId");
    return id ?? "";
  }

  static Future<bool> setUserStatus(String status) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString("userStatus", status);
  }

  static Future<String> getUserStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? status = prefs.getString("userStatus");
    return status ?? "";
  }

  static Future<bool> setUserFirstName(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString("firstName", name);
  }

  static Future<String> getUserFirstName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? name = prefs.getString("firstName");
    return name ?? "There";
  }

  static Future<bool> setRememberUser(bool isCheck) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool("isCheck", isCheck);
  }

  static Future<bool> getRememberUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool("isCheck") ?? false;
  }
}
