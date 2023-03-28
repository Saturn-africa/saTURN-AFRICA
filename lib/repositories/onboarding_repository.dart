import 'package:saturn/service/network/base_header.dart';
import 'package:saturn/service/network/base_service.dart';
import 'package:saturn/service/network/base_url.dart';

class OnboardingRepository extends NetworkService with BaseURL, BaseHeaders {
  Future ownerGetRequest(context) async {
    try {
      String auth = await getAuthToken(context);
      Map<String, String> header_ = authHeader(auth);
      print(header_);
      var json = await getNoResponseRequest(userOwner, header_, context);
      print(json);
      if (json == 200 || json == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future seekerGetRequest(context) async {
    try {
      String auth = await getAuthToken(context);
      Map<String, String> header_ = authHeader(auth);
      String json = await getNoResponseRequest(userSeeker, header_, context);
      if (json == "200" || json == "201") {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
