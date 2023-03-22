import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  List<Widget> seekerScreens = [];
  List<Widget> ownerScreens = [];
  List<Widget> rentScreens = [];
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;
  set updateIndex(index) => _selectedIndex = index;
}
