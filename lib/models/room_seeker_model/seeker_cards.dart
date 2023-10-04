class SeekerCardsResponse {
  String? message;
  ResponsData? data;
  int? count;
  int? total;

  SeekerCardsResponse({
    this.message,
    this.data,
    this.count,
    this.total,
  });

  SeekerCardsResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'] as String?;
    data = (json['data'] as Map<String, dynamic>?) != null
        ? ResponsData.fromJson(json['data'] as Map<String, dynamic>)
        : null;
    count = json['count'] as int?;
    total = json['total'] as int?;
  }
}

class ResponsData {
  List<SeekerData>? data;

  ResponsData({
    this.data,
  });

  ResponsData.fromJson(Map<String, dynamic> json) {
    data = (json['data'] as List?)
        ?.map((dynamic e) => SeekerData.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}

class SeekerData {
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
  List<String>? houseType;
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
  User? user;

  SeekerData({
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

  SeekerData.fromJson(Map<String, dynamic> json) {
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
    houseType =
        (json['houseType'] as List?)?.map((dynamic e) => e as String).toList();
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
    user = (json['user'] as Map<String, dynamic>?) != null
        ? User.fromJson(json['user'] as Map<String, dynamic>)
        : null;
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
  List<dynamic>? roomOwnerCards;
  List<String>? roomSeekerCards;
  String? createdAt;
  String? updatedAt;
  int? v;
  String? otpCode;
  String? otpReference;
  String? refreshToken;
  String? role;
  String? accountActivationPaymentRef;

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
    this.accountActivationPaymentRef,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['_id'] as String?;
    username = json['username'] as String?;
    password = json['password'] as String?;
    email = json['email'] as String?;
    isVerified = json['isVerified'] as bool?;
    activated = json['activated'] as bool?;
    phoneNumber = json['phoneNumber'] as String?;
    roomOwnerCards = json['roomOwnerCards'] as List?;
    roomSeekerCards = (json['roomSeekerCards'] as List?)
        ?.map((dynamic e) => e as String)
        .toList();
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    v = json['__v'] as int?;
    otpCode = json['otpCode'] as String?;
    otpReference = json['otpReference'] as String?;
    refreshToken = json['refreshToken'] as String?;
    role = json['role'] as String?;
    accountActivationPaymentRef =
        json['accountActivationPaymentRef'] as String?;
    id = json['id'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['_id'] = id;
    json['username'] = username;
    json['password'] = password;
    json['email'] = email;
    json['isVerified'] = isVerified;
    json['activated'] = activated;
    json['phoneNumber'] = phoneNumber;
    json['roomOwnerCards'] = roomOwnerCards;
    json['roomSeekerCards'] = roomSeekerCards;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['__v'] = v;
    json['otpCode'] = otpCode;
    json['otpReference'] = otpReference;
    json['refreshToken'] = refreshToken;
    json['role'] = role;
    json['accountActivationPaymentRef'] = accountActivationPaymentRef;
    json['id'] = id;
    return json;
  }
}
