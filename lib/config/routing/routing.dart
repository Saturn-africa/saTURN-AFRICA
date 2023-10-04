import 'package:flutter/material.dart';

class RoutingService {
  static pushRouting(BuildContext context, Widget screen) {
    return Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  static pushFullScreenRouting(BuildContext context, Widget screen) {
    return Navigator.of(context, rootNavigator: true).push(
        MaterialPageRoute(fullscreenDialog: true, builder: (_) => screen));
  }

  static pushReplacementRouting(BuildContext context, Widget screen) {
    return Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => screen));
  }

  static popRouting(BuildContext context) {
    return Navigator.of(context).pop();
  }

  static popUntilRouteIsFirstRouting(BuildContext context) {
    return Navigator.popUntil(context, (route) => route.isFirst);
  }

  static pushAndPopUntilRouteIsFirst(BuildContext context, Widget screen) {
    return Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (_) => screen), (route) => route.isFirst);
  }

  static pushAndRemoveAllRoute(BuildContext context, Widget screen) {
    return Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => screen), (route) => false);
  }
}
