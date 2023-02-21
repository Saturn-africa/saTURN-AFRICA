import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/colors.dart';

class CustomCardWhiteButton extends StatelessWidget {
  const CustomCardWhiteButton(
      {required this.onPressed, required this.child, Key? key})
      : super(key: key);
  final Function()? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(10),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
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

class CustomCardButtonWidget extends StatelessWidget {
  const CustomCardButtonWidget({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);
  final Function()? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          child: child),
    );
  }
}
