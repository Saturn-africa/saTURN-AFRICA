import 'package:flutter/foundation.dart';
import 'package:saturn/models/login_models/sign_in_model.dart';
import 'package:saturn/models/login_models/sign_in_response.dart';
import 'package:saturn/services/base_headers.dart';
import 'package:saturn/service/network/base_url.dart';
import 'package:saturn/services/network_calls.dart';

class LoginProvider extends ChangeNotifier {
  bool _isClicked = false;

  void onClick() {
    _isClicked = !_isClicked;
    notifyListeners();
  }

  bool get isClicked => _isClicked;

  userSignIn(SignInModel userdata) async {
    String endPoint = BaseURL().signIn;
    Map<String, String> header = BaseHeaders().header;
    var response =
        await NetworkCalls().postRequest(endPoint, header, userdata.toJson());
    onClick();
    SignInResponse data = SignInResponse.fromJson(response);
    print(data.data!.user!.email);
  }

  userLogout(auth) async {
    Map<String, String> header = BaseHeaders().authHeader(auth);
    String endPoint = BaseURL().logout;
    var response = await NetworkCalls().getRequest(endPoint, header);

    print(response);
  }
}
