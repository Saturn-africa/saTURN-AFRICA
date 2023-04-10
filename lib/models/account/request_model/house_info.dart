class HouseInfoRequest {
  dynamic apartmentPrice;
  String? apartmentLocation;
  String? houseType;
  dynamic houseOccupants;
  String? mininumSharingDuration;
  String? maximumSharingDuration;
  dynamic numberOfRooms;
  String? kitchenType;
  dynamic numberOfRestrooms;
  String? restRoomType;
  List<String>? homeAmenities;

  HouseInfoRequest({
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
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['apartmentPrice'] = apartmentPrice;
    json['apartmentLocation'] = apartmentLocation;
    json['houseType'] = houseType;
    json['houseOccupants'] = houseOccupants;
    json['mininumSharingDuration'] = mininumSharingDuration;
    json['maximumSharingDuration'] = maximumSharingDuration;
    json['numberOfRooms'] = numberOfRooms;
    json['kitchenType'] = kitchenType;
    json['numberOfRestrooms'] = numberOfRestrooms;
    json['restRoomType'] = restRoomType;
    json['homeAmenities'] = homeAmenities;
    return json;
  }
}
