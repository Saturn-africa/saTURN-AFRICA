import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:saturn/custom_widgets/drawer_widget.dart';
import 'package:saturn/customer_info/homes_for_rent/filter_page.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/providers/home_provider.dart';

import '../../../helper_widgets/home/bottom_item.dart';

class HomesNavigation extends StatelessWidget {
  const HomesNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<HomeProvider>(
      builder: (_, home, __) => Scaffold(
        appBar: AppBar(
          leading: const DrawerWidget(),
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/logo.svg',
                color: purple,
              ),
              SizedBox(width: size.width * 0.05),
              Text("Saturn", style: appBarTextStyle),
            ],
          ),
          actions: [
            IconButton(
              iconSize: 40,
              icon: SvgPicture.asset(
                'assets/icons/filter.svg',
                color: deepBlack,
              ),
              onPressed: () {
                Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                        fullscreenDialog: true,
                        builder: ((context) => const HomesFilterPage())));
              },
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 0.2,
        ),
        body: home.ownerScreens.elementAt(home.rentSelectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: home.rentSelectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (index) => home.updateRentIndex(index),
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
