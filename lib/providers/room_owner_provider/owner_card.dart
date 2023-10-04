import 'package:flutter/material.dart';
import 'package:saturn/config/routing/routing.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/models/room_owner_model/owner_cards.dart';
import 'package:saturn/repositories/room_owner_repository.dart';

import '../../customer_info/find_roommates/room_owner/explore/view_details/view_detail.dart';

class OwnerCardProvider extends RoomOwnerRepository with ChangeNotifier {
  List<Data> ownerCardsList = [];
  bool _isLoading = false;
  bool _isViewClicked = false;
  int activeIndex = 0;
  int prevPage = 0;
  int page = 1;

  bool get isLoading => _isLoading;
  bool get isViewClicked => _isViewClicked;

  void refreshData() {
    _isLoading = false;
    notifyListeners();
  }

  void onViewClick() {
    _isViewClicked = !_isViewClicked;
    notifyListeners();
  }

  void indexValue(value, context) async {
    activeIndex = value;
    notifyListeners();
    if (value == ownerCardsList.length - 2) {
      page++;
      notifyListeners();
      await getRoomOwnerCard(context);
    }
  }

  Future getRoomOwnerCard(context) async {
    try {
      _isLoading = true;
      notifyListeners();
      var json = page == prevPage
          ? null
          : await getOwnerCards(context, page.toString());
      _isLoading ? false : null;
      notifyListeners();
      if (json != null) {
        OwnerCardsResponse response = OwnerCardsResponse.fromJson(json);
        ownerCardsList.addAll(response.data!.data!);
        prevPage = page;
        print("user ====>>> ${ownerCardsList[0].user}");
        print("card list ===>> ${ownerCardsList.length}");
      } else {
        showSnack(context, "02", "unable to get user cards");
      }
      notifyListeners();
    } catch (e) {
      _isLoading ? false : null;
      notifyListeners();
      showSnack(context, "02", "unable to get user cards");
    }
  }

  Future getRoomOwnerCardById(context, id) async {
    try {
      print("id ====>> $id");
      var json = await getOwnerCardById(context, id);
      _isViewClicked ? onViewClick() : null;
      if (json != null) {
        Data response = Data.fromJson(json["data"]);
        RoutingService.pushRouting(context, ViewDetailPage(data: response));
      } else {
        showSnack(context, "02", "unable to get card details");
      }
    } catch (e) {
      _isViewClicked ? onViewClick() : null;
      showSnack(context, "02", "Error getting card details");
    }
  }
}
