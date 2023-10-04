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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['message'] = message;
    json['data'] = data?.toJson();
    return json;
  }
}

class Data {
  String? message;
  DataToken? data;

  Data({
    this.message,
    this.data,
  });

  Data.fromJson(Map<String, dynamic> json) {
    message = json['message'] as String?;
    data = (json['data'] as Map<String, dynamic>?) != null
        ? DataToken.fromJson(json['data'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['message'] = message;
    json['data'] = data?.toJson();
    return json;
  }
}

class DataToken {
  String? accessToken;
  String? refreshToken;
  User? user;

  DataToken({
    this.accessToken,
    this.refreshToken,
    this.user,
  });

  DataToken.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'] as String?;
    refreshToken = json['refreshToken'] as String?;
    user = (json['user'] as Map<String, dynamic>?) != null
        ? User.fromJson(json['user'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['accessToken'] = accessToken;
    json['refreshToken'] = refreshToken;
    json['user'] = user?.toJson();
    return json;
  }
}

class User {
  List<dynamic>? roomOwnerCards;
  List<dynamic>? roomSeekerCards;
  String? id;
  String? username;
  String? password;
  String? email;
  bool? isVerified;
  bool? activated;
  String? phoneNumber;
  String? createdAt;
  String? updatedAt;
  int? v;
  String? otpCode;
  String? otpReference;
  String? refreshToken;

  User({
    this.roomOwnerCards,
    this.roomSeekerCards,
    this.id,
    this.username,
    this.password,
    this.email,
    this.isVerified,
    this.activated,
    this.phoneNumber,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.otpCode,
    this.otpReference,
    this.refreshToken,
  });

  User.fromJson(Map<String, dynamic> json) {
    roomOwnerCards = json['roomOwnerCards'] as List?;
    roomSeekerCards = json['roomSeekerCards'] as List?;
    username = json['username'] as String?;
    password = json['password'] as String?;
    email = json['email'] as String?;
    isVerified = json['isVerified'] as bool?;
    activated = json['activated'] as bool?;
    phoneNumber = json['phoneNumber'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    v = json['__v'] as int?;
    otpCode = json['otpCode'] as String?;
    otpReference = json['otpReference'] as String?;
    refreshToken = json['refreshToken'] as String?;
    id = json['id'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['roomOwnerCards'] = roomOwnerCards;
    json['roomSeekerCards'] = roomSeekerCards;
    json['_id'] = id;
    json['username'] = username;
    json['password'] = password;
    json['email'] = email;
    json['isVerified'] = isVerified;
    json['activated'] = activated;
    json['phoneNumber'] = phoneNumber;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['__v'] = v;
    json['otpCode'] = otpCode;
    json['otpReference'] = otpReference;
    json['refreshToken'] = refreshToken;
    json['id'] = id;
    return json;
  }
}
