class RefreshTokenResponse {
  String? message;
  Data? data;

  RefreshTokenResponse({
    this.message,
    this.data,
  });

  RefreshTokenResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'] as String?;
    data = (json['data'] as Map<String, dynamic>?) != null
        ? Data.fromJson(json['data'] as Map<String, dynamic>)
        : null;
  }
}

class Data {
  String? accessToken;
  String? refreshToken;
  User? user;

  Data({
    this.accessToken,
    this.refreshToken,
    this.user,
  });

  Data.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'] as String?;
    refreshToken = json['refreshToken'] as String?;
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
  List<String>? roomOwnerCards;
  List<dynamic>? roomSeekerCards;
  String? createdAt;
  String? updatedAt;
  int? v;
  String? otpCode;
  String? otpReference;
  String? refreshToken;

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
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['_id'] as String?;
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
    v = json['__v'] as int?;
    otpCode = json['otpCode'] as String?;
    otpReference = json['otpReference'] as String?;
    refreshToken = json['refreshToken'] as String?;
  }
}
