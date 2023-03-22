class RegistrationResponse {
  String? message;
  Data? data;

  RegistrationResponse({
    this.message,
    this.data,
  });

  RegistrationResponse.fromJson(Map<String, dynamic> json) {
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
  UserData? data;

  Data({
    this.message,
    this.data,
  });

  Data.fromJson(Map<String, dynamic> json) {
    message = json['message'] as String?;
    data = (json['data'] as Map<String, dynamic>?) != null
        ? UserData.fromJson(json['data'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['message'] = message;
    json['data'] = data?.toJson();
    return json;
  }
}

class UserData {
  String? username;
  String? password;
  String? email;
  bool? isVerified;
  bool? activated;
  String? phoneNumber;
  String? id;
  String? createdAt;
  String? updatedAt;
  int? v;

  UserData({
    this.username,
    this.password,
    this.email,
    this.isVerified,
    this.activated,
    this.phoneNumber,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.v,
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
    json['id'] = id;
    return json;
  }
}
