import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichTextWidget extends StatelessWidget {
  const CustomRichTextWidget({
    Key? key,
    required this.defaultStyle,
    required this.linkStyle,
    required this.onTap,
    this.firstText,
    this.lastText,
  }) : super(key: key);

  final TextStyle defaultStyle;
  final TextStyle linkStyle;
  final Function() onTap;
  final String? firstText;
  final String? lastText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: RichText(
        text: TextSpan(
          style: defaultStyle,
          children: <TextSpan>[
            TextSpan(text: firstText),
            TextSpan(
                text: lastText,
                style: linkStyle,
                recognizer: TapGestureRecognizer()..onTap = onTap)
          ],
        ),
      ),
    );
  }
}
