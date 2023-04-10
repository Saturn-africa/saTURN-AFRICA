import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:saturn/config/routing/routing.dart';
import 'package:saturn/custom_widgets/dialogs/success_dialogs.dart';
import 'package:saturn/customer_info/service_need.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/models/account/request_model/lifestyle_request.dart';
import 'package:saturn/models/account/request_model/roommate_pref.dart';
import 'package:saturn/models/account/response_model/user_details.dart';
import 'package:saturn/models/onboarding_models/request_model/owner_info.dart';
import 'package:saturn/repositories/account_repository.dart';
import 'package:saturn/repositories/image_repository.dart';
import 'package:saturn/service/storage/shared_preferences/user_details.dart';

class AccountProvider extends ChangeNotifier {
  AccountRepository repo = AccountRepository();
  String username = "";
  String userStatus = "";
  String userId = "";
  String? imageUrl;
  bool personalClicked = false;
  bool preferenceClicked = false;
  bool lifestyleClicked = false;
  bool addInfoClicked = false;
  List<String> imageList = [];

  void onPersonalClick() {
    personalClicked = !personalClicked;
    notifyListeners();
  }

  void onPreferenceClick() {
    preferenceClicked = !preferenceClicked;
    notifyListeners();
  }

  void onLifestyleClick() {
    lifestyleClicked = !lifestyleClicked;
    notifyListeners();
  }

  void onAddInfoClick() {
    addInfoClicked = !addInfoClicked;
    notifyListeners();
  }

  Future getDetails() async {
    username = await UserPreferences.getUsername();
    userId = await UserPreferences.getUserId();
    imageUrl = await UserPreferences.getUserImage();
    notifyListeners();
  }

  Future getImageStrings(context, List<XFile> images) async {
    try {
      List<String> imageUploadList = [];
      if (images.isNotEmpty) {
        for (var image in images) {
          var response = await ImageRepository()
              .uploadResponse(image, "Room Image", context);
          if (response != null) {
            imageUploadList.add(response);
          }
        }
      }
      addInfoClicked ? onAddInfoClick() : null;
      if (imageUploadList.isEmpty) {
        showSnack(context, "02", "Unable to upload images");
      } else {
        imageList = imageUploadList;
        notifyListeners();
      }
    } catch (e) {
      addInfoClicked ? onAddInfoClick() : null;
      showSnack(context, "02", "Unable to upload image");
    }
  }

  Future getImageString(context, XFile image) async {
    try {
      var response =
          await ImageRepository().uploadResponse(image, "Room Image", context);
      if (response != null) {
        imageUrl = response;
        notifyListeners();
        await UserPreferences.setUserImage(response);
      } else {
        showSnack(context, "02", "Unable to upload image");
      }
    } catch (e) {
      showSnack(context, "02", "Unable to upload image");
    }
  }

  Future getUserInfo(context) async {
    try {
      UserDetailsModel user = await repo.getUserDetails(context);
      username = user.data!.username!;
      if (user.data!.role == null) {
        RoutingService.pushAndRemoveAllRoute(context, const ServiceNeed());
        return;
      }
      userStatus = user.data!.role!;
      userId = user.data!.id!;
      imageUrl = user.data!.photo;
      notifyListeners();
      await UserPreferences.setUsername(user.data!.username!);
      await UserPreferences.setUserStatus(userId, userStatus);
      await UserPreferences.setUserImage(user.data!.photo ?? "");
      await UserPreferences.setUserId(userId);
      if (user.data!.roomOwnerCards!.isNotEmpty ||
          user.data!.roomSeekerCards!.isNotEmpty) {
        await UserPreferences.setCardId(
            userId,
            userStatus.toLowerCase() == "room owner"
                ? user.data!
                    .roomOwnerCards![user.data!.roomOwnerCards!.length - 1]
                : user.data!
                    .roomSeekerCards![user.data!.roomSeekerCards!.length - 1]);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future personalDetailsUpdate(OwnerPersonalInfoRequest data, context) async {
    try {
      bool response = await repo.updatePersonalInfo(context, data);
      personalClicked ? onPersonalClick() : null;
      if (response) {
        successDialogs(context, "Operation Successful!",
            "Personal info is updated successfuly.");
      } else {
        showSnack(context, "02", "Unable to save info");
      }
    } catch (e) {
      personalClicked ? onPersonalClick() : null;
      showSnack(context, "02", "Unable to save personal info");
    }
  }

  Future roommatePrefUpdate(RoommatePrefRequest data, context) async {
    try {
      bool response = await repo.updateRoomPreference(context, data);
      preferenceClicked ? onPreferenceClick() : null;
      if (response) {
        successDialogs(context, "Operation Successful!",
            "Roommate Preference is updated successfuly.");
      } else {
        showSnack(context, "02", "Unable to save Preferences");
      }
    } catch (e) {
      preferenceClicked ? onPreferenceClick() : null;
      showSnack(context, "02", "Unable to save roommate preferences");
    }
  }

  Future lifestyleInfoUpdate(LifestyleInfoRequest data, context) async {
    try {
      bool response = await repo.updateLifestyleChoices(context, data);
      lifestyleClicked ? onLifestyleClick() : null;
      if (response) {
        successDialogs(context, "Operation Successful!",
            "Lifestyle Info is updated successfuly.");
      } else {
        showSnack(context, "02", "Unable to save lifestyle info");
      }
    } catch (e) {
      lifestyleClicked ? onLifestyleClick() : null;
      showSnack(context, "02", "Unable to save lifestyle info");
    }
  }

  Future additionalInfoUpdate(body, context) async {
    try {
      bool response = await repo.addAddititonalInfo(context, body);
      addInfoClicked ? onAddInfoClick() : null;
      if (response) {
        successDialogs(context, "Operation Successful!",
            "Additional Info is updated successfuly.");
      } else {
        showSnack(context, "02", "Unable to save Additional info");
      }
    } catch (e) {
      addInfoClicked ? onAddInfoClick() : null;
      showSnack(context, "02", "Unable to save Additional info");
    }
  }
}
