import 'package:saturn/models/account/response_model/user_details.dart';
import 'package:saturn/models/onboarding_models/request_model/owner_info.dart';
import 'package:saturn/models/onboarding_models/response_model/owner_info.dart';
import 'package:saturn/service/network/base_header.dart';
import 'package:saturn/service/network/base_service.dart';
import 'package:saturn/service/network/base_url.dart';
import 'package:saturn/service/storage/secure_storage/user_details.dart';

class OnboardingRepository extends NetworkService with BaseURL, BaseHeaders {
  Future ownerGetRequest(context) async {
    try {
      String auth = await getAuthToken(context);
      Map<String, String> header_ = authHeader(auth);
      print(userOwner);
      var json = await getNoResponseRequest(userOwner, header_, context);
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
      print(userSeeker);
      var json = await getNoResponseRequest(userSeeker, header_, context);
      if (json == 200 || json == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future saveOwnerPersonalInfo(context, OwnerPersonalInfoRequest data) async {
    try {
      String auth = await getAuthToken(context);
      Map<String, String> header_ = authHeader(auth);
      var json =
          await postRequest(ownerPersonalInfo, header_, data.toJson(), context);
      OwnerPersonalInfoResponse response =
          OwnerPersonalInfoResponse.fromJson(json);
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future saveSeekerPersonalInfo(context, OwnerPersonalInfoRequest data) async {
    try {
      String auth = await getAuthToken(context);
      Map<String, String> header_ = authHeader(auth);
      var json = await postRequest(
          seekerPersonalInfo, header_, data.toJson(), context);
      OwnerPersonalInfoResponse response =
          OwnerPersonalInfoResponse.fromJson(json);
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }
}
