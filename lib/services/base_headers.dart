class BaseHeaders {
  final Map<String, String> header = {
    "accept": "*/*",
    "Content-Type": "application/JSON"
  };

  Map<String, String> authHeader(auth) {
    return {
      "accept": "*/*",
      "Content-Type": "application/JSON",
      "Authorization": "Bearer $auth",
    };
  }
}
