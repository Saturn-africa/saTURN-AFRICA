class HouseInfoSeekerRequest {
  String? houseBudget;
  String? preferedLocation1;
  String? preferedLocation2;
  String? preferedLocation3;
  List<String>? houseType;
  String? minimumSharingDuration;
  String? maximumSharingDuration;

  HouseInfoSeekerRequest({
    this.houseBudget,
    this.preferedLocation1,
    this.preferedLocation2,
    this.preferedLocation3,
    this.houseType,
    this.minimumSharingDuration,
    this.maximumSharingDuration,
  });

  HouseInfoSeekerRequest.fromJson(Map<String, dynamic> json) {
    houseBudget = json['houseBudget'] as String?;
    preferedLocation1 = json['preferedLocation1'] as String?;
    preferedLocation2 = json['preferedLocation2'] as String?;
    preferedLocation3 = json['preferedLocation3'] as String?;
    houseType =
        (json['houseType'] as List?)?.map((dynamic e) => e as String).toList();
    minimumSharingDuration = json['minimumSharingDuration'] as String?;
    maximumSharingDuration = json['maximumSharingDuration'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['houseBudget'] = houseBudget;
    json['preferedLocation1'] = preferedLocation1;
    json['preferedLocation2'] = preferedLocation2;
    json['preferedLocation3'] = preferedLocation3;
    json['houseType'] = houseType;
    json['minimumSharingDuration'] = minimumSharingDuration;
    json['maximumSharingDuration'] = maximumSharingDuration;
    return json;
  }
}
