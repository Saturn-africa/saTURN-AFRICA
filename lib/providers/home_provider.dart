import 'package:flutter/material.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/explore/explore_owner.dart';
import 'package:saturn/customer_info/find_roommates/shortlisted/shortlisted_owner.dart';
import 'package:saturn/customer_info/homes_for_rent/explore/explore_page.dart';

import '../customer_info/find_roommates/account/account_screen.dart';
import '../customer_info/find_roommates/room_seeker/explore/seeker_explore.dart';

class HomeProvider extends ChangeNotifier {
  List<Widget> seekerScreens = [
    const ShortlistedScreen(),
    const SeekerExplorePage(),
    const Profile()
  ];

  List<Widget> ownerScreens = [
    const ShortlistedScreen(),
    const OwnerExplore(),
    const Profile()
  ];

  List<Widget> rentScreens = [
    const ShortlistedScreen(),
    const HomesExplore(),
    const Profile()
  ];

  int _selectedIndex = 1;
  int _ownerSelectedIndex = 1;
  int _rentSelectedIndex = 1;

  int get selectedIndex => _selectedIndex;
  int get ownerSelectedIndex => _ownerSelectedIndex;
  int get rentSelectedIndex => _rentSelectedIndex;
  // set updateIndex(index) => _selectedIndex = index;

  void updateIndex(index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void updateOwnerIndex(index) {
    _ownerSelectedIndex = index;
    notifyListeners();
  }

  void updateRentIndex(index) {
    _rentSelectedIndex = index;
    notifyListeners();
  }
}
