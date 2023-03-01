import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saturn/customer_info/find_roommates/account/account_screen.dart';
import 'package:saturn/customer_info/find_roommates/room_seeker/explore/seeker_explore.dart';
import 'package:saturn/customer_info/find_roommates/shortlisted/shortlisted_owner.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class SeekerHomePage extends StatelessWidget {
  const SeekerHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
          activeColor: purple,
          currentIndex: 1,
          height: 60,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset("assets/icons/shortlisted.svg",
                          height: 25, width: 25),
                      Text("Shortlisted", style: bottomNavTextStyle)
                    ]),
                activeIcon: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset("assets/icons/shortlisted.svg",
                          height: 25, width: 25, color: purple),
                      Text("Shortlisted", style: bottomNavTextStyle)
                    ])),
            BottomNavigationBarItem(
              icon: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset("assets/icons/explore.svg",
                        height: 25, width: 25),
                    Text("Explore", style: bottomNavTextStyle)
                  ]),
              activeIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset("assets/icons/explore.svg",
                        color: purple, height: 25, width: 25),
                    Text("Explore", style: bottomNavTextStyle)
                  ]),
            ),
            BottomNavigationBarItem(
              icon: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset("assets/icons/account.svg",
                        height: 25, width: 25),
                    Text("Account", style: bottomNavTextStyle)
                  ]),
              activeIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset("assets/icons/account.svg",
                        color: purple, height: 25, width: 25),
                    Text("Account", style: bottomNavTextStyle)
                  ]),
            ),
          ]),
      backgroundColor: Colors.white,
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: ShortlistedScreen(),
                );
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: SeekerExplorePage(),
                );
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: Profile(),
                );
              },
            );

          default:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: SeekerExplorePage(),
                );
              },
            );
        }
      },
    );
  }
}