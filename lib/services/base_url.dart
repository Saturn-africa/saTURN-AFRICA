class BaseURL {
  static const String base = "https://saturn-api.fly.dev/api/v1/";

  static const String signUp = "${base}auth/signup";

  static const String signIn = "${base}auth/signin";

  static const String refresh = "${base}auth/refresh";

  static const String logout = "${base}auth/logout";

  static const String userDetails = "${base}auth/me";
}
