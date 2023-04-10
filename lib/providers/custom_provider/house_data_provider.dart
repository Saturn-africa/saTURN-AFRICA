import 'package:flutter/material.dart';
import 'package:saturn/config/routing/routing.dart';
import 'package:saturn/custom_widgets/dialogs/success_dialogs.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/models/account/request_model/house_info.dart';
import 'package:saturn/models/account/request_model/house_info_seeker.dart';
import 'package:saturn/repositories/account_repository.dart';

class HouseDataProvider extends ChangeNotifier {
  AccountRepository repo = AccountRepository();
  List<String> amenities = [];
  List<String> amenityList = [
    "Security",
    "Light",
    "Kitchen",
    "Restroom",
    "Parking space",
    "Eatery",
    "Cafe",
    "Lift",
    "Fenced"
  ];
  List<bool> selectedBool = [];

  List<String> houseType = [
    "Duplex",
    "Self-Contain",
    "Single Room",
    "Two Bedroom Flat",
    "Three Bedroom Flat"
  ];
  List<bool> selectedType = [];
  List<String> selectedHouseType = [];

  bool isSaved = false;

  void addSelectedBool(index) {
    selectedBool[index] = !selectedBool[index];
  }

  void onCheckboxClick(index, bool val) {
    selectedType[index] = val;
  }

  void addHouseType(String val) {
    selectedHouseType.add(val);
    notifyListeners();
  }

  void removeHouseType(String val) {
    selectedHouseType.remove(val);
    notifyListeners();
  }

  void onSaveClick() {
    isSaved = !isSaved;
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

  void clearData() {
    selectedBool = [];
    isSaved = false;
    amenities = [];
    selectedHouseType = [];
    selectedType = [];
  }

  Future getAmenityList(context, data) async {}

  Future saveOwnerHouseInfo(context, HouseInfoRequest data) async {
    try {
      bool response = await repo.updateHouseInfo(context, data);
      isSaved ? onSaveClick() : null;
      if (response) {
        successDialogs(context, "Operation Successful!",
            "House Information is updated successfuly.",
            doublePage: true);
      } else {
        showSnack(context, "02", "Unable to save house info");
      }
    } catch (e) {
      isSaved ? onSaveClick() : null;
      showSnack(context, "02", "Unable to save house info");
    }
  }

  Future saveSeekerHouseInfo(context, HouseInfoSeekerRequest data) async {
    try {
      bool response = await repo.updateHouseInfo(context, data);
      isSaved ? onSaveClick() : null;
      print("response ====>>> $response");
      if (response) {
        successDialogs(context, "Operation Successful!",
            "House Information is updated successfuly.");
      } else {
        showSnack(context, "02", "Unable to save house info");
      }
    } catch (e) {
      isSaved ? onSaveClick() : null;
      showSnack(context, "02", "Unable to save house info");
    }
  }
}
