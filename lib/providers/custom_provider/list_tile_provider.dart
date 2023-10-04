import 'package:flutter/cupertino.dart';
import 'package:saturn/helper_widgets/colors.dart';

class ListTileProvider extends ChangeNotifier {
  Color activateBg = purple;
  Color activateText = white;
  Color profileBg = purple;
  Color profileText = white;
  Color historyBg = purple;
  Color historyText = white;
  Color favoriteBg = purple;
  Color favoriteText = white;
  Color notifBg = purple;
  Color notifText = white;
  Color settingBg = purple;
  Color settingText = white;
  Color inviteBg = purple;
  Color inviteText = white;
  Color helpBg = purple;
  Color helpText = white;
  Color logoutBg = purple;
  Color logoutText = white;

  void refreshAll() {
    activateBg = purple;
    activateText = white;
    profileBg = purple;
    profileText = white;
    historyBg = purple;
    historyText = white;
    favoriteBg = purple;
    favoriteText = white;
    notifBg = purple;
    notifText = white;
    settingBg = purple;
    settingText = white;
    inviteBg = purple;
    inviteText = white;
    helpBg = purple;
    helpText = white;
    logoutBg = purple;
    logoutText = white;
    notifyListeners();
  }

  void switchColor(tile) {
    switch (tile) {
      case "activate":
        refreshAll();
        activateBg = white;
        activateText = purple;
        break;
      case "profile":
        refreshAll();
        profileBg = white;
        profileText = purple;
        break;
      case "history":
        refreshAll();
        historyBg = white;
        historyText = purple;
        break;
      case "favorite":
        refreshAll();
        favoriteBg = white;
        favoriteText = purple;
        break;
      case "notif":
        refreshAll();
        notifBg = white;
        notifText = purple;
        break;
      case "setting":
        refreshAll();
        settingBg = white;
        settingText = purple;
        break;
      case "invite":
        refreshAll();
        inviteBg = white;
        inviteText = purple;
        break;
      case "help":
        refreshAll();
        helpBg = white;
        helpText = purple;
        break;
      case "logout":
        refreshAll();
        logoutBg = white;
        logoutText = purple;
        break;
      default:
        refreshAll();
        break;
    }
    notifyListeners();
  }
}
