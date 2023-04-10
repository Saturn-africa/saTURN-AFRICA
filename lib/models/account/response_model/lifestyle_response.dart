class LifestyleInfoResponse {
  String? message;
  Data? data;

  LifestyleInfoResponse({
    this.message,
    this.data,
  });

  LifestyleInfoResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'] as String?;
    data = (json['data'] as Map<String, dynamic>?) != null
        ? Data.fromJson(json['data'] as Map<String, dynamic>)
        : null;
  }
}

class Data {
  dynamic id;
  String? fullName;
  String? ageRange;
  String? gender;
  String? religion;
  String? sexualInclination;
  String? language;
  String? region;
  String? state;
  String? ageRangeOfRoommate;
  String? genderOfRoommate;
  String? religionOfRoommate;
  String? sexualInclinationOfRoommate;
  String? languageOfRoommate;
  String? educationalLevelOfRoommate;
  String? smokingLevelOfRoommate;
  String? petToleranceLevelOfRoommate;
  String? drinkingLevelOfRoommate;
  String? cleaningLevelOfRoommate;
  int? apartmentPrice;
  String? apartmentLocation;
  dynamic houseType;
  int? houseOccupants;
  String? mininumSharingDuration;
  String? maximumSharingDuration;
  int? numberOfRooms;
  String? kitchenType;
  int? numberOfRestrooms;
  String? restRoomType;
  List<String>? homeAmenities;
  String? additionalInformation;
  List<String>? photos;
  dynamic user;

  Data({
    this.id,
    this.fullName,
    this.ageRange,
    this.gender,
    this.religion,
    this.sexualInclination,
    this.language,
    this.region,
    this.state,
    this.ageRangeOfRoommate,
    this.genderOfRoommate,
    this.religionOfRoommate,
    this.sexualInclinationOfRoommate,
    this.languageOfRoommate,
    this.educationalLevelOfRoommate,
    this.smokingLevelOfRoommate,
    this.petToleranceLevelOfRoommate,
    this.drinkingLevelOfRoommate,
    this.cleaningLevelOfRoommate,
    this.apartmentPrice,
    this.apartmentLocation,
    this.houseType,
    this.houseOccupants,
    this.mininumSharingDuration,
    this.maximumSharingDuration,
    this.numberOfRooms,
    this.kitchenType,
    this.numberOfRestrooms,
    this.restRoomType,
    this.homeAmenities,
    this.additionalInformation,
    this.photos,
    this.user,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'] as dynamic;
    fullName = json['fullName'] as String?;
    ageRange = json['ageRange'] as String?;
    gender = json['gender'] as String?;
    religion = json['religion'] as String?;
    sexualInclination = json['sexualInclination'] as String?;
    language = json['language'] as String?;
    region = json['region'] as String?;
    state = json['state'] as String?;
    ageRangeOfRoommate = json['ageRangeOfRoommate'] as String?;
    genderOfRoommate = json['genderOfRoommate'] as String?;
    religionOfRoommate = json['religionOfRoommate'] as String?;
    sexualInclinationOfRoommate =
        json['sexualInclinationOfRoommate'] as String?;
    languageOfRoommate = json['languageOfRoommate'] as String?;
    educationalLevelOfRoommate = json['educationalLevelOfRoommate'] as String?;
    smokingLevelOfRoommate = json['smokingLevelOfRoommate'] as String?;
    petToleranceLevelOfRoommate =
        json['petToleranceLevelOfRoommate'] as String?;
    drinkingLevelOfRoommate = json['drinkingLevelOfRoommate'] as String?;
    cleaningLevelOfRoommate = json['cleaningLevelOfRoommate'] as String?;
    apartmentPrice = json['apartmentPrice'] as int?;
    apartmentLocation = json['apartmentLocation'] as String?;
    houseType = json['houseType'] as dynamic;
    houseOccupants = json['houseOccupants'] as int?;
    mininumSharingDuration = json['mininumSharingDuration'] as String?;
    maximumSharingDuration = json['maximumSharingDuration'] as String?;
    numberOfRooms = json['numberOfRooms'] as int?;
    kitchenType = json['kitchenType'] as String?;
    numberOfRestrooms = json['numberOfRestrooms'] as int?;
    restRoomType = json['restRoomType'] as String?;
    homeAmenities = (json['homeAmenities'] as List?)
        ?.map((dynamic e) => e as String)
        .toList();
    additionalInformation = json['additionalInformation'] as String?;
    photos =
        (json['photos'] as List?)?.map((dynamic e) => e as String).toList();
    user = json['user'] as dynamic;
  }
}
// 643042e6c055f15a3751b877