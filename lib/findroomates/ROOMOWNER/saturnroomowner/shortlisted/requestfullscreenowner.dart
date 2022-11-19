// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/saturnhomeroomowner.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/shortlisted/requestowner.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/shortlisted/shortlistedowner.dart';

// this a constructor builder for when you tap on the requests

class requestfullCommon extends StatelessWidget {
  final String image;
  final String Duration;
  final String tribe;
  final String status;
  final String serviced;
  final String budget;
  final String furnishing;
  final String location;
  final String location1;
  final String location2;
  final String location3;
  final String educationlev;
  final String roomsize;
  final String Language;
  final String cleaning;
  final String typeofhous;
  final String typeofkitchen;
  final String typeofrestroom;
  final String pets;
  final String gender;
  final dynamic numberofroom;
  final String minimumrentper;
  final String religion;
  final String name;
  final String sex;
  final String profession;
  final String drink;
  final String nameoftype;
  final String income_range;
  final String maritalstatus;
  final dynamic maxno_of_occupant;
  final dynamic age;
  final dynamic numofrestroom;
  final Widget morephotos;
  const requestfullCommon({
    super.key,
    required this.image,
    required this.sex,
    required this.morephotos,
    required this.serviced,
    required this.furnishing,
    required this.location,
    required this.roomsize,
    required this.typeofhous,
    required this.typeofkitchen,
    required this.typeofrestroom,
    required this.pets,
    required this.numberofroom,
    required this.minimumrentper,
    required this.maxno_of_occupant,
    required this.numofrestroom,
    required this.Language,
    required this.educationlev,
    required this.religion,
    required this.profession,
    required this.nameoftype,
    required this.income_range,
    required this.maritalstatus,
    required this.age,
    required this.tribe,
    required this.gender,
    required this.name,
    required this.status,
    required this.drink,
    required this.cleaning,
    required this.budget,
    required this.location1,
    required this.location2,
    required this.location3,
    required this.Duration,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Flexible(
        child: Column(
          children: [
            AppBar(
              leading: IconButton(
                  // ignore: prefer_const_constructors
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color.fromRGBO(51, 51, 51, 1),
                  ),
                  onPressed: () {
                    Navigator.pop(context, true);
                  }),
              backgroundColor: Colors.white,
              elevation: 0.1,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
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
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('About Me',
                        softWrap: true,
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              fontSize: 17,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(153, 0, 204, 1),
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                  // FittedBox(
                  // fit: BoxFit.fitWidth,
                  SizedBox(height: 15)
                  // first line
//
                  ,
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('serviced',
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(51, 51, 51, 0.4),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text('location',
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(serviced,
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(location,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //
                  SizedBox(
                    height: 20,
                  ),
                  //
                  // second line
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Religion Incination',
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(51, 51, 51, 0.4),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text('Sexual Inclination',
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(religion,
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(sex,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Cleaning',
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(51, 51, 51, 0.4),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text('Pets',
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(cleaning,
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(pets,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Language',
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(51, 51, 51, 0.4),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text('Educational Level',
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(Language,
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(educationlev,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Alcohol',
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(51, 51, 51, 0.4),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text('Age Range',
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(drink,
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w400),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(age,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // ROOMMATE PREFERENCE
                  //

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Roommate Preference',
                        softWrap: true,
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              fontSize: 17,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(153, 0, 204, 1),
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                  // /
                  SizedBox(
                    height: 20,
                  ),
                  // context
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Religious Inclination',
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(51, 51, 51, 0.4),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text('Gender',
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(religion,
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(gender,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //
                  SizedBox(
                    height: 20,
                  ),
                  //
                  // second line
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Cleaning Habits',
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(51, 51, 51, 0.4),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text('Sexual Inclination',
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(cleaning,
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(sex,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Language',
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(51, 51, 51, 0.4),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          width: 114,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text('Pets',
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(Language,
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(pets,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Alcohol Drinking Habits',
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(51, 51, 51, 0.4),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text('Educational Level',
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(Language,
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(educationlev,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('',
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(51, 51, 51, 0.4),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text('Age Range',
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('',
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w400),
                              )),
                        ),
                        Container(
                          width: 114,
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(age,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  //

                  //
                  SizedBox(
                    height: 20,
                  ),
                  // location
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Location',
                        softWrap: true,
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              fontSize: 17,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(153, 0, 204, 1),
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // context
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Budget',
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(budget,
                                softWrap: true,
                                style: GoogleFonts.ubuntu(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.w400),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Location1',
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(location1,
                                softWrap: true,
                                style: GoogleFonts.ubuntu(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.w400),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Location2',
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(location2,
                                softWrap: true,
                                style: GoogleFonts.ubuntu(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.w400),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Location3',
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(location3,
                                softWrap: true,
                                style: GoogleFonts.ubuntu(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.w400),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Duration for Room Sharing',
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(Duration,
                                softWrap: true,
                                style: GoogleFonts.ubuntu(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.w400),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 230),
                        child: Column(
                          children: [
                            Text('Type of House',
                                softWrap: true,
                                style: GoogleFonts.ubuntu(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(51, 51, 51, 0.4),
                                      fontWeight: FontWeight.w300),
                                )),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                                width: 114,
                                child: Text('Self-Contain',
                                    softWrap: true,
                                    style: GoogleFonts.ubuntu(
                                      textStyle: TextStyle(
                                          fontSize: 13,
                                          fontStyle: FontStyle.normal,
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.w300),
                                    ))),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                                width: 114,
                                child: FittedBox(
                                  child: Text('Two Bedroom Flat',
                                      softWrap: true,
                                      style: GoogleFonts.ubuntu(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal,
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontWeight: FontWeight.w300),
                                      )),
                                )),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                                width: 114,
                                child: FittedBox(
                                  child: Text('A single room',
                                      softWrap: true,
                                      style: GoogleFonts.ubuntu(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            fontStyle: FontStyle.normal,
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontWeight: FontWeight.w300),
                                      )),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),

                  //
                  // additional note
                  //

                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Additional Note',
                        softWrap: true,
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              fontSize: 17,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(153, 0, 204, 1),
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('I am good and cheerful.',
                        softWrap: true,
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.w300),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => SaturnHomeowner())));
                      },
                      child: Container(
                        // ignore: sort_child_properties_last
                        child: Center(
                          child: Text('Decline',
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 18,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(217, 160, 236, 1),
                                    fontWeight: FontWeight.w700),
                              )),
                        ),

                        width: 152,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                                color: Color.fromARGB(255, 210, 61, 236))),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => SaturnHomeowner())));
                      },
                      child: Container(
                        // ignore: sort_child_properties_last
                        child: Center(
                          child: Text('Accept',
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 18,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontWeight: FontWeight.w700),
                              )),
                        ),

                        width: 152,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(153, 0, 204, 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                                color: Color.fromARGB(255, 210, 61, 236))),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

// this are the screen that appear when you tap on requests
class requestfull1 extends StatelessWidget {
  const requestfull1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: requestfullCommon(
        image: 'assets/images/house1.png',
        morephotos: Container(),
        typeofrestroom: 'Type of rest room',
        numofrestroom: 'number of restroom',
        location: 'location',
        minimumrentper: 'Minimum Rent Per Year',
        serviced: 'Serviced',
        furnishing: 'Furnishing',
        pets: 'pets',
        roomsize: 'Roomsize',
        typeofhous: 'Type of House',
        typeofkitchen: 'Type of Kitchen',
        Language: 'English',
        educationlev: 'Undergraduate',
        numberofroom: 'Number of Room',
        maxno_of_occupant: 'Maximum No of Occupants',
        maritalstatus: 'Marital Status',
        nameoftype: 'Self-Contain',
        income_range: 'Income Range',
        religion: 'Religion Inclination',
        profession: 'Profession',
        age: '18-30',
        tribe: 'Tribe',
        gender: 'female',
        name: 'Peppermint',
        status: 'Verified',
        drink: 'not frequently',
        sex: 'sex',
        cleaning: 'Frequent',
        budget: '100,000 - 200,000',
        location1: 'Maintanance',
        location2: 'Campus Gate',
        location3: 'Damico',
        Duration: '6 months to 1 year',
      ),
    );
  }
}
