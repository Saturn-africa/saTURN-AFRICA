class SignInModel {
  String? password;
  String? passwordConfirm;
  String? email;

  SignInModel({
    this.password,
    this.passwordConfirm,
    this.email,
  });

  SignInModel.fromJson(Map<String, dynamic> json) {
    password = json['password'] as String?;
    passwordConfirm = json['passwordConfirm'] as String?;
    email = json['email'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['password'] = password;
    json['passwordConfirm'] = passwordConfirm;
    json['email'] = email;
    return json;
  }
}
