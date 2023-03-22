class MessageModel {
  String? sender;
  String? message;
  String? date;

  MessageModel({
    this.sender,
    this.message,
    this.date,
  });

  MessageModel.fromJson(Map<String, dynamic> json) {
    sender = json['sender'] as String?;
    message = json['message'] as String?;
    date = json['date'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['sender'] = sender;
    json['message'] = message;
    json['date'] = date;
    return json;
  }
}
