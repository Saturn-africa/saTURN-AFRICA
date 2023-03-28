import 'package:flutter/material.dart';
import 'package:saturn/auth/registration/verify_email.dart';
import 'package:saturn/config/routing/routing.dart';
import 'package:saturn/customer_info/service_need.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/models/auth_models/login_models/sign_in_model.dart';
import 'package:saturn/models/auth_models/login_models/sign_in_response.dart';
import 'package:saturn/models/auth_models/otp_models/otp_response.dart';
import 'package:saturn/models/auth_models/otp_models/resend_otp_response.dart';
import 'package:saturn/models/auth_models/registration_models/signup_payload.dart';
import 'package:saturn/models/auth_models/registration_models/signup_response.dart';
import 'package:saturn/repositories/auth_repository.dart';
import 'package:saturn/service/storage/secure_storage/user_details.dart';
import 'package:saturn/service/storage/shared_preferences/user_details.dart';

class RegistrationProvider extends ChangeNotifier {
  Map<String, String> data = {};
  bool _isClicked = false;
  bool _verified = false;
  AuthRepositories network = AuthRepositories();
  UserSecureStorage storage = UserSecureStorage();

  void onClick() {
    _isClicked = !_isClicked;
    notifyListeners();
  }

  void onVerify() {
    _verified = !_verified;
    notifyListeners();
  }

  bool get isVerifying => _verified;
  bool get isClicked => _isClicked;

  Future userSignup(SignupModel userData, context) async {
    try {
      RegistrationResponse response =
          await network.getSignupResponse(context, userData);
      isClicked ? onClick() : null;
      if (response.message == "success") {
        await storage.setPassword(userData.password!);
        await UserPreferences.setUserId(response.data!.data!.id ?? "");
        RoutingService.pushAndRemoveAllRoute(
            context,
            VerifyOTP(
              email: userData.email!,
            ));
      } else {
        showSnack(context, "02", response.message!);
      }
    } catch (e) {
      isClicked ? onClick() : null;
      throw Exception(e);
    }
  }

  Future verifyOtp(Map data, context) async {
    try {
      String password = await storage.getPassword();
      VerifyOtpResponse response =
          await network.confirmOtpResponse(context, data);
      if (response.message == "success") {
        SignInModel loginData =
            SignInModel(password: password, email: response.data!.user!.email);
        SignInResponse signInResponse =
            await network.getLoginResponse(context, loginData);
        _verified ? onVerify() : null;
        if (signInResponse.message == "success") {
          await UserPreferences.setLoginStatus(true);
          await storage.setToken(signInResponse.data!.accessToken ?? "");
          await storage
              .setRefreshToken(signInResponse.data!.refreshToken ?? "");
          await storage.setUserData(signInResponse.data!.user!);
          RoutingService.pushAndRemoveAllRoute(context, const ServiceNeed());
        } else {
          showSnack(context, "02", signInResponse.message!);
        }
      } else {
        showSnack(context, "02", response.message!);
      }
    } catch (e) {
      _verified ? onVerify() : null;
      throw Exception(e);
    }
  }

  Future resendOtp(context) async {
    try {
      ResendOtpResponse response = await network.resendOtpResponse(context);
      if (response.status == "success") {
        showSnack(context, "00", "Otp successfully sent!");
      } else {
        showSnack(context, "03", response.message!);
      }
    } catch (e) {
      return Exception(e);
    }
  }

  dynamic getPhoneNumber(String number) {
    if (number.length == 14 && number.substring(0, 4) == "+234") {
      return number;
    } else if (number.length == 11 && number[0] == "0") {
      return "+234${number.substring(1)}";
    } else if (number.length == 13 && number.substring(0, 3) == "234") {
      return "+$number";
    }
    return null;
  }

  bool checkPhoneNumber(String number) {
    if (number.length == 14 && number.substring(0, 4) == "+234") {
      return true;
    } else if (number.length == 11 && number[0] == "0") {
      return true;
    } else if (number.length == 13 && number.substring(0, 3) == "234") {
      return true;
    }
    return false;
  }
}
