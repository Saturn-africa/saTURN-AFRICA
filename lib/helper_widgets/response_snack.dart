import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/snack_bar.dart';

showSnack(BuildContext context, String responseCode, String message) {
  switch (responseCode) {
    case "00":
      return CustomSnackbar.responseSnackbar(context, black, message);
    case "02":
      return CustomSnackbar.responseSnackbar(context, redAccent, message);
    default:
      return CustomSnackbar.responseSnackbar(context, redAccent, message);
  }
}
