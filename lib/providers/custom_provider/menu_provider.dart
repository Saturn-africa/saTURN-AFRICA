import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuProvider extends ChangeNotifier {
  bool frequent = false;
  bool chat = false;
  bool whatsapp = false;
  bool call = false;
  bool mail = false;
  bool instagram = false;
  bool linkedin = false;
  bool twitter = false;
  bool facebook = false;

  void refreshBool() {
    frequent = false;
    chat = false;
    whatsapp = false;
    call = false;
    mail = false;
    linkedin = false;
    facebook = false;
    twitter = false;
    instagram = false;
    notifyListeners();
  }

  void launchLink(context, url, type) async {
    // print("here at the launcher");
    if (await canLaunchUrl(url)) {
      // print("about to launch $type");
      await launchUrl(url);
      // print("launching $type");
    } else {
      showSnack(
          context, "02", "$type application is not installed on your device");
    }
    notifyListeners();
  }

  changeBool(field) {
    switch (field) {
      case "frequent":
        refreshBool();
        frequent = true;
        break;
      case "chat":
        refreshBool();
        chat = true;
        break;
      case "whatsapp":
        refreshBool();
        whatsapp = true;
        break;
      case "call":
        refreshBool();
        call = true;
        break;
      case "mail":
        refreshBool();
        mail = true;
        break;
      case "instagram":
        refreshBool();
        instagram = true;
        break;
      case "twitter":
        refreshBool();
        twitter = true;
        break;
      case "facebook":
        refreshBool();
        facebook = true;
        break;
      case "linkedin":
        refreshBool();
        linkedin = true;
        break;
      default:
        refreshBool();
        break;
    }
  }
}
