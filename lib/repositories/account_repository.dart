import 'package:saturn/models/account/request_model/lifestyle_request.dart';
import 'package:saturn/models/account/request_model/roommate_pref.dart';
import 'package:saturn/models/account/response_model/lifestyle_response.dart';
import 'package:saturn/models/account/response_model/room_pref_response.dart';
import 'package:saturn/models/account/response_model/user_details.dart';
import 'package:saturn/models/onboarding_models/request_model/owner_info.dart';
import 'package:saturn/models/onboarding_models/response_model/owner_info.dart';
import 'package:saturn/service/network/base_header.dart';
import 'package:saturn/service/network/base_service.dart';
import 'package:saturn/service/network/base_url.dart';
import 'package:saturn/service/storage/secure_storage/user_details.dart';
import 'package:saturn/service/storage/shared_preferences/user_details.dart';

class AccountRepository extends NetworkService with BaseURL, BaseHeaders {
  UserSecureStorage storages = UserSecureStorage();
  Future getUserDetails(context) async {
    try {
      String auth = await getAuthToken(context);
      Map<String, String> header_ = authHeader(auth);
      var json = await getRequest(userDetails, header_, context);
      UserDetailsModel user = UserDetailsModel.fromJson(json);
      if (user.message == "success") {
        await storage.setUpdatedUserData(user);
        return user;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future updatePersonalInfo(context, OwnerPersonalInfoRequest data) async {
    UserDetailsModel user = await storages.getUpdatedUserData();
    String userId = await UserPreferences.getUserId();
    String id = await UserPreferences.getCardId(userId);
    String auth = await getAuthToken(context);
    Map<String, String> header_ = authHeader(auth);
    String url = user.data!.role!.toLowerCase() == "room owner"
        ? ownerPersonalInfoUpdate(id)
        : seekerPersonalInfoUpdate(id);
    try {
      var json = await putRequest(url, header_, data.toJson(), context);
      OwnerPersonalInfoResponse response =
          OwnerPersonalInfoResponse.fromJson(json);
      if (response.message!.toLowerCase() == "success") {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future updateRoomPreference(context, RoommatePrefRequest data) async {
    UserDetailsModel user = await storages.getUpdatedUserData();
    String userId = await UserPreferences.getUserId();
    String id = await UserPreferences.getCardId(userId);
    String auth = await getAuthToken(context);
    Map<String, String> header_ = authHeader(auth);
    String url = user.data!.role!.toLowerCase() == "room owner"
        ? ownerRoomatePreference(id)
        : seekerRoomatePreference(id);
    try {
      var json = await putRequest(url, header_, data.toJson(), context);
      RoommatePrefResponse response = RoommatePrefResponse.fromJson(json);
      if (response.message!.toLowerCase() == "success") {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future updateHouseInfo(context, data) async {
    UserDetailsModel user = await storages.getUpdatedUserData();
    String userId = await UserPreferences.getUserId();
    String id = await UserPreferences.getCardId(userId);
    String auth = await getAuthToken(context);
    Map<String, String> header_ = authHeader(auth);
    String url = user.data!.role!.toLowerCase() == "room owner"
        ? ownerHouseInfo(id)
        : seekerHouseInfo(id);
    try {
      var json = await putRequest(url, header_, data.toJson(), context);
      RoommatePrefResponse response = RoommatePrefResponse.fromJson(json);
      if (response.message!.toLowerCase() == "success") {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future updateLifestyleChoices(context, LifestyleInfoRequest data) async {
    String userId = await UserPreferences.getUserId();
    String id = await UserPreferences.getCardId(userId);
    String status = await UserPreferences.getUserStatus(userId);
    String auth = await getAuthToken(context);
    Map<String, String> header_ = authHeader(auth);
    String url = status.toLowerCase() == "room owner"
        ? ownerLifestyleInfoUpdate(id)
        : seekerLifestyleInfoUpdate(id);
    try {
      var json = await putRequest(url, header_, data.toJson(), context);
      LifestyleInfoResponse response = LifestyleInfoResponse.fromJson(json);
      if (response.message!.toLowerCase() == "success") {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future addAddititonalInfo(context, body) async {
    UserDetailsModel user = await storages.getUpdatedUserData();
    String userId = await UserPreferences.getUserId();
    String id = await UserPreferences.getCardId(userId);
    String auth = await getAuthToken(context);
    Map<String, String> header_ = authHeader(auth);
    String url = user.data!.role!.toLowerCase() == "room owner"
        ? ownerAdditionalInfoUpdate(id)
        : seekerAdditionalInfoUpdate(id);
    try {
      var json = await putRequest(url, header_, body, context);
      RoommatePrefResponse response = RoommatePrefResponse.fromJson(json);
      if (response.message!.toLowerCase() == "success") {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
