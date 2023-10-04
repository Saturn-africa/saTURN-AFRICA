class SignInResponse {
  String? message;
  Data? data;

  SignInResponse({
    this.message,
    this.data,
  });

  SignInResponse.fromJson(Map<String, dynamic> json) {
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
  String? accessToken;
  String? refreshToken;
  UserData? user;

  Data({
    this.accessToken,
    this.refreshToken,
    this.user,
  });

  Data.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'] as String?;
    refreshToken = json['refreshToken'] as String?;
    user = (json['user'] as Map<String, dynamic>?) != null
        ? UserData.fromJson(json['user'] as Map<String, dynamic>)
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

class UserData {
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

  UserData({
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
  });

  UserData.fromJson(Map<String, dynamic> json) {
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
    id = json['id'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
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
    json['id'] = id;
    return json;
  }
}
