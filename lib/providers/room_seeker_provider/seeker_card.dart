import 'package:flutter/material.dart';
import 'package:saturn/config/routing/routing.dart';
import 'package:saturn/customer_info/find_roommates/room_seeker/explore/view_detail/view_detail.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/models/room_seeker_model/seeker_cards.dart';
import 'package:saturn/repositories/room_seeker_repository.dart';

class SeekerCardProvider extends RoomSeekerRepository with ChangeNotifier {
  List<Data> seekerCardsList = [];
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
    if (value == seekerCardsList.length - 2) {
      page++;
      notifyListeners();
      await getRoomSeekerCard(context);
    }
  }

  Future getRoomSeekerCard(context) async {
    try {
      _isLoading = true;
      notifyListeners();
      print("isLoading -=== > >> $isLoading");
      var json = page == prevPage
          ? null
          : await getSeekerCards(context, page.toString());
      print("listtt +===>>> $seekerCardsList");
      _isLoading ? false : null;
      print("isLoading +===>>> $isLoading");
      notifyListeners();
      if (json != null) {
        SeekerCardsResponse response = SeekerCardsResponse.fromJson(json);
        seekerCardsList.addAll(response.data!.data!);
        prevPage = page;
        print("user ====>>> ${seekerCardsList[0].user}");
        print("card list ===>> ${seekerCardsList.length}");
      }
      notifyListeners();
    } catch (e) {
      _isLoading ? false : null;
      notifyListeners();
      showSnack(context, "02", "unable to get user cards");
    }
  }

  Future getRoomSeekerCardById(context, id) async {
    try {
      print("id ====>> $id");
      var json = await getSeekerCardById(context, id);
      _isViewClicked ? onViewClick() : null;
      if (json != null) {
        Data response = Data.fromJson(json["data"]);
        RoutingService.pushRouting(
            context, ViewDetailSeekerPage(data: response));
      } else {
        showSnack(context, "02", "unable to get card details");
      }
    } catch (e) {
      _isViewClicked ? onViewClick() : null;
      showSnack(context, "02", "Error getting card details");
    }
  }
}
