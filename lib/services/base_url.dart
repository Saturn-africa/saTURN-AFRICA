class BaseURL {
  static const String base = "https://saturn-api.fly.dev/api/v1/";

  final String signUp = "${base}auth/signup";

  final String signIn = "${base}auth/signin";

  final String refresh = "${base}auth/refresh";

  final String logout = "${base}auth/logout";

  final String userDetails = "${base}auth/me";
}
