class ResendOtpResponse {
  int? code;
  Data? data;
  dynamic errors;
  String? message;
  String? status;

  ResendOtpResponse({
    this.code,
    this.data,
    this.errors,
    this.message,
    this.status,
  });

  ResendOtpResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'] as int?;
    data = (json['data'] as Map<String, dynamic>?) != null
        ? Data.fromJson(json['data'] as Map<String, dynamic>)
        : null;
    errors = json['errors'];
    message = json['message'] as String?;
    status = json['status'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['code'] = code;
    json['data'] = data?.toJson();
    json['errors'] = errors;
    json['message'] = message;
    json['status'] = status;
    return json;
  }
}

class Data {
  String? businessUid;
  String? reference;
  Channel? channel;
  String? token;
  String? status;

  Data({
    this.businessUid,
    this.reference,
    this.channel,
    this.token,
    this.status,
  });

  Data.fromJson(Map<String, dynamic> json) {
    businessUid = json['business_uid'] as String?;
    reference = json['reference'] as String?;
    channel = (json['channel'] as Map<String, dynamic>?) != null
        ? Channel.fromJson(json['channel'] as Map<String, dynamic>)
        : null;
    token = json['token'] as String?;
    status = json['status'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['business_uid'] = businessUid;
    json['reference'] = reference;
    json['channel'] = channel?.toJson();
    json['token'] = token;
    json['status'] = status;
    return json;
  }
}

class Channel {
  dynamic id;
  String? name;
  bool? isActive;

  Channel({
    this.id,
    this.name,
    this.isActive,
  });

  Channel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as dynamic;
    name = json['name'] as String?;
    isActive = json['is_active'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['name'] = name;
    json['is_active'] = isActive;
    return json;
  }
}
