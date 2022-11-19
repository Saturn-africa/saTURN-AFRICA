// ignore_for_file: dead_code, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/profileowner.dart';

class DrawerData extends StatefulWidget {
  const DrawerData();

  @override
  State<DrawerData> createState() => _DrawerDataState();
}

class _DrawerDataState extends State<DrawerData> {
  late int _tappedIndex;
  late int _tappedIndex2;

  set tappedIndex(
    int tappedIndex,
  ) {
    _tappedIndex = tappedIndex;
  }

  @override
  void initState() {
    super.initState();
    tappedIndex = 0;
  }

  int index = 0;
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    // if (currentPage == DrawerSections.dashboard) {
    //   // container = Profile();
    // } else if (currentPage == DrawerSections.contacts) {
    //   // container = Profile();
    // } else if (currentPage == DrawerSections.events) {
    //   // container = Profile();
    // } else if (currentPage == DrawerSections.notes) {
    //   container = Profile();
    // } else if (currentPage == DrawerSections.settings) {
    //   // container = Profile();
    // } else if (currentPage == DrawerSections.notifications) {
    //   // container = Profile();
    // } else if (currentPage == DrawerSections.privacy_policy) {
    //   // container = Profile();
    // } else if (currentPage == DrawerSections.send_feedback) {
    //   // container = Profile();
    // }
    // final List<DrawerItem> drawer = [
    //   DrawerItem('Activate Account', Icons.house_siding_outlined),
    //   DrawerItem('Profile', Icons.person),
    //   DrawerItem('Activity', Icons.compare_arrows),
    //   DrawerItem('Bookmarks', Icons.bookmark),
    //   DrawerItem('Sign Out', Icons.exit_to_app),
    // ];
    // final List<DrawerItem> drawer2 = [
    //   DrawerItem('Activate Account', Icons.house_siding_outlined),
    //   DrawerItem('Profile', Icons.person),
    //   DrawerItem('Activity', Icons.compare_arrows),
    //   DrawerItem('Bookmarks', Icons.bookmark),
    //   DrawerItem('Sign Out', Icons.exit_to_app),
    // ];
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 110),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 90,
          ),
          Mydrawerlist(),

          // ListView.builder(
          //     addAutomaticKeepAlives: true,
          //     itemCount: drawer.length,
          //     shrinkWrap: true,
          //     itemBuilder: (_, index) {
          //       // return
          //     }),
          const Divider(
            color: Colors.white54,
          ),
          Container(
            height: 48,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.share),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Tell a Friend',
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 48,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.help_outline),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Help and Feedback',
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget Mydrawerlist() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Activate Account", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard),
          menuItem(2, "Contacts", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts),
          menuItem(
              3, "Events", Icons.event, currentPage == DrawerSections.events),
          menuItem(
              4, "Notes", Icons.notes, currentPage == DrawerSections.notes),
          Divider(),
          menuItem(5, "Settings", Icons.settings_outlined,
              currentPage == DrawerSections.settings),
          menuItem(6, "Notifications", Icons.notifications_outlined,
              currentPage == DrawerSections.notifications),
          Divider(),
          menuItem(7, "Privacy policy", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy),
          menuItem(8, "Send feedback", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback),
        ],
      ),
    );
  }

  Widget menuItem(
    int id,
    String title,
    IconData icon,
    bool bool,
  ) {
    return Material(
      color: _tappedIndex == index ? Colors.white : Colors.black,
      child: InkWell(
        onTap: () {
          // Navigator.pop(context);
          setState(() {
            tappedIndex = index;
            // if (id == 1) {
            //   currentPage = DrawerSections.dashboard;
            // } else if (id == 2) {
            //   currentPage = DrawerSections.contacts;
            // } else if (id == 3) {
            //   currentPage = DrawerSections.events;
            // } else if (id == 4) {
            //   currentPage = DrawerSections.notes;
            // } else if (id == 5) {
            //   currentPage = DrawerSections.settings;
            // } else if (id == 6) {
            //   currentPage = DrawerSections.notifications;
            // } else if (id == 7) {
            //   currentPage = DrawerSections.privacy_policy;
            // } else if (id == 8) {
            //   currentPage = DrawerSections.send_feedback;
            // }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
                // color:
                //     _tappedIndex == index ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Row(
              children: [
                // Expanded(
                //   child: Icon(icon,
                //       size: 20,
                //       color:
                //           _tappedIndex == index ? Colors.blue : Colors.purple),
                // ),
                // Expanded(
                //   flex: 3,
                //   child: Text(
                //     title,
                //     style: TextStyle(
                //       color: Colors.black,
                //       fontSize: 16,
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 12),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        tappedIndex = index;
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: _tappedIndex == index
                                  ? Colors.white
                                  : Colors.transparent,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),

                          height: 48,
                          // width: double.infinity,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      icon,
                                      color: _tappedIndex == index
                                          ? Color.fromRGBO(153, 0, 204, 1)
                                          : Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(title,
                                        style: GoogleFonts.ubuntu(
                                            textStyle: TextStyle(
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                color: _tappedIndex == index
                                                    ? Color.fromRGBO(
                                                        153, 0, 204, 1)
                                                    : Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                fontWeight:
                                                    _tappedIndex == index
                                                        ? FontWeight.w500
                                                        : FontWeight.w300))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}

// ignore: non_constant_identifier_names

class DrawerItem {
  final String name;
  final icon;

  const DrawerItem(
    this.name,
    this.icon,
  );
}

 // 