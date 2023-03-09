class BaseHeaders {
  final Map<String, String> header = {
    "accept": "application/json",
    "Content-Type": "application/json"
  };

  Map<String, String> authHeader(auth) {
    return {
      "accept": "application/json",
      "Content-Type": "application/JSON",
      "Authorization": "Bearer $auth",
    };
  }
}
