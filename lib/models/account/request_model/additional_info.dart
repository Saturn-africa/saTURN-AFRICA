class AdditionalInfoOwnerTRequest {
  String? additionalInformation;
  List<dynamic>? photos;

  AdditionalInfoOwnerTRequest({
    this.additionalInformation,
    this.photos,
  });

  AdditionalInfoOwnerTRequest.fromJson(Map<String, dynamic> json) {
    additionalInformation = json['additionalInformation'] as String?;
    photos = json['photos'] as List?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['additionalInformation'] = additionalInformation;
    json['photos'] = photos;
    return json;
  }
}
