class UserDetailsModel {
  String? message;
  Data? data;

  UserDetailsModel({
    this.message,
    this.data,
  });

  UserDetailsModel.fromJson(Map<String, dynamic> json) {
    message = json['message'] as String?;
    data = (json['data'] as Map<String, dynamic>?) != null
        ? Data.fromJson(json['data'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['message'] = message;
    json['data'] = data?.toJson();
    return json;
  }
}

class Data {
  String? id;
  String? username;
  String? password;
  String? email;
  bool? isVerified;
  bool? activated;
  String? phoneNumber;
  List<String>? roomOwnerCards;
  List<dynamic>? roomSeekerCards;
  String? photo;
  String? createdAt;
  String? updatedAt;
  int? v;
  String? otpCode;
  String? otpReference;
  String? refreshToken;
  String? role;

  Data({
    this.id,
    this.username,
    this.password,
    this.email,
    this.isVerified,
    this.activated,
    this.phoneNumber,
    this.roomOwnerCards,
    this.roomSeekerCards,
    this.photo,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.otpCode,
    this.otpReference,
    this.refreshToken,
    this.role,
  });

  Data.fromJson(Map<String, dynamic> json) {
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
    photo = json['photo'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    v = json['__v'] as int?;
    otpCode = json['otpCode'] as String?;
    otpReference = json['otpReference'] as String?;
    refreshToken = json['refreshToken'] as String?;
    role = json['role'] as String?;
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
    json['photo'] = photo;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['__v'] = v;
    json['otpCode'] = otpCode;
    json['otpReference'] = otpReference;
    json['refreshToken'] = refreshToken;
    json['role'] = role;
    json['id'] = id;
    return json;
  }
}
