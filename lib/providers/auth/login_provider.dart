import 'package:flutter/foundation.dart';
import 'package:saturn/models/login_models/sign_in_model.dart';
import 'package:saturn/models/login_models/sign_in_response.dart';
import 'package:saturn/service/network/base_header.dart';
import 'package:saturn/service/network/base_service.dart';
import 'package:saturn/service/network/base_url.dart';

class LoginProvider extends ChangeNotifier {
  bool _isClicked = false;

  void onClick() {
    _isClicked = !_isClicked;
    notifyListeners();
  }

  bool get isClicked => _isClicked;

  userSignIn(SignInModel userdata, context) async {
    String endPoint = BaseURL().signIn;
    Map<String, String> header = BaseHeaders().header;
    var response = await NetworkService()
        .postRequest(endPoint, header, userdata.toJson(), context);
    onClick();
    SignInResponse data = SignInResponse.fromJson(response);
    print(data.data!.user!.email);
  }

  userLogout(auth, context) async {
    Map<String, String> header = BaseHeaders().authHeader(auth);
    String endPoint = BaseURL().logout;
    var response = await NetworkService().getRequest(endPoint, header, context);

    print(response);
  }
}
