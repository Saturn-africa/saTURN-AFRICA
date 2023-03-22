import 'package:flutter/material.dart';
import 'package:saturn/customer_info/find_roommates/shortlisted/shortlisted_owner.dart';

import '../customer_info/find_roommates/account/account_screen.dart';
import '../customer_info/find_roommates/room_seeker/explore/seeker_explore.dart';

class HomeProvider extends ChangeNotifier {
  List<Widget> seekerScreens = [
    const ShortlistedScreen(),
    const SeekerExplorePage(),
    const Profile()
  ];

  List<Widget> ownerScreens = [];
  List<Widget> rentScreens = [];
  int _selectedIndex = 1;

  int get selectedIndex => _selectedIndex;
  // set updateIndex(index) => _selectedIndex = index;

  void updateIndex(index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
