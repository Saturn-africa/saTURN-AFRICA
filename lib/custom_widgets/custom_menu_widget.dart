import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class CustomMenuWidget extends StatelessWidget {
  const CustomMenuWidget({
    Key? key,
    required this.bgColor,
    required this.textColor,
    required this.assetName,
    required this.size,
    required this.text,
  }) : super(key: key);

  final Color bgColor;
  final Color textColor;
  final String assetName;
  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: size.width * 0.42, bottom: 20),
      padding: const EdgeInsets.only(left: 15, right: 10, top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(40), bottomRight: Radius.circular(40)),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            assetName,
            color: textColor,
          ),
          SizedBox(width: size.width * 0.03),
          Text(
            text,
            style: menuTextStyle.copyWith(color: textColor),
          )
        ],
      ),
    );
  }
}
