import 'dart:convert';
import 'package:saturn/models/login_models/sign_in_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static Future<bool> setLoginStatus(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool("status", value);
  }

  static Future<bool> getLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? status = prefs.getBool("status");
    return status ?? false;
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

  static Future<bool> setUserData(SignInResponse user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var userData = jsonEncode(user.toJson());
    return await prefs.setString("userData", userData);
  }

  static Future<SignInResponse> getUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var userData = prefs.getString("userData");
    return SignInResponse.fromJson(jsonDecode(userData!));
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
