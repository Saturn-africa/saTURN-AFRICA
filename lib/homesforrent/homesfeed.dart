// ignore_for_file: avoid_unnecessary_containers, prefer_typing_uninitialized_variables, non_constant_identifier_names, duplicate_ignore, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/Serviceneed.dart';
import 'package:saturn/general/WHO.dart';
import 'package:saturn/findroomates/ROOMSEKER/note.dart';
import 'package:saturn/homesforrent/common/viewdetails.dart';
import 'package:saturn/homesforrent/viewdetailscreen/viewdet1.dart';
import 'package:saturn/homesforrent/viewdetailscreen/viewdet2.dart';

class Homefeed extends StatefulWidget {
  const Homefeed({super.key});

  @override
  State<Homefeed> createState() => _HomefeedState();
}

class _HomefeedState extends State<Homefeed> {
  int actoveindex = 0;

  var imageedit = [
    {
      // room 1
      'toptext': 'TWO BEDROOM',
      'picture': 'assets/images/house1.png',
      'nextscreen': const Viewdet1(),
      'nexttext': 'ko',
      'no_of_rooms': 4,
      'no_of_restrooms': 2,
      'no_of_msquare': 9,
      'price': '100,00',
    },
    {
      'toptext': 'tthree BEDROOM',
      'picture': 'assets/images/house1.png',
      'nextscreen': const Viewdet2(),
      'nexttext': 'ko',
      'no_of_rooms': 4,
      'no_of_restrooms': 2,
      'no_of_msquare': 9,
      'price': '100,00',
    },
    {
      // house two
      'toptext': 'THREE BEDROOM',
      'picture': 'assets/images/house1.png',
      'nextscreen': const Viewdet2(),
      'nexttext': 'llk',
      'no_of_rooms': 89,
      'no_of_restrooms': 29,
      'no_of_msquare': 9,
      'price': '6 00,00',
    },
    {
      'toptext': 'hello',
      'picture': 'assets/images/house1.png',
      'nextscreen': const Service(),
      'nexttext': 'ko',
      'no_of_rooms': 4,
      'no_of_restrooms': 5,
      'no_of_msquare': 230,
      'price': 50000,
    }
  ];
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: CarouselSlider.builder(
        itemCount: imageedit.length,
        itemBuilder: ((context, index, realIndex) {
          // final houseimage = houseimages[index];

          return SizedBox(
            child: Buildcard2(
              toptext: imageedit[index]['toptext'],
              price: imageedit[index]['price'],
              picture: imageedit[index]['picture'],
              nextscreen: imageedit[index]['nextscreen'],
              nexttext: imageedit[index]['nexttext'],
              no_of_room: imageedit[index]['no_of_rooms'],
              no_of_restroom: imageedit[index]['no_of_restrooms'],
              no_of_Msquare: imageedit[index]['no_of_msquare'],
              veiwdet: null,
            ),
          );
          // const Text('data');
        }),
        options: CarouselOptions(
          height: 700,
          viewportFraction: 1,
          reverse: true,
          enlargeCenterPage: true,
          aspectRatio: 1000 / 1000,
          autoPlay: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 2000),
          autoPlayCurve: Curves.linearToEaseOut,
          autoPlayInterval: const Duration(seconds: 4),
          pauseAutoPlayOnTouch: true,
          onPageChanged: (index, reason) => setState(() => actoveindex = index),
        ),
      ),
    );
  }
}

class Buildcard2 extends StatelessWidget {
  // const Buildcard2({super.key});
  final toptext;
  final dynamic nextscreen;
  final nexttext;
  final picture;
  final veiwdet;
  final price;
  final dynamic no_of_room;
  final dynamic no_of_restroom;
  final dynamic no_of_Msquare;
  // ignore: non_constant_identifier_names
  Buildcard2({
    super.key,
    required this.toptext,
    required this.picture,
    required this.veiwdet,
    required this.price,
    required this.nextscreen,
    required this.nexttext,
    // ignore: non_constant_identifier_names
    required this.no_of_room,
    required this.no_of_restroom,
    required this.no_of_Msquare,
  });
  TextEditingController imagecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      verticalDirection: VerticalDirection.down,
      children: [
        SizedBox(
          height: 30,
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              width: 400,
              height: 500,
              decoration: BoxDecoration(
                  // color: Color.fromRGBO(153, 0, 204, 1),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Colors.black12)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(toptext,
                          style: GoogleFonts.ubuntu(
                              //                       // ignore: prefer_const_constructors
                              textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(153, 0, 204, 1),
                                  // color: const Color.fromRGBO(51, 51, 51, 0.6),
                                  fontWeight: FontWeight.w500))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Serviced Apartment',
                            style: GoogleFonts.ubuntu(
                                //                       // ignore: prefer_const_constructors
                                textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(51, 51, 51, 0.4),
                                    // color: const Color.fromRGBO(51, 51, 51, 0.6),
                                    fontWeight: FontWeight.w400))),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Image.asset(
                      // String imagecallback =TextEditingController(text: 'gcg'),
                      picture,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 18,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(2)),
                                      border: Border.all(
                                          color: const Color.fromARGB(
                                              51, 51, 51, 1))),
                                  child: Center(
                                    child: Text(no_of_room.toString(),
                                        style: GoogleFonts.ubuntu(
                                            //                       // ignore: prefer_const_constructors
                                            textStyle: const TextStyle(
                                                fontSize: 15,
                                                fontStyle: FontStyle.normal,
                                                // color: Color.fromRGBO(0, 0, 0, 1),
                                                color: Color.fromRGBO(
                                                    51, 51, 51, 0.6),
                                                fontWeight: FontWeight.w300))
                                        // fontSize: 20,
                                        // fontWeight: FontWeight.w500,
                                        ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 9,
                                ),
                                child: Text(' Rooms',
                                    style: GoogleFonts.ubuntu(
                                        //                       // ignore: prefer_const_constructors
                                        textStyle: const TextStyle(
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal,
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            // color: const Color.fromRGBO(51, 51, 51, 0.6),
                                            fontWeight: FontWeight.w300))
                                    // fontSize: 20,)
                                    ),
                              ),
                            ],
                          ),
                          // resttoom
                          Padding(
                            padding: const EdgeInsets.only(left: 11),
                            child: Row(
                              children: [
                                Container(
                                    height: 18,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(2)),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                51, 51, 51, 1))),
                                    child: Center(
                                      child: Text(no_of_restroom.toString(),
                                          style: GoogleFonts.ubuntu(
                                              //                       // ignore: prefer_const_constructors
                                              // ignore: prefer_const_constructors
                                              textStyle: TextStyle(
                                                  fontSize: 15,
                                                  fontStyle: FontStyle.normal,
                                                  // color: Color.fromRGBO(0, 0, 0, 1),
                                                  color: const Color.fromRGBO(
                                                      51, 51, 51, 0.6),
                                                  fontWeight: FontWeight.w300))
                                          // fontSize: 20,
                                          // fontWeight: FontWeight.w500,
                                          ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('Restrooms',
                                      style: GoogleFonts.ubuntu(
                                          //                       // ignore: prefer_const_constructors
                                          textStyle: const TextStyle(
                                              fontSize: 14,
                                              fontStyle: FontStyle.normal,
                                              color: Color.fromRGBO(0, 0, 0, 1),
                                              // color: const Color.fromRGBO(51, 51, 51, 0.6),
                                              fontWeight: FontWeight.w300))
                                      // fontSize: 20,)
                                      ),
                                ),
                              ],
                            ),
                          ),
                          // no of msquare
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Container(
                                    height: 18,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(2)),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                51, 51, 51, 1))),
                                    child: Center(
                                      child: Text(no_of_Msquare.toString(),
                                          style: GoogleFonts.ubuntu(
                                              // ignore: prefer_const_constructors
                                              textStyle: const TextStyle(
                                                  fontSize: 15,
                                                  fontStyle: FontStyle.normal,
                                                  // color: Color.fromRGBO(0, 0, 0, 1),
                                                  color: Color.fromRGBO(
                                                      51, 51, 51, 0.6),
                                                  fontWeight:
                                                      FontWeight.w300))),
                                    )),
                                Text(' M sqr',
                                    style: GoogleFonts.ubuntu(
                                        // ignore: prefer_const_constructors
                                        textStyle: const TextStyle(
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal,
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontWeight: FontWeight.w300))
                                    // fontSize: 20,)
                                    ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 29,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Container(
                              width: 72,
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text('N${price.toString()}',
                                    style: GoogleFonts.ubuntu(
                                        //                       // ignore: prefer_const_constructors
                                        textStyle: const TextStyle(
                                            fontSize: 20,
                                            fontStyle: FontStyle.normal,
                                            color:
                                                Color.fromRGBO(153, 0, 220, 1),
                                            // color: const Color.fromRGBO(51, 51, 51, 0.6),
                                            fontWeight: FontWeight.w500))
                                    // fontSize: 20,)
                                    ),
                              ),
                            ),
                            Text('/year',
                                style: GoogleFonts.ubuntu(
                                    //                       // ignore: prefer_const_constructors
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        // color: const Color.fromRGBO(51, 51, 51, 0.6),
                                        fontWeight: FontWeight.w300))
                                // fontSize: 20,)
                                ),
                            Padding(
                              padding: const EdgeInsets.only(left: 90),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: InkWell(
                                  onTap: () {
                                    (Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                nextscreen))));
                                  },
                                  child: Container(
                                    // ignore: sort_child_properties_last
                                    child: Center(
                                      child: Text('View Details',
                                          style: GoogleFonts.ubuntu(
                                            textStyle: TextStyle(
                                                fontSize: 16,
                                                fontStyle: FontStyle.normal,
                                                color: Color.fromRGBO(
                                                    153, 0, 204, 1),
                                                fontWeight: FontWeight.w400),
                                          )),
                                    ),

                                    width: 120,
                                    height: 45,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        border: Border.all(
                                            color: Color.fromARGB(
                                                255, 210, 61, 236))),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // TextButton(
                    //     onPressed: () {
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //               builder: ((context) => nextscreen)));
                    //     },
                    //     child: Center(child: Text(nexttext))),
                  ],
                ),
              ),
            ),
          ),
        ),
        // Text('data')
      ],
    );
  }
}
