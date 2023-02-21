class BaseHeaders {
  static const Map<String, String> header = {
    "accept": "*/*",
    "Content-Type": "application/json"
  };

  static const Map<String, String> authHeader = {
    "accept": "*/*",
    "Content-Type": "application/json",
    "Authorization": "Bearer ",
  };
}
