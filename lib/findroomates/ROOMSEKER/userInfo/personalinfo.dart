// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/findroomates/ROOMOWNER/additionalinfo.dart';
import 'package:saturn/findroomates/ROOMOWNER/lifestyleroomowner.dart';
import 'package:saturn/findroomates/ROOMSEKER/houseinfoseeker.dart';
import 'package:saturn/general/dropdown.dart';
import 'package:saturn/findroomates/ROOMOWNER/Roommate_Pref.dart';
import 'package:saturn/findroomates/ROOMOWNER/houseinfoowner.dart';

class PERSinfo extends StatefulWidget {
  const PERSinfo({super.key});

  @override
  State<PERSinfo> createState() => _PERSinfoState();
}

class _PERSinfoState extends State<PERSinfo> {
  final _formKey = GlobalKey<FormState>();

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
                const EdgeInsets.only(top: 25, right: 80, left: 20, bottom: 20),
            child: Align(
              alignment: Alignment.center,
              child: Text("Personal information",
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

                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Username",
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
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.always,
                    validator: ((value) {
                      if (value!.isEmpty) {
                        return 'please enter username';
                      }
                      return null;
                    }),
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: Colors.purple,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: Colors.purple,
                          // width: 2.0,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: Colors.purple,
                          // width: 2.0,
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
                    child: Text("Age range",
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
                // formfield Age
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
                      select: 'Gender',
                      text1: 'Male',
                      text2: 'female',
                      text3: '',
                      text4: '',
                    ),
                  ),
                ),
                // formfield emailadress

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
                    child: Text("Primary language",
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
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => LifestyleSEEKER())));
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
                    key: _formKey,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => LifestyleSEEKER())));
                      } else {
                        null;
                      }
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
