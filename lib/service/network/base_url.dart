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

  //    ======= Image Upload ====

  final String uploadImage = "${base}uploads/images";

  //  ======= Room Owner =====
  final String ownerPersonalInfo = "${base}room-owner-cards/personal-info";

  String ownerPersonalInfoUpdate(String id) {
    return "${base}room-owner-cards/$id/personal-info";
  }

  String ownerLifestyleInfoUpdate(String id) {
    return "${base}room-owner-cards/$id/lifechoice-info";
  }

  String ownerAdditionalInfoUpdate(String id) {
    return "${base}room-owner-cards/$id/additional-info";
  }

  String ownerRoomatePreference(String id) {
    return "${base}room-owner-cards/$id/roomate-preference";
  }

  String ownerHouseInfo(String id) {
    return "${base}room-owner-cards/$id/house-info";
  }

  //  ======= Room Seeker =====

  final String seekerPersonalInfo = "${base}room-seeker-cards/personal-info";
  String seekerPersonalInfoUpdate(String id) {
    return "${base}room-seeker-cards/$id/personal-info";
  }

  String seekerLifestyleInfoUpdate(String id) {
    return "${base}room-seeker-cards/$id/lifechoice-info";
  }

  String seekerAdditionalInfoUpdate(String id) {
    return "${base}room-seeker-cards/$id/additional-info";
  }

  String seekerRoomatePreference(String id) {
    return "${base}room-seeker-cards/$id/roomate-preference";
  }

  String seekerHouseInfo(String id) {
    return "${base}room-seeker-cards/$id/house-info";
  }
}
