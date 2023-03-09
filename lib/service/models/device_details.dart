class DeviceDetailsModel {
  String? name;
  String? deviceName;
  String? model;
  String? version;
  String? id;

  DeviceDetailsModel({
    this.name,
    this.deviceName,
    this.model,
    this.version,
    this.id,
  });

  DeviceDetailsModel.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    deviceName = json['deviceName'] as String?;
    model = json['model'] as String?;
    version = json['version'] as String?;
    id = json['id'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    json['deviceName'] = deviceName;
    json['model'] = model;
    json['version'] = version;
    json['id'] = id;
    return json;
  }
}
