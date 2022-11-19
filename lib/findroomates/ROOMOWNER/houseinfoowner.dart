// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/findroomates/ROOMOWNER/houseamenities.dart';

import '../../general/dropdown.dart';

class House_Info extends StatefulWidget {
  House_Info({required this.nextto});

  @override
  State<House_Info> createState() => _House_InfoState();
  final Widget nextto;
}

class _House_InfoState extends State<House_Info> {
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
              child: Text('House INformation',
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
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              key: _formKey,
              child: Column(
                children: [
                  // amount of sharing

                  SizedBox(
                    height: 10,
                  ),
                  // formfield Amount of sharing
                  // Select(),
                  SizedBox(
                    height: 12,
                  ),
                  // location
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Location",
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
                  // formfield location
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: TextFormField(
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return 'This field cannot be empty';
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
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.purple,
                            // width: 2.0,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
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
                    height: 12,
                  ),
                  // type of house

                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Type of house",
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
                  // formfield type of house;
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: TextFormField(
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return 'This field cannot be empty';
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
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.purple,
                            // width: 2.0,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
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
                    height: 12,
                  ),
                  // number of people
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Number of people",
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
                  // formfield number of people
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: TextFormField(
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return 'This field cannot be empty';
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
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.purple,
                            // width: 2.0,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
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
                    height: 12,
                  ),
                  // locationa
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Location",
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
                  // formfield Location
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: TextFormField(
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return 'This field cannot be empty';
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
                    height: 12,
                  ),
                  //
                  // duration of stying
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Duration of staying",
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
                    height: 15,
                  ),
                  // duration field
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        //  minimum
                        child: Container(
                          width: 100,
                          height: 50,
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: TextFormField(
                              // key: _formKey,

                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.numberWithOptions(),
                              decoration: InputDecoration(
                                hintText: 'Minimun',
                                hintStyle: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 15,
                                        fontStyle: FontStyle.normal,
                                        // color: Color.fromRGBO(0, 0, 0, 1),
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        fontWeight: FontWeight.w400)),
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
                        ),
                      ),
                      // maximum formfield
                      Padding(
                        padding: const EdgeInsets.only(left: 130),
                        child: Container(
                          width: 100,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.numberWithOptions(),
                              decoration: InputDecoration(
                                hintText: 'Maximum',
                                hintStyle: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        fontSize: 15,
                                        fontStyle: FontStyle.normal,
                                        // color: Color.fromRGBO(0, 0, 0, 1),
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                        fontWeight: FontWeight.w400)),
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                    color: Colors.purple,
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
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  SizedBox(
                    height: 0,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          // no of rooms
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15, bottom: 20),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text("No of Rooms",
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
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 66,
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  keyboardType:
                                      TextInputType.numberWithOptions(),
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide(
                                        color: Colors.purple,
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
                            ),
                          ),
                        ],
                      ),
                      // typoe of kitchen
                      Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 130, bottom: 20),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text("Type of Kitchen",
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
                          Padding(
                            padding: const EdgeInsets.only(left: 140),
                            child: Container(
                              width: 100,
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: TextFormField(
                                  // maxLength: 2,
                                  textInputAction: TextInputAction.next,
                                  // keyboardType: TextInputType.numberWithOptions(),

                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide(
                                        color: Colors.purple,
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
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          // no of restrooms
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15, bottom: 20),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text("No of Restrooms",
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
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              width: 66,
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  keyboardType:
                                      TextInputType.numberWithOptions(),
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide(
                                        color: Colors.purple,
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
                            ),
                          ),
                        ],
                      ),
                      // type of kitchen
                      Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 100, bottom: 20),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text("Type of Restroom",
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
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Container(
                              width: 100,
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: TextFormField(
                                  // maxLength: 2,
                                  textInputAction: TextInputAction.next,
                                  // keyboardType: TextInputType.numberWithOptions(),

                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide(
                                        color: Colors.purple,
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
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => widget.nextto)));
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
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => widget.nextto)));
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
