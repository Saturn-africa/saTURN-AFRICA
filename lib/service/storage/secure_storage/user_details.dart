import 'dart:async';
import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:saturn/models/auth_models/login_models/sign_in_response.dart';
import 'package:saturn/service/storage/shared_preferences/user_details.dart';

class UserSecureStorage {
  final storage = const FlutterSecureStorage();

  final String _tokenKey = "token";
  final String _refreshToken = "refreshToken";
  final String _passwordKey = "password";
  final String _usernameKey = "username";
  // final String _isCheckKey = "isCheck";
  final String _userDataKey = "userData";

  Future setToken(String token) async {
    print("token ====>>> $token");
    await storage.write(key: _tokenKey, value: token);
    await deleteToken(15, _tokenKey);
  }

  Future setRefreshToken(String token) async {
    await storage.write(key: _refreshToken, value: token);
    await deleteToken(10080, _refreshToken);
  }

  Future setPassword(String password) async {
    await storage.write(key: _passwordKey, value: password);
  }

  Future setUserData(UserData userData) async {
    await storage.write(key: _userDataKey, value: jsonEncode(userData));
  }

  Future setUsername(String username) async {
    await storage.write(key: _usernameKey, value: username);
  }

  Future<String?> getToken() async {
    return await storage.read(key: _tokenKey);
  }

  Future deleteToken(int minutes, String key) async {
    Duration deleteAfter = Duration(minutes: minutes);
    Timer(deleteAfter, () async {
      await storage.delete(key: key);
      if (key == _refreshToken) {
        await UserPreferences.setLoginStatus(false);
      }
    });
  }

  Future<String?> getRefreshToken() async {
    return await storage.read(key: _refreshToken);
  }

  Future<String> getPassword() async {
    String? password = await storage.read(key: _passwordKey);
    return password ?? "";
  }

  Future<String?> getUsername() async {
    return await storage.read(key: _usernameKey);
  }

  Future<SignInResponse> getUserData() async {
    String? value = await storage.read(key: _userDataKey);
    SignInResponse response = SignInResponse.fromJson(jsonDecode(value!));

    return response;
  }
}
