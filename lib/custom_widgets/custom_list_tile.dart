import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {required this.size,
      required this.onChanged,
      required this.value,
      this.isBold = true,
      required this.text,
      super.key});
  final Size size;
  final String text;
  final bool isBold;
  final ValueChanged<bool?> onChanged;
  final bool value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.4,
          child: Checkbox(
              value: value,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              fillColor: MaterialStateProperty.all(purple),
              checkColor: white,
              side: const BorderSide(width: 1, color: titleColor),
              onChanged: onChanged),
        ),
        const SizedBox(width: 15),
        Text(
          text,
          style: detailTitleStyle.copyWith(
              color: isBold ? lightBlack : titleColor),
        )
      ],
    );
  }
}
