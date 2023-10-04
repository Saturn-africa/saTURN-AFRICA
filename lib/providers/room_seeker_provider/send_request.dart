import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/models/account/response_model/user_details.dart';
import 'package:saturn/repositories/room_seeker_repository.dart';
import 'package:saturn/service/storage/secure_storage/user_details.dart';

class SeekerRequestProvider extends RoomSeekerRepository with ChangeNotifier {
  bool _sendClicked = false;

  bool get sendClicked => _sendClicked;

  void onSendClick() {
    _sendClicked = !_sendClicked;
    notifyListeners();
  }

  Future seekerSendRequestMethod(context, String id) async {
    try {
      _sendClicked ? null : onSendClick();
      UserDetailsModel user = await UserSecureStorage().getUpdatedUserData();
      if (user.data!.role!.toLowerCase() == "room owner") {
        var json = await sendOwnerRequestRepo(context, id);
        if (json != null) {
          print("otput ====>>>> $json");
        }
      } else {
        _sendClicked ? onSendClick() : null;
        showSnack(context, "02", "Can't send request to a room seeker");
      }
      _sendClicked ? onSendClick() : null;
    } catch (e) {
      print(e);
      _sendClicked ? onSendClick() : null;
      showSnack(context, "03", "Error in connection.. Try again!");
    }
  }
}
