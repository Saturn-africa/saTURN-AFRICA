// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/findroomates/ROOMOWNER/houseamenities.dart';
import 'package:saturn/findroomates/ROOMOWNER/houseinfoowner.dart';

import '../../general/dropdown.dart';

class Roommate_pref extends StatefulWidget {
  const Roommate_pref({super.key});

  @override
  State<Roommate_pref> createState() => _Roommate_prefState();
}

class _Roommate_prefState extends State<Roommate_pref> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        setState(() {
          FocusManager.instance.primaryFocus!.unfocus();
        });
      }),
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding:
                const EdgeInsets.only(top: 25, right: 0, left: 0, bottom: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Roommate preference",
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
          ),
          leading: IconButton(
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
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //       top: 29, right: 86, left: 30, bottom: 20),
                //   child: Align(
                //     alignment: Alignment.centerLeft,
                //     child: Text(
                //         'Filling this information allows a potential roommat to have an idea of who you are and how they can relate with you.',
                //         style: GoogleFonts.ubuntu(
                //             textStyle: TextStyle(
                //                 fontSize: 14,
                //                 fontStyle: FontStyle.normal,
                //                 color: Color.fromRGBO(51, 51, 51, 1),
                //                 fontWeight: FontWeight.w400))
                //         // fontSize: 20,
                //         // fontWeight: FontWeight.w500,
                //         ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Age Range",
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
                      select: '',
                      text1: 'Under-18',
                      text2: '18-30',
                      text3: '31-50',
                      text4: '51-Above',
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
                    child: Text("Gender",
                        style: GoogleFonts.ubuntu(
                            // ignore: prefer_const_constructors
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
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
                      text1: 'Male',
                      text2: 'female',
                      text3: '',
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
                    child: Text("Religious inclination",
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
                      text1: 'Muslim',
                      text2: 'Christian',
                      text3: 'Others',
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
                    child: Text("Sexual inclination",
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
                      select: 'sexual inc...',
                      text1: 'Heterosexual',
                      text2: 'Homosexual',
                      text3: 'Bisexual',
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
                    child: Text("Primary Language",
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
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: Colors.purple,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: Colors.purple,
                          // width: 2.0,
                        ),
                      ),
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
                    child: Text("Educational  level",
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
                      select: 'sexual inc...',
                      text1: 'Undergraduate',
                      text2: 'Graduate',
                      text3: 'Secondary School Leaver',
                      text4: '',
                    ),
                  ),
                ),
                // do you smoke
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Do You Smoke",
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

                Center(
                  child: Container(
                    width: 380,
                    height: 60,
                    child: DropDownExample(
                      select: 'sexual inc...',
                      text1: 'I smoke (Outdoor Only)',
                      text2: 'I smoke frequently',
                      text3: 'I rarely smoke',
                      text4: 'I dont smoke',
                    ),
                  ),
                ),
                // pet tolerance
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
                Center(
                  child: Container(
                    width: 380,
                    height: 60,
                    child: DropDownExample(
                      select: 'sexual inc...',
                      text1: 'i do have pets',
                      text2: 'i dont have pets',
                      text3: '',
                      text4: '',
                    ),
                  ),
                ),
                // do you drink
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Do You Drink",
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

                Center(
                  child: Container(
                    width: 380,
                    height: 60,
                    child: DropDownExample(
                      select: 'sexual inc...',
                      text1: 'I drink (rarely)',
                      text2: 'I drink frequently',
                      text3: "I don't drink",
                      text4: '',
                    ),
                  ),
                ),
                // cleaning
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Cleaning?",
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

                Center(
                  child: Container(
                    width: 380,
                    height: 60,
                    child: DropDownExample(
                      select: 'Cleaning',
                      text1: 'i do my own cleaning frequently',
                      text2: 'i outsource my own cleaning',
                      text3: 'i dont clean',
                      text4: '',
                    ),
                  ),
                ),
                // text button
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => House_Info(
                                    nextto: House_amenities(),
                                  ))));
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
                          border: Border.all(
                              color: Color.fromARGB(255, 210, 61, 236))),
                    )),
                SizedBox(
                  height: 9,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => House_Info(
                                    nextto: House_amenities(),
                                  ))));
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
        ),
      ),
    );
  }
}
