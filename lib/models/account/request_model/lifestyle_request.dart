class LifestyleInfoRequest {
  String? educationalLevel;
  String? smokingLevel;
  String? petToleranceLevel;
  String? drinkingLevel;
  String? cleaningLevel;

  LifestyleInfoRequest({
    this.educationalLevel,
    this.smokingLevel,
    this.petToleranceLevel,
    this.drinkingLevel,
    this.cleaningLevel,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['educationalLevel'] = educationalLevel;
    json['smokingLevel'] = smokingLevel;
    json['petToleranceLevel'] = petToleranceLevel;
    json['drinkingLevel'] = drinkingLevel;
    json['cleaningLevel'] = cleaningLevel;
    return json;
  }
}
