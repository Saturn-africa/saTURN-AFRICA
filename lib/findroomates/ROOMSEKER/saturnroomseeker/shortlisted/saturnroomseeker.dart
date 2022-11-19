// ignore_for_file: sort_child_properties_last, prefer_const_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/exploreowner.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/profileowner.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/shortlisted/shortlistedowner.dart';
import 'package:saturn/findroomates/ROOMSEKER/saturnroomseeker/profileseeker.dart';
import 'package:saturn/findroomates/ROOMSEKER/saturnroomseeker/shortlisted/exploreseeker.dart';

import '../../../../menu/drawer.dart';
import '../../../ROOMOWNER/saturnroomowner/shortlisted/filter/filterowner.dart';

class SaturnHomeseeker extends StatefulWidget {
  const SaturnHomeseeker({Key? key}) : super(key: key);

  @override
  State<SaturnHomeseeker> createState() => _SaturnHomeseekerState();
}

class _SaturnHomeseekerState extends State<SaturnHomeseeker>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  late AnimationController _animationController;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  late TabController _tabController;

  var saturnpages = <Widget>[
    Center(child: Shortlisted()),
    Center(child: Seekerexplore()),
    Center(child: Profileseeker()),
  ];

  // int _currentTabIndex=0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: saturnpages.length, vsync: this);

    // initState() {
    //   super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    // }
  }

  _toggleAnimation() {
    _animationController.isDismissed
        ? _animationController.forward()
        : _animationController.reverse();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rightSlide = MediaQuery.of(context).size.width * 0.6;

    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        double slide = rightSlide * _animationController.value;
        double scale = 1 - (_animationController.value * 0.3);

        return Stack(children: [
          Scaffold(
            backgroundColor: Colors.purple,
            body: const DrawerData(),
          ),
          Transform(
            transform: Matrix4.identity()
              ..translate(slide)
              ..scale(scale),
            alignment: Alignment.center,
            child: Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  onPressed: () => _toggleAnimation(),
                  icon: AnimatedIcon(
                    icon: AnimatedIcons.menu_close,
                    progress: _animationController,
                  ),
                ),
                iconTheme: IconThemeData(color: Colors.black),
                elevation: 0,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: Text('Saturn',
                              style: GoogleFonts.ubuntu(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(153, 0, 204, 1),
                                      fontWeight: FontWeight.w400))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: IconButton(
                        iconSize: 40,
                        icon: SvgPicture.asset(
                          'assets/icons/filter.svg',
                        ),
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => filter())));
                        }),
                      ),
                    ),
                  ],
                ),
                backgroundColor: Colors.white,
                // /: true,
              ),
              //
              //
              body: Center(
                child: saturnpages.elementAt(_selectedIndex),
              ),
              bottomNavigationBar: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(
                      MdiIcons.vectorCircleVariant,
                      // color: Colors.black,
                    ),
                    label: ('Shortlisted'),
                  ),
                  BottomNavigationBarItem(
                    activeIcon: SvgPicture.asset(
                      'assets/icons/exploreorig.svg',
                      color: Color.fromRGBO(153, 0, 204, 1),
                    ),
                    icon: SvgPicture.asset(
                      'assets/icons/exploreorig.svg',
                      // color: Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                    label: ('Explore'),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: ('Account'),
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Color.fromRGBO(153, 0, 204, 1),
                onTap: _onItemTapped,
              ),
            ),
          ),
        ]);
      },
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
