class BaseURL {
  static const String base = "https://saturn-api-2.onrender.com/api/v1/";

  //    ======= AUTH ======

  final String signUp = "${base}auth/signup";

  final String signIn = "${base}auth/signin";

  final String refresh = "${base}auth/refresh";

  final String logout = "${base}auth/logout";

  final String userDetails = "${base}auth/me";

  String verifyOtp(String id) {
    return "${base}auth/$id/verify-otp";
  }

  String resendOtp(String id) {
    return "${base}auth/$id/resendOtp";
  }

  //      ====== USER ======

  final String userOwner = "${base}users/room-owner";

  final String userSeeker = "${base}users/room-seeker";

  //  ======= Room Owner =====
  final String ownerPersonalInfo = "${base}room-owner-cards/personal-info";

  //  ======= Room Seeker =====

  final String seekerPersonalInfo = "${base}room-seeker-cards/personal-info";
}
