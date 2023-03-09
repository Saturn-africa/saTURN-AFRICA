import 'package:flutter/material.dart';
import 'package:saturn/models/registration_models/signup_payload.dart';
import 'package:saturn/services/base_headers.dart';
import 'package:saturn/service/network/base_url.dart';
import 'package:saturn/services/network_calls.dart';

class RegistrationProvider extends ChangeNotifier {
  Map<String, String> data = {};
  bool _isClicked = false;

  void onClick() {
    _isClicked = !_isClicked;
    notifyListeners();
  }

  bool get isClicked => _isClicked;

  void userSignup(SignupModel userData) async {
    String endPoint = BaseURL().signUp;
    Map<String, String> header = BaseHeaders().header;
    var response =
        await NetworkCalls().postRequest(endPoint, header, userData.toJson());
    onClick();
    print("Output===>> $response");
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
