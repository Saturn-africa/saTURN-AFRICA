import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/colors.dart';

import '../../helper_widgets/text_style.dart';

List<Widget> getHouseTypeColumn(List<String> houseType, Size size) {
  List<Widget> houseList = [];
  for (var type in houseType) {
    houseList.add(SizedBox(
        width: size.width * 0.46,
        child: AutoSizeText(
          type,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: ownerCardSubtitleStyle.copyWith(color: deepBlack),
        )));
    houseList.add(const SizedBox(height: 10));
  }
  return houseList;
}
