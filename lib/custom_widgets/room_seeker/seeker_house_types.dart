import 'package:flutter/material.dart';
import 'package:saturn/custom_widgets/custom_container.dart';

List<Widget> getHouseTypeList(List<String> houseTypes) {
  List<Widget> house = [];
  for (var type in houseTypes) {
    house.add(CustomCardContainer(text: type));
    house.add(const SizedBox(width: 10));
  }
  return house;
}
