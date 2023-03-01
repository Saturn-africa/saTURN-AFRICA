class SignInResponse {
  String? message;
  UserData? data;

  SignInResponse({
    this.message,
    this.data,
  });

  SignInResponse.fromJson(Map<String, dynamic> json) {
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
  String? accessToken;
  String? refreshToken;
  User? user;

  UserData({
    this.accessToken,
    this.refreshToken,
    this.user,
  });

  UserData.fromJson(Map<String, dynamic> json) {
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
  String? id;
  String? username;
  String? password;
  String? email;
  bool? isVerified;
  bool? activated;
  String? state;
  String? region;
  String? createdAt;
  String? updatedAt;
  int? v;
  String? refreshToken;

  User({
    this.id,
    this.username,
    this.password,
    this.email,
    this.isVerified,
    this.activated,
    this.state,
    this.region,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.refreshToken,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['_id'] as String?;
    username = json['username'] as String?;
    password = json['password'] as String?;
    email = json['email'] as String?;
    isVerified = json['isVerified'] as bool?;
    activated = json['activated'] as bool?;
    state = json['state'] as String?;
    region = json['region'] as String?;
    createdAt = json['createdAt'] as String?;
    updatedAt = json['updatedAt'] as String?;
    v = json['__v'] as int?;
    refreshToken = json['refreshToken'] as String?;
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
    json['state'] = state;
    json['region'] = region;
    json['createdAt'] = createdAt;
    json['updatedAt'] = updatedAt;
    json['__v'] = v;
    json['refreshToken'] = refreshToken;
    json['id'] = id;
    return json;
  }
}
