import 'dart:convert';

class OwnerDetails {
  OwnerDetails({
    this.serviceNeed,
    this.status,
    this.personalInfo,
    this.lifestyleInfo,
    this.roommatePref,
    this.houseInfo,
    this.houseAmenities,
    this.additionalInfo,
  });

  dynamic serviceNeed;
  dynamic status;
  PersonalInfo? personalInfo;
  LifestyleInfo? lifestyleInfo;
  RoommatePref? roommatePref;
  HouseInfo? houseInfo;
  List<String>? houseAmenities;
  dynamic additionalInfo;

  factory OwnerDetails.fromRawJson(String str) =>
      OwnerDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OwnerDetails.fromJson(Map<String, dynamic> json) => OwnerDetails(
        serviceNeed: json["serviceNeed"],
        status: json["status"],
        personalInfo: PersonalInfo.fromJson(json["personalInfo"]),
        lifestyleInfo: LifestyleInfo.fromJson(json["lifestyleInfo"]),
        roommatePref: RoommatePref.fromJson(json["roommatePref"]),
        houseInfo: HouseInfo.fromJson(json["houseInfo"]),
        houseAmenities: List<String>.from(json["houseAmenities"].map((x) => x)),
        additionalInfo: json["additionalInfo"],
      );

  Map<String, dynamic> toJson() => {
        "serviceNeed": serviceNeed,
        "status": status,
        "personalInfo": personalInfo!.toJson(),
        "lifestyleInfo": lifestyleInfo!.toJson(),
        "roommatePref": roommatePref!.toJson(),
        "houseInfo": houseInfo!.toJson(),
        "houseAmenities": List<dynamic>.from(houseAmenities!.map((x) => x)),
        "additionalInfo": additionalInfo,
      };
}

class HouseInfo {
  HouseInfo({
    this.amount,
    this.location1,
    this.location2,
    this.location3,
    this.houseType,
    this.numberOfPeople,
    this.minimumDuration,
    this.maximumDuration,
    this.noOfRooms,
    this.kitchenType,
    this.noOfRestrooms,
    this.restroomType,
  });

  dynamic amount;
  dynamic location1;
  dynamic location2;
  dynamic location3;
  dynamic houseType;
  dynamic numberOfPeople;
  dynamic minimumDuration;
  dynamic maximumDuration;
  dynamic noOfRooms;
  dynamic kitchenType;
  dynamic noOfRestrooms;
  dynamic restroomType;

  factory HouseInfo.fromRawJson(String str) =>
      HouseInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HouseInfo.fromJson(Map<String, dynamic> json) => HouseInfo(
        amount: json["amount"],
        location1: json["location1"],
        location2: json["location2"],
        location3: json["location3"],
        houseType: json["houseType"],
        numberOfPeople: json["numberOfPeople"],
        minimumDuration: json["minimumDuration"],
        maximumDuration: json["maximumDuration"],
        noOfRooms: json["noOfRooms"],
        kitchenType: json["kitchenType"],
        noOfRestrooms: json["noOfRestrooms"],
        restroomType: json["restroomType"],
      );

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "location1": location1,
        "location2": location2,
        "location3": location3,
        "houseType": houseType,
        "numberOfPeople": numberOfPeople,
        "minimumDuration": minimumDuration,
        "maximumDuration": maximumDuration,
        "noOfRooms": noOfRooms,
        "kitchenType": kitchenType,
        "noOfRestrooms": noOfRestrooms,
        "restroomType": restroomType,
      };
}

class LifestyleInfo {
  LifestyleInfo({
    this.educationLevel,
    this.smoker,
    this.petTolerance,
    this.drinkStatus,
    this.cleaning,
  });

  dynamic educationLevel;
  dynamic smoker;
  dynamic petTolerance;
  dynamic drinkStatus;
  dynamic cleaning;

  factory LifestyleInfo.fromRawJson(String str) =>
      LifestyleInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LifestyleInfo.fromJson(Map<String, dynamic> json) => LifestyleInfo(
        educationLevel: json["educationLevel"],
        smoker: json["smoker"],
        petTolerance: json["petTolerance"],
        drinkStatus: json["drinkStatus"],
        cleaning: json["cleaning"],
      );

  Map<String, dynamic> toJson() => {
        "educationLevel": educationLevel,
        "smoker": smoker,
        "petTolerance": petTolerance,
        "drinkStatus": drinkStatus,
        "cleaning": cleaning,
      };
}

class PersonalInfo {
  PersonalInfo({
    this.username,
    this.ageRange,
    this.gender,
    this.religiousInclination,
    this.sexualInclination,
    this.primaryLanguage,
  });

  dynamic username;
  dynamic ageRange;
  dynamic gender;
  dynamic religiousInclination;
  dynamic sexualInclination;
  dynamic primaryLanguage;

  factory PersonalInfo.fromRawJson(String str) =>
      PersonalInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PersonalInfo.fromJson(Map<String, dynamic> json) => PersonalInfo(
        username: json["username"],
        ageRange: json["ageRange"],
        gender: json["gender"],
        religiousInclination: json["religiousInclination"],
        sexualInclination: json["sexualInclination"],
        primaryLanguage: json["primaryLanguage"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "ageRange": ageRange,
        "gender": gender,
        "religiousInclination": religiousInclination,
        "sexualInclination": sexualInclination,
        "primaryLanguage": primaryLanguage,
      };
}

class RoommatePref {
  RoommatePref({
    this.ageRange,
    this.gender,
    this.religiousInclination,
    this.sexualInclination,
    this.primaryLanguage,
    this.educationLevel,
    this.smoker,
    this.petTolerance,
    this.drinkStatus,
    this.cleaning,
  });

  dynamic ageRange;
  dynamic gender;
  dynamic cleaning;
  dynamic religiousInclination;
  dynamic sexualInclination;
  dynamic primaryLanguage;
  dynamic educationLevel;
  dynamic smoker;
  dynamic petTolerance;
  dynamic drinkStatus;

  factory RoommatePref.fromRawJson(String str) =>
      RoommatePref.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RoommatePref.fromJson(Map<String, dynamic> json) => RoommatePref(
        ageRange: json["ageRange"],
        gender: json["gender"],
        religiousInclination: json["religiousInclination"],
        sexualInclination: json["sexualInclination"],
        primaryLanguage: json["primaryLanguage"],
        educationLevel: json["educationLevel"],
        smoker: json["smoker"],
        cleaning: json["cleaning"],
        petTolerance: json["petTolerance"],
        drinkStatus: json["drinkStatus"],
      );

  Map<String, dynamic> toJson() => {
        "ageRange": ageRange,
        "gender": gender,
        "religiousInclination": religiousInclination,
        "sexualInclination": sexualInclination,
        "primaryLanguage": primaryLanguage,
        "educationLevel": educationLevel,
        "smoker": smoker,
        "cleaning": cleaning,
        "petTolerance": petTolerance,
        "drinkStatus": drinkStatus,
      };
}
