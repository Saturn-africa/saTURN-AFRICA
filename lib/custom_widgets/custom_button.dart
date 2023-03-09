import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);
  final Function()? onPressed;
  final Widget text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
          onPressed: onPressed!,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: purple,
            elevation: 3,
            shadowColor: Colors.grey[100],
          ),
          child: text),
    );
  }
}
