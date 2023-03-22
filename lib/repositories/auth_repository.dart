import 'dart:async';
import 'package:saturn/models/auth_models/login_models/sign_in_model.dart';
import 'package:saturn/models/auth_models/login_models/sign_in_response.dart';
import 'package:saturn/models/auth_models/otp_response.dart';
import 'package:saturn/models/auth_models/registration_models/signup_payload.dart';
import 'package:saturn/models/auth_models/registration_models/signup_response.dart';
import 'package:saturn/service/network/base_header.dart';
import 'package:saturn/service/network/base_service.dart';
import 'package:saturn/service/network/base_url.dart';
import 'package:saturn/service/storage/shared_preferences/user_details.dart';

class AuthRepositories extends NetworkService with BaseURL, BaseHeaders {
  Future getSignupResponse(context, SignupModel data) async {
    try {
      dynamic response =
          await postRequest(signUp, header, data.toJson(), context);
      RegistrationResponse responseData =
          RegistrationResponse.fromJson(response);
      return responseData;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future getLoginResponse(context, SignInModel data) async {
    try {
      dynamic response =
          await postRequest(signIn, header, data.toJson(), context);
      SignInResponse responseData = SignInResponse.fromJson(response);
      return responseData;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future confirmOtpResponse(context, data) async {
    String id = await UserPreferences.getUserId();
    String verifyOtpUrl = verifyOtp(id);
    try {
      var response = await postRequest(verifyOtpUrl, header, data, context);
      VerifyOtpResponse responseData = VerifyOtpResponse.fromJson(response);
      return responseData;
    } catch (e) {
      throw Exception(e);
    }
  }
}
