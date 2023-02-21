import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({required this.text1, required this.text2, super.key});
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(text: text1, style: regTextStyle, children: [
        TextSpan(
            text: text2,
            style: const TextStyle(
                color: Colors.redAccent,
                fontSize: 15,
                fontWeight: FontWeight.w400))
      ]),
    );
  }
}
