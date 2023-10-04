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

  static Future<bool> setAccessTokenTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final expirationTime =
        DateTime.now().add(const Duration(minutes: 15)).millisecondsSinceEpoch;
    return await prefs.setInt("accessTokenExpirationTime", expirationTime);
  }

  static Future<bool> setRefreshTokenTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final expirationTime =
        DateTime.now().add(const Duration(days: 7)).millisecondsSinceEpoch;
    return await prefs.setInt("refreshTokenExpirationTime", expirationTime);
  }

  static Future<int> getAccessTokenTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? expirationTime = prefs.getInt("accessTokenExpirationTime");
    return expirationTime ?? 0;
  }

  static Future<int> getRefreshTokenTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? expirationTime = prefs.getInt("refreshTokenExpirationTime");
    return expirationTime ?? 0;
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

  static Future<bool> setUserStatus(String id, String status) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString("$id status", status);
  }

  static Future<String> getUserStatus(String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? status = prefs.getString("$id status");
    return status ?? "";
  }

  static Future setCardId(String id, String cardId) async {
    // print(cardId);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool he = await prefs.setString("$id card", cardId);
    print("card id ===>> $id card ====>>>> $cardId");
    print(he);
  }

  static Future<String> getCardId(String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? cardId = prefs.getString("$id card");
    print("card id ===>> $id card ======> $cardId");
    return cardId ?? "";
  }

  static Future<bool> setUsername(String username) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString("username", username);
  }

  static Future<String> getUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? name = prefs.getString("username");
    return name ?? "iRunStreet";
  }

  static Future<bool> setRememberUser(bool isCheck) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool("isCheck", isCheck);
  }

  static Future<bool> getRememberUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool("isCheck") ?? false;
  }

  static Future removePref(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  static Future<bool> setUserImage(String url) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString("userImage", url);
  }

  static Future<String?> getUserImage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? name = prefs.getString("userImage");
    return name;
  }
}
