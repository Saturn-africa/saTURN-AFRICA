// ignore_for_file: prefer_const_constructors, duplicate_ignore, camel_case_types, unnecessary_brace_in_string_interps

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/homesforrent/viewdetailscreen/viewdet1.dart';

import 'viewdet/viewdetowner1.dart';

class Ownerexplore extends StatefulWidget {
  const Ownerexplore({super.key});

  @override
  State<Ownerexplore> createState() => _OwnerexploreState();
}

class _OwnerexploreState extends State<Ownerexplore> {
  var details = [
    {
      'critreligion': 'christian',
      'critgender': 'both gender',
      'critsex': 'heterosexual',
      'name': 'peppermint',
      'gender': 'female',
      'agerange': '18-3 Age Range',
      'religion': 'muslim',
      'amount': '100,000k',
      'period': '6months to 1 year',
      'location': ' Damico, Campus Gate,Maintenance',
      'viewdetscreen': Viewdetown1()
    },
    {
      'viewdetscreen': Viewdetown1(),
      'critreligion': 'muslim',
      'critgender': 'both gender',
      'critsex': 'homosexual',
      'name': 'sugarrush',
      'gender': 'male',
      'agerange': '28-35 Age Range',
      'religion': 'christian',
      'amount': '200,000k',
      'period': '6months to 1 year',
      'location': ' ago, Campus Gate,Maintenance'
    },
  ];
  int activeindex = 0;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: CarouselSlider.builder(
        itemCount: details.length,
        itemBuilder: ((context, index, realIndex) {
          // final houseimage = houseimages[index];

          return SizedBox(
            child: Ownerexplore_common(
              agerange: details[index]["agerange"],
              critreligion: details[index]["critreligion"],
              religion: details[index]["religion"],
              critsex: details[index]["critsex"],
              critgender: details[index]["critgender"],
              period: details[index]["period"],
              gender: details[index]["gender"],
              amount: details[index]["amount"],
              location: details[index]["location"],
              name: details[index]["name"],
              viewdetscreen: details[index]["viewdetscreen"],
              sendreqscreen: null,
            ),
          );
          // const Text('data');
        }),
        options: CarouselOptions(
          height: 650,
          viewportFraction: 1,
          reverse: true,
          enlargeCenterPage: true,
          aspectRatio: 1000 / 1000,
          // autoPlay: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 2000),
          autoPlayCurve: Curves.linearToEaseOut,
          autoPlayInterval: const Duration(seconds: 4),
          pauseAutoPlayOnTouch: true,
          onPageChanged: (index, reason) => setState(() => activeindex = index),
        ),
      ),
    );
  }
}

class Ownerexplore_common extends StatelessWidget {
  const Ownerexplore_common(
      {super.key,
      required this.name,
      required this.gender,
      required this.religion,
      required this.agerange,
      required this.amount,
      required this.period,
      required this.location,
      required this.critgender,
      required this.critsex,
      required this.critreligion,
      required this.viewdetscreen,
      required this.sendreqscreen});
  final name;
  final dynamic viewdetscreen;
  final dynamic sendreqscreen;
  final gender;
  final critgender;
  final religion;
  final critsex;
  final critreligion;
  final agerange;
  final amount;
  final period;
  final location;
  // final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              // color: Color.fromRGBO(153, 0, 204, 1),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: Colors.black12)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // ignore: prefer_const_constructors
              SizedBox(
                height: 30,
              ),
              Text('I AM LOOKING FOR A ROOMMATE TO JOIN ME',
                  style: GoogleFonts.ubuntu(
                      // ignore: prefer_const_constructors
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(153, 0, 204, 1),
                          // color: const Color.fromRGBO(51, 51, 51, 0.6),
                          fontWeight: FontWeight.w500))),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Image.asset('assets/images/female.png'),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: SizedBox(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name,
                              style: GoogleFonts.ubuntu(
                                  // ignore: prefer_const_constructors
                                  textStyle: const TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(153, 0, 204, 1),
                                      // color: const Color.fromRGBO(51, 51, 51, 0.6),
                                      fontWeight: FontWeight.w500))),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Text(gender,
                                style: GoogleFonts.ubuntu(
                                    // ignore: prefer_const_constructors
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        // color: const Color.fromRGBO(51, 51, 51, 0.6),
                                        fontWeight: FontWeight.w300))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Text(agerange,
                                style: GoogleFonts.ubuntu(
                                    // ignore: prefer_const_constructors
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        // color: const Color.fromRGBO(51, 51, 51, 0.6),
                                        fontWeight: FontWeight.w300))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Text(religion,
                                style: GoogleFonts.ubuntu(
                                    // ignore: prefer_const_constructors
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        // color: const Color.fromRGBO(51, 51, 51, 0.6),
                                        fontWeight: FontWeight.w300))),
                          ),
                          SizedBox(
                            height: 60,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text('looking for: ',
                  style: GoogleFonts.ubuntu(
                      // ignore: prefer_const_constructors
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(51, 51, 51, 1),
                          // color: const Color.fromRGBO(51, 51, 51, 0.6),
                          fontWeight: FontWeight.w300))),
              SizedBox(
                height: 10,
              ),
              FittedBox(
                child: Text(
                    'criteria :$critgender, $critreligion, $critsex, $agerange',
                    style: GoogleFonts.ubuntu(
                        // ignore: prefer_const_constructors
                        textStyle: const TextStyle(
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(51, 51, 51, 1),
                            // color: const Color.fromRGBO(51, 51, 51, 0.6),
                            fontWeight: FontWeight.w300))),
              ),
              SizedBox(height: 25),
              Text('House Description ',
                  style: GoogleFonts.ubuntu(
                      // ignore: prefer_const_constructors
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(153, 0, 204, 1),
                          // color: const Color.fromRGBO(51, 51, 51, 0.6),
                          fontWeight: FontWeight.w300))),
              SizedBox(height: 12),
              Text(location,
                  style: GoogleFonts.ubuntu(
                      // ignore: prefer_const_constructors
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(51, 51, 51, 1),
                          // color: const Color.fromRGBO(51, 51, 51, 0.6),
                          fontWeight: FontWeight.w300))),
              SizedBox(height: 12),
              Text('Amount: $amount',
                  style: GoogleFonts.ubuntu(
                      // ignore: prefer_const_constructors
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(51, 51, 51, 1),
                          // color: const Color.fromRGBO(51, 51, 51, 0.6),
                          fontWeight: FontWeight.w300))),
              SizedBox(height: 12),
              Text('Period: $period',
                  style: GoogleFonts.ubuntu(
                      // ignore: prefer_const_constructors
                      textStyle: const TextStyle(
                          fontSize: 12,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(51, 51, 51, 1),
                          // color: const Color.fromRGBO(51, 51, 51, 0.6),
                          fontWeight: FontWeight.w300))),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => viewdetscreen)));
                        },
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Center(
                            child: FittedBox(
                              child: Text('View Details',
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(153, 0, 204, 1),
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),

                          width: 120,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border.all(
                                  color: Color.fromARGB(255, 210, 61, 236))),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Center(
                            child: FittedBox(
                              child: Text('Send Request',
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),

                          width: 120,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(153, 0, 204, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border.all(
                                  color: Color.fromARGB(255, 210, 61, 236))),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ]),
          )),
    );
  }
}
