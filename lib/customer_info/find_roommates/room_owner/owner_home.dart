import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/home/app_bar.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/providers/home_provider.dart';

import '../../../helper_widgets/home/bottom_item.dart';

class OwnerHomePage extends StatelessWidget {
  const OwnerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<HomeProvider>(
      builder: (_, home, __) => Scaffold(
        appBar: appBar(context, size),
        body: home.ownerScreens.elementAt(home.ownerSelectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: home.ownerSelectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (index) => home.updateOwnerIndex(index),
          elevation: 5,
          items: bottomNavItem(),
          selectedItemColor: black,
          unselectedItemColor: black,
          selectedIconTheme:
              const IconThemeData(color: black, size: 23, weight: 2),
          unselectedIconTheme:
              const IconThemeData(color: white, size: 20, weight: 1),
          selectedLabelStyle: bottomNavTextStyle,
          unselectedLabelStyle: bottomNavTextStyle,
        ),
      ),
    );
  }
}
