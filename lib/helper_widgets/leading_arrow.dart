import 'package:flutter/material.dart';

Widget leadingIcon(context) {
  return IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.pop(context, true);
      });
}
