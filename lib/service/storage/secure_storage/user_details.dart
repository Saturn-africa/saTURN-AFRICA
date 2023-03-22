import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:saturn/models/auth_models/login_models/sign_in_response.dart';

class UserSecureStorage {
  final storage = const FlutterSecureStorage();

  final String _tokenKey = "token";
  final String _refreshToken = "refreshToken";
  final String _passwordKey = "password";
  final String _usernameKey = "username";
  // final String _isCheckKey = "isCheck";
  final String _userDataKey = "userData";

  Future setToken(String token) async {
    await storage.write(key: _tokenKey, value: token);
  }

  Future setRefreshToken(String token) async {
    await storage.write(key: _refreshToken, value: token);
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
