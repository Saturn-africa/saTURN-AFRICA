// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/shortlisted/requestowner.dart';

class Shortlisted extends StatefulWidget {
  const Shortlisted({super.key});

  @override
  State<Shortlisted> createState() => _ShortlistedState();
}

class _ShortlistedState extends State<Shortlisted> {
  @override
  Widget build(BuildContext context) {
    final Shortlistedtitle = <Widget>[
      const Center(
        child: Requestbuild(),
      ),
      const Center(
        child: Requestbuild(),
      )
    ];
    final Shortlistedbody = <Tab>[
      Tab(
        child: Text('REQUEST',
            style: GoogleFonts.ubuntu(
                // ignore: prefer_const_constructors

                textStyle: const TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    // color: Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w400))),
      ),
      Tab(
        child: Text('MESSAGE',
            style: GoogleFonts.ubuntu(
                // ignore: prefer_const_constructors
                textStyle: const TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    // color: Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w400))),
      ),
    ];
    return Container(
      // color: Colors.black,
      child: DefaultTabController(
        length: Shortlistedbody.length,
        child: Scaffold(
          // appBar: AppBar(
          //   toolbarHeight: 40.2,
          //   toolbarOpacity: 0.8,
          //   shape: const RoundedRectangleBorder(
          //     borderRadius: BorderRadius.only(
          //         bottomRight: Radius.circular(25),
          //         bottomLeft: Radius.circular(25)),
          //   ),
          //   backgroundColor: Colors.black,
          //   elevation: 0,
          //   bottom: TabBar(
          // indicatorSize: TabBarIndicatorSize.tab,
          // indicator: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10),
          //     color: Color.fromRGBO(153, 0, 204, 1)),
          //     tabs: Shortlistedbody,
          // unselectedLabelColor: Colors.black,
          //   ),
          // ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 70,
                  width: 370,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border:
                          Border.all(color: Color.fromRGBO(51, 51, 51, 0.6))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TabBar(
                      unselectedLabelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(153, 0, 204, 1)),
                      tabs: Shortlistedbody,
                    ),
                  ),
                ),
                Container(
                  height: 700,
                  child: TabBarView(
                    children: Shortlistedtitle,
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

// class Custappbar extends StatelessWidget {
//   const Custappbar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(child: AppBar(backgroundColor: Colors.white,
//           elevation: 0,
//           bottom: TabBar(
//             indicatorSize: TabBarIndicatorSize.tab,
//             indicator: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: Color.fromRGBO(153, 0, 204, 1)),
//             tabs: Shortlistedbody,
//             unselectedLabelColor: Colors.black,
//           ),),);
//   }
// }
