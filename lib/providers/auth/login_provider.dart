import 'package:flutter/foundation.dart';
import 'package:saturn/config/routing/routing.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/home_main.dart';
import 'package:saturn/customer_info/find_roommates/room_seeker/home_main_seeker.dart';
import 'package:saturn/customer_info/homes_for_rent/home_page/rent_home_main.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/models/auth_models/login_models/sign_in_model.dart';
import 'package:saturn/models/auth_models/login_models/sign_in_response.dart';
import 'package:saturn/repositories/auth_repository.dart';
import 'package:saturn/service/network/base_header.dart';
import 'package:saturn/service/network/base_service.dart';
import 'package:saturn/service/network/base_url.dart';
import 'package:saturn/service/storage/secure_storage/user_details.dart';
import 'package:saturn/service/storage/shared_preferences/user_details.dart';

class LoginProvider extends ChangeNotifier {
  UserSecureStorage storage = UserSecureStorage();

  bool _isClicked = false;

  void onClick() {
    _isClicked = !_isClicked;
    notifyListeners();
  }

  bool get isClicked => _isClicked;

  Future userSignIn(SignInModel userdata, context) async {
    try {
      SignInResponse response =
          await AuthRepositories().getLoginResponse(context, userdata);
      _isClicked ? onClick() : null;
      if (response.message == "success") {
        await UserPreferences.setLoginStatus(true);
        await storage.setToken(response.data!.accessToken ?? "");
        await storage.setRefreshToken(response.data!.refreshToken ?? "");
        await storage.setUserData(response.data!.user!);
        String userStatus = await UserPreferences.getUserStatus();
        switch (userStatus) {
          case "room_owner":
            RoutingService.pushAndRemoveAllRoute(
                context, const OwnerMainHome());
            break;
          case "room_seeker":
            RoutingService.pushAndRemoveAllRoute(
                context, const SeekerMainHome());
            break;
          default:
            RoutingService.pushAndRemoveAllRoute(context, const RentMainHome());
        }
      } else {
        showSnack(context, "02", response.message!);
      }
    } catch (e) {
      _isClicked ? onClick() : null;
      throw Exception(e);
    }
  }

  userLogout(auth, context) async {
    Map<String, String> header = BaseHeaders().authHeader(auth);
    String endPoint = BaseURL().logout;
    var response = await NetworkService().getRequest(endPoint, header, context);
    print(response);
  }
}
