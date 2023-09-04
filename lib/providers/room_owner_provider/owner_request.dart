import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/models/account/response_model/user_details.dart';
import 'package:saturn/repositories/room_owner_repository.dart';

import '../../service/storage/secure_storage/user_details.dart';

class OwnerRequestProvider extends RoomOwnerRepository with ChangeNotifier {
  bool _requestClicked = false;

  bool get requestClicked => _requestClicked;

  void onRequestClick() {
    _requestClicked = !_requestClicked;
    notifyListeners();
  }

  Future sendOwnerRequestMethod(context, String cardId) async {
    try {
      _requestClicked ? null : onRequestClick();
      UserDetailsModel user = await UserSecureStorage().getUpdatedUserData();
      if (user.data!.role!.toLowerCase() == "room seeker") {
        var json = await sendSeekerRequestRepo(context, cardId);
        if (json != null) {
          print("otput ====>>>> $json");
        }
      } else {
        _requestClicked ? onRequestClick() : null;
        showSnack(context, "02", "Can't send request to a room owner");
      }
      _requestClicked ? onRequestClick() : null;
    } catch (_) {
      print(_);
      showSnack(context, "02", "Error in connection... Try again");
      _requestClicked ? onRequestClick() : null;
    }
  }
}
