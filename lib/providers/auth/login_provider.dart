import 'package:flutter/foundation.dart';
import 'package:saturn/models/login_models/sign_in_model.dart';
import 'package:saturn/services/base_headers.dart';
import 'package:saturn/services/base_url.dart';
import 'package:saturn/services/network_calls.dart';

class LoginProvider extends ChangeNotifier {
  userSignIn(SignInModel userdata) async {
    String endPoint = BaseURL().signIn;
    Map<String, String> header = BaseHeaders().header;
    var response =
        await NetworkCalls().postRequest(endPoint, header, userdata.toJson());

    print("response===> $response");
  }

  userLogout(auth) async {
    Map<String, String> header = BaseHeaders().authHeader(auth);
    String endPoint = BaseURL().logout;
    var response = await NetworkCalls().getRequest(endPoint, header);

    print(response);
  }
}
