import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saturn/helper_widgets/colors.dart';

List<BottomNavigationBarItem> bottomNavItem() {
  return <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        activeIcon: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: SvgPicture.asset("assets/icons/shortlisted.svg",
              height: 25, width: 25, color: purple),
        ),
        icon: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: SvgPicture.asset("assets/icons/shortlisted.svg",
              height: 25, width: 25),
        ),
        label: "Shortlisted"),
    BottomNavigationBarItem(
        activeIcon: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: SvgPicture.asset("assets/icons/explore.svg",
              color: purple, height: 25, width: 25),
        ),
        icon: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: SvgPicture.asset("assets/icons/explore.svg",
              height: 25, width: 25),
        ),
        label: "Explore"),
    BottomNavigationBarItem(
        activeIcon: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: SvgPicture.asset("assets/icons/account.svg",
              color: purple, height: 25, width: 25),
        ),
        icon: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: SvgPicture.asset("assets/icons/account.svg",
              height: 25, width: 25),
        ),
        label: "Account"),
  ];
}
