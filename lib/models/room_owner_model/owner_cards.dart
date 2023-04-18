class OwnerCardsResponse {
  String? message;
  ResponseData? data;

  OwnerCardsResponse({
    this.message,
    this.data,
  });

  OwnerCardsResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'] as String?;
    data = (json['data'] as Map<String, dynamic>?) != null
        ? ResponseData.fromJson(json['data'] as Map<String, dynamic>)
        : null;
  }
}

class ResponseData {
  dynamic total;
  String? count;
  List<Data>? data;

  ResponseData({
    this.total,
    this.count,
    this.data,
  });

  ResponseData.fromJson(Map<String, dynamic> json) {
    total = json['total'] as dynamic;
    count = json['count'] as String?;
    data = (json['data'] as List?)
        ?.map((dynamic e) => Data.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}

class Data {
  String? id;
  String? fullName;
  String? ageRange;
  String? gender;
  String? religion;
  String? sexualInclination;
  String? language;
  String? region;
  String? state;
  List<String>? homeAmenities;
  List<String>? photos;
  User? user;
  String? createdAt;
  String? updatedAt;
  dynamic v;
  String? ageRangeOfRoommate;
  String? cleaningLevelOfRoommate;
  String? drinkingLevelOfRoommate;
  String? educationalLevelOfRoommate;
  String? genderOfRoommate;
  String? languageOfRoommate;
  String? petToleranceLevelOfRoommate;
  String? religionOfRoommate;
  String? sexualInclinationOfRoommate;
  String? smokingLevelOfRoommate;
  String? apartmentLocation;
  dynamic apartmentPrice;
  dynamic houseOccupants;
  String? houseType;
  String? kitchenType;
  String? maximumSharingDuration;
  String? mininumSharingDuration;
  dynamic numberOfRestrooms;
  dynamic numberOfRooms;
  String? restRoomType;
  String? additionalInformation;

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
    this.homeAmenities,
    this.photos,
    this.user,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.ageRangeOfRoommate,
    this.cleaningLevelOfRoommate,
    this.drinkingLevelOfRoommate,
    this.educationalLevelOfRoommate,
    this.genderOfRoommate,
    this.languageOfRoommate,
    this.petToleranceLevelOfRoommate,
    this.religionOfRoommate,
    this.sexualInclinationOfRoommate,
    this.smokingLevelOfRoommate,
    this.apartmentLocation,
    this.apartmentPrice,
    this.houseOccupants,
    this.houseType,
    this.kitchenType,
    this.maximumSharingDuration,
    this.mininumSharingDuration,
    this.numberOfRestrooms,
    this.numberOfRooms,
    this.restRoomType,
    this.additionalInformation,
  });

  Data.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'] as String?;
    ageRange = json['ageRange'] as String?;
    gender = json['gender'] as String?;
    religion = json['religion'] as String?;
    sexualInclination = json['sexualInclination'] as String?;
    language = json['language'] as String?;
    region = json['region'] as String?;
    state = json['state'] as String?;
    homeAmenities = (json['homeAmenities'] as List?)
        ?.map((dynamic e) => e as String)
        .toList();
    photos =
        (json['photos'] as List?)?.map((dynamic e) => e as String).toList();
    user = (json['user'] as Map<String, dynamic>?) != null
        ? User.fromJson(json['user'] as Map<String, dynamic>)
        : null;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    v = json['__v'] as dynamic;
    ageRangeOfRoommate = json['ageRangeOfRoommate'] as String?;
    cleaningLevelOfRoommate = json['cleaningLevelOfRoommate'] as String?;
    drinkingLevelOfRoommate = json['drinkingLevelOfRoommate'] as String?;
    educationalLevelOfRoommate = json['educationalLevelOfRoommate'] as String?;
    genderOfRoommate = json['genderOfRoommate'] as String?;
    languageOfRoommate = json['languageOfRoommate'] as String?;
    petToleranceLevelOfRoommate =
        json['petToleranceLevelOfRoommate'] as String?;
    religionOfRoommate = json['religionOfRoommate'] as String?;
    sexualInclinationOfRoommate =
        json['sexualInclinationOfRoommate'] as String?;
    smokingLevelOfRoommate = json['smokingLevelOfRoommate'] as String?;
    apartmentLocation = json['apartmentLocation'] as String?;
    apartmentPrice = json['apartmentPrice'] as dynamic;
    houseOccupants = json['houseOccupants'] as dynamic;
    houseType = json['houseType'] as String?;
    kitchenType = json['kitchenType'] as String?;
    maximumSharingDuration = json['maximumSharingDuration'] as String?;
    mininumSharingDuration = json['mininumSharingDuration'] as String?;
    numberOfRestrooms = json['numberOfRestrooms'] as dynamic;
    numberOfRooms = json['numberOfRooms'] as dynamic;
    restRoomType = json['restRoomType'] as String?;
    additionalInformation = json['additionalInformation'] as String?;
    id = json['id'] as String?;
  }
}

class User {
  String? id;
  String? username;
  String? password;
  String? email;
  bool? isVerified;
  bool? activated;
  String? phoneNumber;
  List<String>? roomOwnerCards;
  List<dynamic>? roomSeekerCards;
  String? createdAt;
  String? updatedAt;
  dynamic v;
  String? otpCode;
  String? otpReference;
  String? refreshToken;
  String? role;

  User({
    this.id,
    this.username,
    this.password,
    this.email,
    this.isVerified,
    this.activated,
    this.phoneNumber,
    this.roomOwnerCards,
    this.roomSeekerCards,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.otpCode,
    this.otpReference,
    this.refreshToken,
    this.role,
  });

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'] as String?;
    password = json['password'] as String?;
    email = json['email'] as String?;
    isVerified = json['isVerified'] as bool?;
    activated = json['activated'] as bool?;
    phoneNumber = json['phoneNumber'] as String?;
    roomOwnerCards = (json['roomOwnerCards'] as List?)
        ?.map((dynamic e) => e as String)
        .toList();
    roomSeekerCards = json['roomSeekerCards'] as List?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    v = json['__v'] as dynamic;
    otpCode = json['otpCode'] as String?;
    otpReference = json['otpReference'] as String?;
    refreshToken = json['refreshToken'] as String?;
    role = json['role'] as String?;
    id = json['id'] as String?;
  }
}
