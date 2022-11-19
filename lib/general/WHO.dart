// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/findroomates/ROOMSEKER/note.dart';

class Who extends StatefulWidget {
  const Who({super.key});

  @override
  State<Who> createState() => _WhoState();
}

class _WhoState extends State<Who> {
  var isPress = true;
  var isPress2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
                // ignore: prefer_const_constructors
                children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, right: 0, left: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Who are you?",
                  style: GoogleFonts.ubuntu(
                      // ignore: prefer_const_constructors
                      textStyle: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(153, 0, 204, 1),
                          fontWeight: FontWeight.w800))
                  // fontSize: 20,
                  // fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 29, right: 20, left: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                  'Saturn allows you to  find roommates easily. You will be able to switch modes once you are all set up.',
                  style: GoogleFonts.ubuntu(
                      // ignore: prefer_const_constructors
                      textStyle: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontWeight: FontWeight.w400))
                  // fontSize: 20,
                  // fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          // the select aspect
          // FIND ROOMMATES
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    // ignore: sort_child_properties_last
                    child: Container(
                      width: 380,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(
                            // ignore: prefer_const_constructors
                            color: isPress2
                                ? Colors.grey
                                : Color.fromRGBO(153, 0, 204, 1),
                            style: BorderStyle.solid,
                          ),
                          // color: isPress
                          //     ? Color.fromRGBO(255, 255, 255, 0.1)
                          //     : Colors.white70,
                          // color: Color.fromRGBO(255, 255, 255, 0.1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      // color: isPress
                      //     ? Color.fromRGBO(255, 255, 255, 0.1)
                      //     : Colors.white70,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 15,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('A  Room Owner',
                                    style: GoogleFonts.ubuntu(
                                      // ignore: prefer_const_constructors
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontStyle: FontStyle.normal,
                                          color: Color.fromRGBO(153, 0, 204, 1),
                                          fontWeight: FontWeight.w600),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 15,
                                right: 40,
                              ),
                              child: Text(
                                  'You have a room and you are in search of roommates to join you.',
                                  style: GoogleFonts.ubuntu(
                                    // ignore: prefer_const_constructors
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                            // SizedBox(
                            //   height: 20,
                            // ),
                          ],
                        ),
                      ),
                    ),
                    onTap: (() {
                      setState(() {
                        isPress2 = !isPress2;
                      });
                      showDialog(

                          // barrierDismissible: true,
                          barrierColor: Colors.white.withOpacity(0),
                          // Color(0x01000000),
                          context: context,
                          builder: (BuildContext context) =>
                              _buildPopupDialog(context));
                    }),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    // ignore: sort_child_properties_last
                    child: Container(
                      width: 380,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(
                            // ignore: prefer_const_constructors
                            color: isPress
                                ? Colors.grey
                                : Color.fromRGBO(153, 0, 204, 1),
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 15,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('A Room Seeker',
                                    style: GoogleFonts.ubuntu(
                                      // ignore: prefer_const_constructors
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontStyle: FontStyle.normal,
                                          color: Color.fromRGBO(153, 0, 204, 1),
                                          fontWeight: FontWeight.w600),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 15,
                                right: 40,
                              ),
                              child: Text(
                                  'You do not have a room and you are in search of a roommate, with a readily available room.',
                                  style: GoogleFonts.ubuntu(
                                    // ignore: prefer_const_constructors
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: (() {
                      setState(() {
                        isPress = !isPress;
                      });
                      showDialog(

                          // barrierDismissible: true,
                          barrierColor: Colors.white.withOpacity(0),
                          // Color(0x01000000),
                          context: context,
                          builder: (BuildContext context) =>
                              _buildPopupDialog2(context));
                    }),
                  ),
                ),
                SizedBox(
                  height: 280,
                ),
              ],
            ),
          ),
        ])));
  }
}

Widget _buildPopupDialog(BuildContext context) {
  return Column(
    children: [
      SizedBox(
        height: 690,
      ),
      // ignore: unnecessary_new
      new AlertDialog(
          insetPadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1).withOpacity(0.1),
          elevation: 60,
          // title: const Text('Popup example'),
          content: Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Noteowner())));
                },
                child: Container(
                  // ignore: sort_child_properties_last
                  child: Center(
                    child: Text('CONTINUE',
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontWeight: FontWeight.w700),
                        )),
                  ),

                  width: 360,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(153, 0, 204, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                )),
          )),
    ],
  );
}

// roomseekser
Widget _buildPopupDialog2(BuildContext context) {
  return Column(
    children: [
      SizedBox(
        height: 690,
      ),
      // ignore: unnecessary_new
      new AlertDialog(
          insetPadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1).withOpacity(0.1),
          elevation: 60,
          // title: const Text('Popup example'),
          content: Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Noteseeker())));
                  // () {}
                  //  builder: ((context) => Service())))
                },
                child: Container(
                  // ignore: sort_child_properties_last
                  child: Center(
                    child: Text('CONTINUE',
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontWeight: FontWeight.w700),
                        )),
                  ),

                  width: 360,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(153, 0, 204, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                )),
          )),
    ],
  );
}
