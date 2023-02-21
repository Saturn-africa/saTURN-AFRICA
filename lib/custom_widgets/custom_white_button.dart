import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/colors.dart';

class CustomWhiteButton extends StatelessWidget {
  const CustomWhiteButton(
      {required this.onPressed, required this.child, Key? key})
      : super(key: key);
  final Function()? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(15),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            side: const BorderSide(color: purple),
            backgroundColor: white,
            elevation: 3,
            shadowColor: Colors.grey[100],
          ),
          child: child),
    );
  }
}
