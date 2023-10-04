class FileUploadResponse {
  bool? error;
  List<String>? data;

  FileUploadResponse({
    this.error,
    this.data,
  });

  FileUploadResponse.fromJson(Map<String, dynamic> json) {
    error = json['error'] as bool?;
    data = (json['data'] as List?)?.map((dynamic e) => e as String).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['error'] = error;
    json['data'] = data;
    return json;
  }
}
