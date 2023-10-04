import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/colors.dart';

CircularProgressIndicator loadingIndicator({Color color = white}) {
  return CircularProgressIndicator(
    strokeWidth: 4,
    color: color,
  );
}
