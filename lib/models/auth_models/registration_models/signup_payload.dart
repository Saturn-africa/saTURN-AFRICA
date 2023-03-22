class SignupModel {
  String? username;
  String? password;
  String? passwordConfirm;
  String? email;
  String? phoneNumber;

  SignupModel({
    this.username,
    this.password,
    this.passwordConfirm,
    this.email,
    this.phoneNumber,
  });

  SignupModel.fromJson(Map<String, dynamic> json) {
    username = json['username'] as String?;
    password = json['password'] as String?;
    passwordConfirm = json['passwordConfirm'] as String?;
    email = json['email'] as String?;
    phoneNumber = json['phoneNumber'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['username'] = username;
    json['password'] = password;
    json['passwordConfirm'] = passwordConfirm;
    json['email'] = email;
    json['phoneNumber'] = phoneNumber;
    return json;
  }
}
