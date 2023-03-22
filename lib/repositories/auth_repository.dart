import 'package:saturn/models/login_models/sign_in_model.dart';
import 'package:saturn/models/login_models/sign_in_response.dart';
import 'package:saturn/models/registration_models/signup_payload.dart';
import 'package:saturn/service/network/base_header.dart';
import 'package:saturn/service/network/base_service.dart';
import 'package:saturn/service/network/base_url.dart';

class AuthRepositories extends NetworkService with BaseURL, BaseHeaders {
  Future getSignupResponse(context, SignupModel data) async {
    try {
      dynamic response =
          await postRequest(signUp, header, data.toJson(), context);
      SignInResponse responseData = SignInResponse.fromJson(response);

      return responseData;
    } catch (e) {
      print(e);
    }
  }

  Future getLoginResponse(context, SignInModel data) async {
    try {
      dynamic response =
          await postRequest(signIn, header, data.toJson(), context);
      SignInResponse responseData = SignInResponse.fromJson(response);
      return responseData;
    } catch (e) {
      print(e);
    }
  }

  Future confirmOtpResponse(context, data) async {
    try {
      dynamic response = await postRequest(verifyOtp, header, data, context);
    } catch (e) {
      print(e);
    }
  }
}
