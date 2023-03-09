import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/colors.dart';

class CustomSnackbar {
  static responseSnackbar(BuildContext context, Color color, String message) {
    final snackBar = SnackBar(
        // margin: EdgeInsets.only(
        //   bottom: MediaQuery.of(context).size.height * 0.8,
        //   left: 10,
        //   right: 10,
        // ),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
        padding: const EdgeInsets.all(10),
        elevation: 0.15,
        backgroundColor: white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: color, width: 2),
          borderRadius: BorderRadius.circular(4),
        ),
        action: SnackBarAction(
          label: 'Dismiss',
          textColor: deepBlack,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
        content: Text(
          message,
          style: TextStyle(color: color, fontFamily: "Inter", fontSize: 14),
        ));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
