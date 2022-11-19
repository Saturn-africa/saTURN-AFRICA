import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../general/dropdown.dart';

class Roomateown_filter extends StatefulWidget {
  const Roomateown_filter({super.key});

  @override
  State<Roomateown_filter> createState() => _Roomateown_filterState();
}

class _Roomateown_filterState extends State<Roomateown_filter> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Gender",
                  style: GoogleFonts.ubuntu(
                      // ignore: prefer_const_constructors
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          // color: Color.fromRGBO(0, 0, 0, 1),
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontWeight: FontWeight.w400))
                  // fontSize: 20,
                  // fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // formfield emailadress
          Center(
            child: Container(
              width: 380,
              height: 60,
              child: DropDownExample(
                select: 'Gender',
                text1: 'Both',
                text2: 'Male',
                text3: 'Female',
                text4: 'Not-Applicable',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Sexual Inclination",
                  style: GoogleFonts.ubuntu(
                      // ignore: prefer_const_constructors
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          // color: Color.fromRGBO(0, 0, 0, 1),
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontWeight: FontWeight.w400))
                  // fontSize: 20,
                  // fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // formfield emailadress
          Center(
            child: Container(
              width: 380,
              height: 60,
              child: DropDownExample(
                select: 'sexual inclination',
                text1: 'Not-Applicable',
                text2: 'Bisexual',
                text3: 'Homo sexual',
                text4: 'Heterosexual',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Religious Inlination",
                  style: GoogleFonts.ubuntu(
                      // ignore: prefer_const_constructors
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          // color: Color.fromRGBO(0, 0, 0, 1),
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontWeight: FontWeight.w400))
                  // fontSize: 20,
                  // fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // formfield emailadress
          Center(
            child: Container(
              width: 380,
              height: 60,
              child: DropDownExample(
                select: 'Religion Inclination',
                text1: 'Not-Applicable',
                text2: 'Muslim',
                text3: 'Christian',
                text4: 'Other',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Age-Range",
                  style: GoogleFonts.ubuntu(
                      // ignore: prefer_const_constructors
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          // color: Color.fromRGBO(0, 0, 0, 1),
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontWeight: FontWeight.w400))
                  // fontSize: 20,
                  // fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // formfield emailadress
          Center(
            child: Container(
              width: 380,
              height: 60,
              child: DropDownExample(
                select: 'Age-Range',
                text1: 'All',
                text2: '31-50',
                text3: '51-above',
                text4: '18-30',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Pet Tolerance",
                  style: GoogleFonts.ubuntu(
                      // ignore: prefer_const_constructors
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          // color: Color.fromRGBO(0, 0, 0, 1),
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontWeight: FontWeight.w400))
                  // fontSize: 20,
                  // fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // formfield emailadress
          Center(
            child: Container(
              width: 380,
              height: 60,
              child: DropDownExample(
                select: 'Pet tolerance',
                text1: 'Not-Applicable',
                text2: 'i outsource my own cleaning',
                text3: 'i dont clean',
                text4: '',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Language",
                  style: GoogleFonts.ubuntu(
                      // ignore: prefer_const_constructors
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          // color: Color.fromRGBO(0, 0, 0, 1),
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontWeight: FontWeight.w400))
                  // fontSize: 20,
                  // fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // formfield emailadress
          Center(
            child: Container(
              width: 380,
              height: 60,
              child: DropDownExample(
                select: 'language',
                text1: 'English',
                text2: 'other',
                text3: 'All',
                text4: '',
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              // ignore: sort_child_properties_last
              child: Center(
                child: FittedBox(
                  child: Text('APPLY',
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontWeight: FontWeight.w400),
                      )),
                ),
              ),

              width: 350,
              height: 60,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(153, 0, 204, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Color.fromRGBO(153, 0, 204, 1))),
            ),
          )
        ],
      ),
    );
  }
}
