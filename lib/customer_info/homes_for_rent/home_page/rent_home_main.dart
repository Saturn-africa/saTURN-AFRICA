import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:saturn/customer_info/homes_for_rent/home_page/navigation.dart';
import 'package:saturn/customer_info/menu_screens/menu_screen.dart';
import 'package:saturn/helper_widgets/colors.dart';

class RentMainHome extends StatelessWidget {
  const RentMainHome({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ZoomDrawer(
        style: DrawerStyle.defaultStyle,
        menuScreen: MenuScreen(size: size),
        mainScreen: const HomesNavigation(),
        borderRadius: 10.0,
        showShadow: false,
        angle: 0.0,
        mainScreenScale: 0.15,
        menuScreenWidth: double.infinity,
        menuBackgroundColor: purple,
        slideWidth: size.width * 0.6,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.bounceIn,
      ),
    );
  }
}
