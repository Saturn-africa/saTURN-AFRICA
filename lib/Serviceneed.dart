// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'dart:math';

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/general/WHO.dart';
import 'package:saturn/need2.dart';
import 'package:saturn/findroomates/ROOMSEKER/note.dart';
import 'package:saturn/findroomates/ROOMSEKER/userInfo/personalinfo.dart';

class Service extends StatefulWidget {
  const Service({Key? key}) : super(key: key);

  @override
  State<Service> createState() => _ServiceState();
}

bool isPress = true;
bool isPress2 = true;
bool buttonPress = true;
bool buttonPress2 = true;

class _ServiceState extends State<Service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // ignore: prefer_const_constructors
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32, right: 100, left: 18),
              child: Text('What service do you need ?',
                  style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(153, 0, 204, 1),
                          fontWeight: FontWeight.w800))
                  // fontSize: 20,
                  // fontWeight: FontWeight.w500,
                  ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 180,
                    height: 160,
                    // decoration: BoxDecoration(
                    //   color: isPress ? Colors.red : Colors.green,
                    // ),
                    child: InkWell(
                      // ignore: sort_child_properties_last
                      child: Card(
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                'assets/images/home.png',
                                width: 80,
                                height: 78,
                              ),
                            ),
                            Text('Home for Rent',
                                style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w400))
                                // fontSize: 20,
                                // fontWeight: FontWeight.w500,
                                ),
                          ],
                        ),
                      ),
                      onTap: (() {
                        showDialog(
                          barrierColor: Colors.white.withOpacity(0),
                          context: context,
                          builder: (BuildContext context) => Column(
                            children: [
                              SizedBox(
                                height: 690,
                              ),
                              AlertDialog(
                                  insetPadding: EdgeInsets.zero,
                                  contentPadding: EdgeInsets.zero,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  backgroundColor:
                                      Color.fromRGBO(255, 255, 255, 1)
                                          .withOpacity(0.1),
                                  elevation: 60,
                                  // title: const Text('Popup example'),
                                  content: Padding(
                                    padding: const EdgeInsets.only(bottom: 6),
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                      Who())));
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
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )),
                                          ),

                                          width: 360,
                                          height: 60,
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  153, 0, 204, 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                        )),
                                  )),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                // find roomates
                Container(
                  width: 180,
                  height: 160,
                  child: InkWell(
                      // ignore: sort_child_properties_last
                      child: Card(
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/roommates.png',
                              width: 80,
                              height: 78,

                              // scale: 3,
                            ),
                            Text('Find Roommates',
                                style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w400))
                                // fontSize: 20,
                                // fontWeight: FontWeight.w500,
                                ),
                          ],
                        ),
                      ),
                      onTap: (() {
                        showDialog(

                            // barrierDismissible: true,
                            barrierColor: Colors.white.withOpacity(0),
                            // Color(0x01000000),
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context));
                      })),
                ),
              ],
            ),
            SizedBox(
              height: 350,
            ),
            // Padding(
            //   padding: const EdgeInsets.only(bottom: 46),
            //   child: TextButton(
            //       onPressed: () {

            //         Navigator.push(context,
            //                 MaterialPageRoute(builder: ((context) => Need2())))
            //             // () {}
            //             //  builder: ((context) => Service())))

            //       },
            //       child: Container(
            //         // ignore: sort_child_properties_last
            //         child: Center(
            //           child: Text('CONTINUE',
            //               style: GoogleFonts.ubuntu(
            //                 textStyle: TextStyle(
            //                     fontSize: 18,
            //                     fontStyle: FontStyle.normal,
            //                     color: Color.fromRGBO(255, 255, 255, 1),
            //                     fontWeight: FontWeight.w700),
            //               )),
            //         ),

            //         width: 360,
            //         height: 60,
            //         decoration: BoxDecoration(
            //             color: isPress
            //                 ? isPress2
            //                     ? Colors.grey
            //                     : Color.fromRGBO(153, 0, 204, 1)
            //                 : Color.fromRGBO(153, 0, 204, 1),
            //             borderRadius: BorderRadius.all(Radius.circular(20))),
            //       )),
            // )
          ],
        ),
      ),
    );
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
                      MaterialPageRoute(builder: ((context) => Who())));
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
