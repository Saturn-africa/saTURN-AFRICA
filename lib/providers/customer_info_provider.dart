import 'package:flutter/cupertino.dart';

class CustomerInfoProvider extends ChangeNotifier {
  bool _homesForRentSelected = false;
  bool _findRoommateSelected = false;
  bool _roomOwner = false;
  bool _roomSeeker = false;
  Map customerInfo = {};
  List<String> amenities = [];

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
