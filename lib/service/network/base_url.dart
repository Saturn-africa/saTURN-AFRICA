class BaseURL {
  static const String base = "https://saturn-api-lr6i.onrender.com/api/v1/";

  final String signUp = "${base}auth/signup";

  final String signIn = "${base}auth/signin";

  final String refresh = "${base}auth/refresh";

  final String logout = "${base}auth/logout";

  final String userDetails = "${base}auth/me";

  final String verifyOtp = "${base}sms/check-verification-code";
}
