import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/shortlisted/filter/houseownerfilter.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/shortlisted/filter/roomateownerfilter.dart';

class filter extends StatefulWidget {
  const filter({super.key});

  @override
  State<filter> createState() => _filterState();
}

class _filterState extends State<filter> {
  @override
  Widget build(BuildContext context) {
    final filterbody = <Widget>[
      Houseown_filter(),
      Roomateown_filter(),
    ];
    final Filtertitle = <Tab>[
      Tab(
        child: Text('House',
            style: GoogleFonts.ubuntu(
                // ignore: prefer_const_constructors

                textStyle: const TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    // color: Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w400))),
      ),
      Tab(
        child: Text('Roomamate',
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
      child: DefaultTabController(
          length: Filtertitle.length,
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  AppBar(
                    title: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Filter Prefernce",
                          style: GoogleFonts.ubuntu(
                              // ignore: prefer_const_constructors
                              textStyle: TextStyle(
                                  // height: 21,
                                  fontSize: 18,
                                  color: Color.fromRGBO(153, 0, 204, 1),
                                  fontWeight: FontWeight.w500))),
                    ),
                    leading: IconButton(
                        // ignore: prefer_const_constructors
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context, true);
                        }),
                    backgroundColor: Colors.white,
                    elevation: 0.1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TabBar(
                      automaticIndicatorColorAdjustment: false,
                      labelColor: Color.fromRGBO(153, 0, 204, 1),
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Colors.transparent,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: Filtertitle,
                    ),
                  ),
                  Container(
                    height: 700,
                    child: TabBarView(
                      children: filterbody,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
