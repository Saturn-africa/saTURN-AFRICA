import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/repositories/room_owner_repository.dart';

class OwnerRequestProvider extends RoomOwnerRepository with ChangeNotifier {
  bool _requestClicked = false;

  bool get requestClicked => _requestClicked;

  void onRequestClick() {
    _requestClicked = !_requestClicked;
    notifyListeners();
  }

  Future sendOwnerRequestMethod(context, String cardId) async {
    try {
      onRequestClick();
      var response = await sendOwnerRequestRepo(context, cardId);
      if (response != null) {
        showSnack(context, "03", "Request is successfully sent");
      } else {
        showSnack(context, "02", "Unable to send request");
      }
      _requestClicked ? onRequestClick() : null;
    } catch (_) {
      showSnack(context, "02", "Unable to send request");
      _requestClicked ? onRequestClick() : null;
    }
  }
}
