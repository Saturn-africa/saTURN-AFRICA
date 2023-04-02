import 'package:saturn/auth/login/login_page.dart';
import 'package:saturn/config/routing/routing.dart';
import 'package:saturn/models/auth_models/login_models/refresh_token.dart';
import 'package:saturn/service/network/base_service.dart';
import 'package:saturn/service/network/base_url.dart';
import 'package:saturn/service/storage/secure_storage/user_details.dart';
import 'package:saturn/service/storage/shared_preferences/user_details.dart';

class BaseHeaders {
  UserSecureStorage storage = UserSecureStorage();

  final Map<String, String> header = {
    "accept": "application/json",
    "Content-Type": "application/json"
  };

  Map<String, String> authHeader(auth) {
    return {
      "accept": "application/json",
      "Content-Type": "application/JSON",
      "Authorization": "Bearer $auth",
    };
  }

  Future getAuthToken(context) async {
    String? token = await storage.getToken();
    String? refreshToken = await storage.getRefreshToken();
    if (token != null) {
      print(token);
      return token;
    } else if (token == null && refreshToken != null) {
      var json = await NetworkService()
          .getRequest(BaseURL().refresh, authHeader(refreshToken), context);
      RefreshTokenResponse response = RefreshTokenResponse.fromJson(json);
      await storage.setToken(response.data!.data!.accessToken ?? "");
      print(response.data!.data!.accessToken);
      return response.data!.data!.accessToken;
    } else {
      await UserPreferences.setLoginStatus(false);
      RoutingService.pushAndRemoveAllRoute(context, const LoginPage());
    }
  }
}
