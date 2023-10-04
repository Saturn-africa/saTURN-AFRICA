class OwnerPersonalInfoRequest {
  String? fullName;
  String? ageRange;
  String? gender;
  String? religion;
  String? sexualInclination;
  String? language;
  String? region;
  String? state;

  OwnerPersonalInfoRequest({
    this.fullName,
    this.ageRange,
    this.gender,
    this.religion,
    this.sexualInclination,
    this.language,
    this.region,
    this.state,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['fullName'] = fullName;
    json['ageRange'] = ageRange;
    json['gender'] = gender;
    json['religion'] = religion;
    json['sexualInclination'] = sexualInclination;
    json['language'] = language;
    json['region'] = region;
    json['state'] = state;
    return json;
  }
}
