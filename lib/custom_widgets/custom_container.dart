import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class CustomCardContainer extends StatelessWidget {
  const CustomCardContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  final dynamic text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: amenityBg,
      ),
      child: Text(
        text.toString(),
        style: amenityText,
      ),
    );
  }
}
