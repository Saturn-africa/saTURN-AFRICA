class RoommatePrefRequest {
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

  RoommatePrefRequest({
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
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['ageRangeOfRoommate'] = ageRangeOfRoommate;
    json['genderOfRoommate'] = genderOfRoommate;
    json['religionOfRoommate'] = religionOfRoommate;
    json['sexualInclinationOfRoommate'] = sexualInclinationOfRoommate;
    json['languageOfRoommate'] = languageOfRoommate;
    json['educationalLevelOfRoommate'] = educationalLevelOfRoommate;
    json['smokingLevelOfRoommate'] = smokingLevelOfRoommate;
    json['petToleranceLevelOfRoommate'] = petToleranceLevelOfRoommate;
    json['drinkingLevelOfRoommate'] = drinkingLevelOfRoommate;
    json['cleaningLevelOfRoommate'] = cleaningLevelOfRoommate;
    return json;
  }
}
