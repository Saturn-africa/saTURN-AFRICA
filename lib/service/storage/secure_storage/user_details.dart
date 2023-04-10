import 'dart:async';
import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:saturn/models/account/response_model/user_details.dart';
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
  final String _userUpdatedDataKey = "userUpdatedData";

  Future setToken(String token) async {
    print("token ====>>> $token");
    await storage.write(key: _tokenKey, value: token);
    await UserPreferences.setAccessTokenTime();
  }

  Future setRefreshToken(String token) async {
    await storage.write(key: _refreshToken, value: token);
    await UserPreferences.setRefreshTokenTime();
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

  Future setUpdatedUserData(UserDetailsModel userData) async {
    await storage.write(
        key: _userUpdatedDataKey, value: jsonEncode(userData.toJson()));
  }

  Future<String?> getToken() async {
    final expirationTime = await UserPreferences.getAccessTokenTime();
    if (DateTime.now().millisecondsSinceEpoch < expirationTime) {
      return await storage.read(key: _tokenKey);
    } else {
      await storage.delete(key: _tokenKey);
      await UserPreferences.removePref("accessTokenExpirationTime");
      return null;
    }
  }

  Future<String?> getRefreshToken() async {
    final expirationTime = await UserPreferences.getRefreshTokenTime();
    if (DateTime.now().millisecondsSinceEpoch < expirationTime) {
      return await storage.read(key: _refreshToken);
    } else {
      await storage.delete(key: _refreshToken);
      await UserPreferences.removePref("refreshTokenExpirationTime");
      return null;
    }
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

  Future<UserDetailsModel> getUpdatedUserData() async {
    String? value = await storage.read(key: _userUpdatedDataKey);
    UserDetailsModel response = UserDetailsModel.fromJson(jsonDecode(value!));
    return response;
  }
}



// Future deleteToken(int minutes, String key) async {
//     Duration deleteAfter = Duration(minutes: minutes);
//     Timer(deleteAfter, () async {
//       await storage.delete(key: key);
//       if (key == _refreshToken) {
//         await UserPreferences.setLoginStatus(false);
//       }
//     });
//   }