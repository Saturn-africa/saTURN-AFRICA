// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/findroomates/ROOMOWNER/additionalinfo.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/exploreowner.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/profileowner.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/shortlisted/shortlistedowner.dart';

import '../../../login/verifyemail.dart';
import 'shortlisted/filter/filterowner.dart';

class SaturnHomeowner extends StatefulWidget {
  const SaturnHomeowner({Key? key}) : super(key: key);

  @override
  State<SaturnHomeowner> createState() => _SaturnHomeownerState();
}

class _SaturnHomeownerState extends State<SaturnHomeowner>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  late TabController _tabController;

  var saturnpages = <Widget>[
    Center(child: Shortlisted()),
    Center(child: Ownerexplore()),
    Center(child: Profile()),
  ];

  // int _currentTabIndex=0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: saturnpages.length, vsync: this);
  }

  late AnimationController _animationController;

  _toggleAnimation() {
    _animationController.isDismissed
        ? _animationController.forward()
        : _animationController.reverse();
  }

  // @override
  // void dispose() {
  //   _animationController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final rightSlide = MediaQuery.of(context).size.width * 0.6;

    return Scaffold(
      appBar: AppBar(
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
                              fontWeight: FontWeight.w400))
                      // fontSize: 20,
                      // fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                iconSize: 40,
                // color: Color.fromRGBO(51, 51, 51, 1),
                icon: SvgPicture.asset(
                  'assets/icons/filter.svg',
                  color: Colors.blue,
                ),
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => filter())));
                }),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        // /: true,
        // actions: <Widget>[
        //   IconButton(
        //     icon: SvgPicture.asset('assets/icons/filter.svg'),
        //     onPressed: (() {
        //       () => Navigator.push(context,
        //           MaterialPageRoute(builder: (context) => Additional()));
        //     }),
        //   ),
        // ],
      ),
      drawer: Drawer(
          elevation: 0,
          // backgroundColor: Colors.black,
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              // header
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.red),
                accountName: Text(
                  "kidda",
                  style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
                accountEmail: Text("akandeumar05@gmail.com"),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // body

              InkWell(
                onTap: (() {}),
                child: ListTile(
                  title: Text("home page"),
                  leading: Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                ),
              ),
              InkWell(
                  onTap: (() {}),
                  child: ListTile(
                    title: Text("my Account"),
                    leading: Icon(
                      Icons.person,
                      color: Colors.red,
                    ),
                    onTap: (() {
                      // () => Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context) => HomePage()));
                    }),
                  )),

              InkWell(
                  onTap: (() {}),
                  child: ListTile(
                    title: Text("my orders"),
                    leading: Icon(
                      Icons.shopify_sharp,
                      color: Colors.red,
                    ),
                  )),

              InkWell(
                  onTap: (() {
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => Cart()));
                  }),
                  child: ListTile(
                    title: Text("my cart"),
                    leading: Icon(
                      Icons.shopping_cart,
                      color: Colors.green,
                    ),
                  )),
              InkWell(
                  onTap: (() {}),
                  child: ListTile(
                    title: Text("favourites"),
                    leading: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  )),

              Divider(),

              InkWell(
                  onTap: (() {}),
                  child: ListTile(
                    title: Text("settings"),
                    leading: Icon(
                      Icons.settings,
                      // color: Colors.red,
                    ),
                  )),
              InkWell(
                  onTap: (() {}),
                  child: ListTile(
                    title: Text("about"),
                    leading: Icon(
                      Icons.help,
                      color: Colors.blue,
                    ),
                  )),
            ],
          )),
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
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ('Home'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(153, 0, 204, 1),
        onTap: _onItemTapped,
      ),
      // TabBarView(
      //   children: saturnpages,
      //   controller: _tabController,
      // ),
      // bottomNavigationBar: Material(
      //     child: TabBar(
      //   // unselectedLabelColor: ,

      //   labelStyle: GoogleFonts.ubuntu(
      //       textStyle: TextStyle(
      //           fontSize: 16,
      //           fontStyle: FontStyle.normal,
      //           color: Color.fromRGBO(0, 0, 0, 1),
      //           fontWeight: FontWeight.w400)),
      //   indicator: BoxDecoration(
      //     borderRadius: BorderRadius.circular(50),
      //   ),
      //   labelColor: Color.fromRGBO(0, 0, 0, 1),
      //   automaticIndicatorColorAdjustment: false,
      //   tabs: saturnitem,
      //   controller: _tabController,
      // )
    );
  }
}
