// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../ROOMOWNER/additionalinfo.dart';

class ViewdetseekerCommon extends StatelessWidget {
  final String image;
  final String tribe;
  final String alcohol;
  final String cleaning;
  final String status;
  final String furnishing;
  final String location;
  final String educationlev;
  final String roomsize;
  final String Language;
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
  final String nameoftype;
  final String income_range;
  final String maritalstatus;
  final dynamic maxno_of_occupant;
  final dynamic age;
  final dynamic numofrestroom;
  final Widget morephotos;
  const ViewdetseekerCommon({
    super.key,
    required this.image,
    required this.morephotos,
    required this.status,
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
    required this.cleaning,
    required this.alcohol,
    required this.sex,
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
                  SizedBox(height: 15),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Status',
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(51, 51, 51, 0.4),
                                    fontWeight: FontWeight.w400),
                              )),
                        ),
                        Container(
                          width: 114,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text("Gender",
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // f
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(status,
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 16,
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
                              child: Text(gender,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
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
                  //
                  //
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
                                    fontWeight: FontWeight.w400),
                              )),
                        ),
                        Container(
                          width: 114,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text("Sexual Inclination",
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // f
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
                                    fontSize: 16,
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
                              child: Text(sex,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
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
                  //
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
                                    fontWeight: FontWeight.w400),
                              )),
                        ),
                        Container(
                          width: 114,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text("Pets",
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // f
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
                                    fontSize: 16,
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
                              child: Text(pets,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
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
                  //
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
                                    fontWeight: FontWeight.w400),
                              )),
                        ),
                        Container(
                          width: 114,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text("Education Level",
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // f
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
                                    fontSize: 16,
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
                              child: Text(educationlev,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
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
                  //
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
                                    fontWeight: FontWeight.w400),
                              )),
                        ),
                        Container(
                          width: 114,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text("Age Range",
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // f
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(alcohol,
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 16,
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
                                        fontSize: 16,
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
                  //
                  //
                  //
                  // H OU SE A ME NI TI ES
                  //
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Roomate Prefernce',
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
                    height: 30,
                  ), //
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
                                    fontWeight: FontWeight.w400),
                              )),
                        ),
                        Container(
                          width: 114,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text("Sexual Inclination",
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // f
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
                                    fontSize: 16,
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
                              child: Text(sex,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
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
                  //
                  //
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
                                    fontWeight: FontWeight.w400),
                              )),
                        ),
                        Container(
                          width: 114,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text("Sexual Inclination",
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // f
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
                                    fontSize: 16,
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
                              child: Text(sex,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
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
                  //
                  //
                  //
                  //
                  SizedBox(
                    height: 30,
                  ),
                  // location
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Additional())));
                },
                child: Container(
                  // ignore: sort_child_properties_last
                  child: Center(
                    child: Text('View Photos',
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(153, 0, 204, 1),
                              fontWeight: FontWeight.w700),
                        )),
                  ),

                  width: 360,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border:
                          Border.all(color: Color.fromARGB(255, 210, 61, 236))),
                )),
            SizedBox(
              height: 9,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Additional())));
                },
                child: Container(
                  // ignore: sort_child_properties_last
                  child: Center(
                    child: Text('Send Request',
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontWeight: FontWeight.w700),
                        )),
                  ),

                  width: 360,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(153, 0, 204, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                )),
          ],
        ),
      ),
    );
  }
}

class House_amen_button extends StatefulWidget {
  // var text;

  const House_amen_button({super.key, required this.textbut});
  final String textbut;

  @override
  State<House_amen_button> createState() => _House_amen_buttonState();
}

class _House_amen_buttonState extends State<House_amen_button> {
  var House_amen_button = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 0, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    House_amen_button = !House_amen_button;
                    // buttonPress == isPress;
                  });
                },
                child: SizedBox(
                  child: Container(
                    // constraints: BoxConstraints(maxHeight: double.infinity),
                    // ignore: sort_child_properties_last

                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        color: House_amen_button
                            ? Color.fromRGBO(255, 255, 255, 1)
                            : Color.fromRGBO(153, 0, 204, 1),
                        // : Color.fromRGBO(153, 0, 204, 1),
                        borderRadius: BorderRadius.all(Radius.circular(60)),
                        border:
                            Border.all(color: Color.fromRGBO(51, 51, 51, 0.4))),
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Container(
              width: 114,
              child: Text(widget.textbut,
                  softWrap: true,
                  style: GoogleFonts.ubuntu(
                    // ignore: prefer_const_constructors
                    textStyle: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.normal,
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w400),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
