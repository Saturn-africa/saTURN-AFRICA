// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/homesforrent/homesfeed.dart';

import '../../findroomates/ROOMOWNER/additionalinfo.dart';

//
// Documentation : this is flutter build app
// ref: /rok/pub.dev/line 2908
//
// class Viewdet extends StatefulWidget {
//   const Viewdet({super.key});

//   @override
//   State<Viewdet> createState() => _ViewdetState();
// }

// class _ViewdetState extends State<Viewdet> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ViewdetCommon(
//         image: 'assets/images/house1.png',
//         morephotos: Homefeed(),
//         typeofrestroom: 'Type of rest room',
//         numofrestroom: 'number of restroom',
//         location: 'location',
//         minimumrentper: 'Minimum Rent Per Year',
//         serviced: 'Serviced',
//         furnishing: 'Furnishing',
//         pets: 'pets',
//         roomsize: 'Roomsize',
//         typeofhous: 'Type of House',
//         typeofkitchen: 'Type of Kitchen',
//         Language: 'English',
//         educationlev: 'Undergraduate',
//         numberofroom: 'Number of Room',
//         maxno_of_occupant: 'Maximum No of Occupants',
//         maritalstatus: 'Marital Status',
//         nameoftype: 'Self-Contain',
//         income_range: 'Income Range',
//         religion: 'Religion',
//         profession: 'Profession',
//         age: 'Age',
//         tribe: 'Tribe',
//       ),
//     );
//   }
// }

class ViewdetCommon extends StatelessWidget {
  final String image;
  final String tribe;
  final String serviced;
  final String furnishing;
  final String location;
  final String educationlev;
  final String roomsize;
  final String Language;
  final String typeofhous;
  final String typeofkitchen;
  final String typeofrestroom;
  final String pets;
  final dynamic numberofroom;
  final String minimumrentper;
  final String religion;
  final String profession;
  final String nameoftype;
  final String income_range;
  final String maritalstatus;
  final dynamic maxno_of_occupant;
  final dynamic age;
  final dynamic numofrestroom;
  final Widget morephotos;
  const ViewdetCommon({
    super.key,
    required this.image,
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
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
            Image.asset(
              image,
              fit: BoxFit.contain,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => morephotos)));
                },
                child: Container(
                    width: 330,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(153, 0, 204, 1),
                        // : Color.fromRGBO(153, 0, 204, 1),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    // ignore: sort_child_properties_last
                    child: Center(
                      child: Text('VIEW MORE PHOTOS',
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                fontSize: 18,
                                fontStyle: FontStyle.normal,
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontWeight: FontWeight.w700),
                          )),
                    ))),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Room Overview',
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
                  ,
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
                              child: Text(location,
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
                  //
                  //
                  // second line
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Frequent',
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 00, 0, 1),
                                    fontWeight: FontWeight.w400),
                              )),
                        ),
                        Container(
                          width: 114,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text("Don't have pets",
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
                  // third line
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(typeofhous,
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
                            child: Text(furnishing,
                                softWrap: true,
                                style: GoogleFonts.ubuntu(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(51, 51, 51, 0.4),
                                      fontWeight: FontWeight.w400),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // fourth line
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
                          child: Align(
                            alignment: Alignment.centerLeft,
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // fifth line
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(roomsize,
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
                              child: Text(minimumrentper,
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
                  // eigth line
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Drink frequently",
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
                              child: Text('18 - 30',
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
                  // SIXTH line
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(numberofroom.toString(),
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(51, 51, 51, 0.4),
                                    fontWeight: FontWeight.w400),
                              )),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(typeofkitchen,
                              softWrap: true,
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(51, 51, 51, 0.4),
                                    fontWeight: FontWeight.w400),
                              )),
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
                          child: Text("Drink frequently",
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
                              // fit: BoxFit.fitWidth,
                              child: Text('18 - 30',
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
                  // ninth line
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(numofrestroom.toString(),
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
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(typeofrestroom,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
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
                  // tenth line
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(maxno_of_occupant.toString(),
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
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(typeofrestroom,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
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
                  // eleventh line
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Drink frequently",
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
                            child: Text('18 - 30',
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
                      ],
                    ),
                  ),
                  //
                  // H OU SE A ME NI TI ES
                  //
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('House Amenities',
                        softWrap: true,
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              fontSize: 17,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(153, 0, 204, 1),
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      House_amen_button(
                        textbut: 'wifi',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: House_amen_button(
                          textbut: 'Washin Machine',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      House_amen_button(
                        textbut: 'Tv',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: House_amen_button(
                          textbut: 'Elevator',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      House_amen_button(
                        textbut: 'wifi',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: House_amen_button(
                          textbut: 'Washin Machine',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      House_amen_button(
                        textbut: 'wifi',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: House_amen_button(
                          textbut: 'Washin Machine',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      House_amen_button(
                        textbut: 'wifi',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: House_amen_button(
                          textbut: 'Washin Machine',
                        ),
                      ),
                    ],
                  ),
                  //
                  //  TENANT PREFENCE
                  //
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Tenant Preference',
                        softWrap: true,
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              fontSize: 17,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(153, 0, 204, 1),
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                  SizedBox(height: 15)
                  // first line
                  ,
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(age,
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
                              child: Text(profession,
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

                  SizedBox(height: 15)
                  // second line of tenant prefernce
                  ,
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('100,000-200,000',
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
                              child: Text(nameoftype,
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
                  SizedBox(height: 20)
                  // third line of tenant prefernce
                  ,
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
                                    color: Color.fromRGBO(51, 51, 51, 0.4),
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
                              child: Text(tribe,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20)
                  // fourth line of tenant prefernce
                  ,
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Maintenance',
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
                              child: Text(nameoftype,
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
                  SizedBox(height: 20)
                  // fifth line of tenant prefernce
                  ,
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(maritalstatus,
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
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(income_range,
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20)
                  // last line of tenant prefernce
                  ,
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Campus Gate',
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
                          // constraints:
                          //     BoxConstraints(minWidth: double.infinity),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text('Campus gate',
                                  softWrap: true,
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        color: Color.fromRGBO(51, 51, 51, 0.4),
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //
                  // additional note
                  //
                  SizedBox(
                    height: 32,
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
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Additional())));
                },
                child: Container(
                  // ignore: sort_child_properties_last
                  child: Center(
                    child: Text('SKIP',
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
                    child: Text('NEXT',
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
