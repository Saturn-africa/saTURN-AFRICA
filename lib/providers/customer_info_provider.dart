import 'package:flutter/cupertino.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/home_main.dart';
import 'package:saturn/customer_info/find_roommates/room_seeker/home_main_seeker.dart';
import 'package:saturn/customer_info/find_roommates/terms_page.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/models/onboarding_models/request_model/owner_info.dart';
import 'package:saturn/models/onboarding_models/response_model/owner_info.dart';
import 'package:saturn/repositories/onboarding_repository.dart';
import 'package:saturn/service/storage/shared_preferences/user_details.dart';

import '../config/routing/routing.dart';

class CustomerInfoProvider extends ChangeNotifier {
  OnboardingRepository repo = OnboardingRepository();
  bool isNextClicked = false;
  bool _homesForRentSelected = false;
  bool _findRoommateSelected = false;
  bool _roomOwner = false;
  bool _roomSeeker = false;
  Map customerInfo = {};
  List<String> amenities = [];

  bool _nextClicked = false;

  bool get nextClicked => _nextClicked;

  void onNextButtonClick() {
    _nextClicked = !_nextClicked;
    notifyListeners();
  }

  void rentSelected() {
    _homesForRentSelected = !_homesForRentSelected;
    if (_findRoommateSelected == true && _homesForRentSelected == true) {
      _findRoommateSelected = false;
    }
    notifyListeners();
  }

  void roommateSelected() {
    _findRoommateSelected = !_findRoommateSelected;
    if (_findRoommateSelected == true && _homesForRentSelected == true) {
      _homesForRentSelected = false;
    }
    notifyListeners();
  }

  void roomOwnerSelected() {
    _roomOwner = !_roomOwner;
    if (_roomOwner == true && _roomSeeker == true) {
      _roomSeeker = false;
    }
    notifyListeners();
  }

  void roomSeekerSelected() {
    _roomSeeker = !_roomSeeker;
    if (_roomSeeker == true && _roomOwner == true) {
      _roomOwner = false;
    }
    notifyListeners();
  }

  void onNextClick() {
    isNextClicked = !isNextClicked;
    notifyListeners();
  }

  Future setOwnerStatus(context) async {
    try {
      onNextClick();
      var response = await repo.ownerGetRequest(context);
      if (response == true) {
        RoutingService.pushRouting(context, const TermsPage());
      } else {
        showSnack(context, "02", "Unable to save status");
      }
      isNextClicked ? onNextClick() : null;
    } catch (e) {
      isNextClicked ? onNextClick() : null;
      throw Exception(e);
    }
  }

  Future setSeekerStatus(context) async {
    try {
      onNextClick();
      var response = await repo.seekerGetRequest(context);
      if (response == true) {
        RoutingService.pushRouting(context, const TermsPage());
      } else {
        showSnack(context, "02", "Unable to save status");
      }
      isNextClicked ? onNextClick() : null;
    } catch (e) {
      isNextClicked ? onNextClick() : null;
      throw Exception(e);
    }
  }

  Future saveOwnerInfo(context, OwnerPersonalInfoRequest data) async {
    try {
      OwnerPersonalInfoResponse response =
          await repo.saveOwnerPersonalInfo(context, data);
      _nextClicked ? onNextButtonClick() : null;
      if (response.message == "success") {
        String id = await UserPreferences.getUserId();
        await UserPreferences.setCardId(id, response.data!.id);
        RoutingService.pushAndRemoveAllRoute(context, const OwnerMainHome());
      } else {
        showSnack(context, "03", "Unable to save personal Info");
      }
    } catch (e) {
      _nextClicked ? onNextButtonClick() : null;
      showSnack(context, "03", "Unable to save personal Info");
      throw Exception(e);
    }
  }

  Future saveSeekerInfo(context, OwnerPersonalInfoRequest data) async {
    try {
      OwnerPersonalInfoResponse response =
          await repo.saveSeekerPersonalInfo(context, data);
      _nextClicked ? onNextButtonClick() : null;
      if (response.message == "success") {
        String id = await UserPreferences.getUserId();
        await UserPreferences.setCardId(id, response.data!.id);
        RoutingService.pushAndRemoveAllRoute(context, const SeekerMainHome());
      } else {
        showSnack(context, "03", "Unable to save personal Info");
      }
    } catch (e) {
      _nextClicked ? onNextButtonClick() : null;
      showSnack(context, "03", "Unable to save personal Info");
      throw Exception(e);
    }
  }

  void personalInfo(username, age, gender, religion, sex, lang) {
    customerInfo["personalInfo"] = {};
    customerInfo["personalInfo"]["username"] = username;
    customerInfo["personalInfo"]["ageRange"] = age;
    customerInfo["personalInfo"]["gender"] = gender;
    customerInfo["personalInfo"]["religiousInclination"] = religion;
    customerInfo["personalInfo"]["sexualInclination"] = sex;
    customerInfo["personalInfo"]["primaryLanguage"] = lang;
    notifyListeners();
  }

  void lifestyleInfo(education, smoke, pet, drink, clean) {
    customerInfo["lifestyleInfo"] = {};
    customerInfo["lifestyleInfo"]["educationLevel"] = education;
    customerInfo["lifestyleInfo"]["smoker"] = smoke;
    customerInfo["lifestyleInfo"]["petTolerance"] = pet;
    customerInfo["lifestyleInfo"]["drinkStatus"] = drink;
    customerInfo["lifestyleInfo"]["cleaning"] = clean;
    notifyListeners();
  }

  void houseInfo(budget, loc1, loc2, loc3, house, minYears, maxYears) {
    customerInfo["houseInfo"] = {};
    customerInfo["houseInfo"]["budget"] = budget;
    customerInfo["houseInfo"]["location1"] = loc1;
    customerInfo["houseInfo"]["location2"] = loc2;
    customerInfo["houseInfo"]["location3"] = loc3;
    customerInfo["houseInfo"]["houseType"] = house;
    customerInfo["houseInfo"]["minimumYear"] = minYears;
    customerInfo["houseInfo"]["maximumYear"] = maxYears;
    notifyListeners();
    // print(customerInfo);
  }

  void roommatePreference(
      age, gender, religion, sex, lang, education, smoke, pet, drink, clean) {
    customerInfo["roommatePref"] = {};
    customerInfo["roommatePref"]["ageRange"] = age;
    customerInfo["roommatePref"]["gender"] = gender;
    customerInfo["roommatePref"]["religiousInclination"] = religion;
    customerInfo["roommatePref"]["sexualInclination"] = sex;
    customerInfo["roommatePref"]["primaryLanguage"] = lang;
    customerInfo["roommatePref"]["educationLevel"] = education;
    customerInfo["roommatePref"]["smoker"] = smoke;
    customerInfo["roommatePref"]["petTolerance"] = pet;
    customerInfo["roommatePref"]["drinkStatus"] = drink;
    customerInfo["roommatePref"]["primaryLanguage"] = lang;
    customerInfo["roommatePref"]["Cleaning"] = clean;
    notifyListeners();
  }

  void houseInfoOwner(amount, location, houseType, people, minDur, maxDur,
      rooms, kitchen, restrooms, restType) {
    customerInfo["houseInfo"] = {};
    customerInfo["houseInfo"]["amount"] = amount;
    customerInfo["houseInfo"]["location"] = location;
    customerInfo["houseInfo"]["houseType"] = houseType;
    customerInfo["houseInfo"]["numberOfPeople"] = people;
    customerInfo["houseInfo"]["minimumDuration"] = minDur;
    customerInfo["houseInfo"]["maximumDuration"] = maxDur;
    customerInfo["houseInfo"]["noOfRooms"] = rooms;
    customerInfo["houseInfo"]["kitchenType"] = kitchen;
    customerInfo["houseInfo"]["noOfRestrooms"] = restrooms;
    customerInfo["houseInfo"]["restroomType"] = restType;
    notifyListeners();
  }

  void additionalInfo(String info, List images) {
    customerInfo["additionalInfo"] = info;
    customerInfo["images"] = images;
    // print(jsonEncode(customerInfo));
    notifyListeners();
  }

  void addAmenities(val) {
    amenities.add(val);
    notifyListeners();
  }

  void removeAmenities(val) {
    amenities.remove(val);
    notifyListeners();
  }

  void houseAmenities() {
    customerInfo["houseAmenities"] = amenities;
    notifyListeners();
  }

  bool get roomSelected => _findRoommateSelected;
  bool get homeSelected => _homesForRentSelected;
  bool get roomOwner => _roomOwner;
  bool get roomSeeker => _roomSeeker;
}
