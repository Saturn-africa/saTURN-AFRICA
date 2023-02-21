import 'package:flutter/material.dart';

void showSnack(BuildContext context, String title, Color color) {
  final snackBar = SnackBar(
    margin: EdgeInsets.only(
      bottom: MediaQuery.of(context).size.height / 1.15,
      left: 10,
      right: 10,
    ),
    backgroundColor: color,
    content: Text(
      title,
      textAlign: TextAlign.left,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    behavior: SnackBarBehavior.floating,
    duration: const Duration(seconds: 2),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
