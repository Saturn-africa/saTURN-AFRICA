// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/findroomates/ROOMOWNER/houseamenities.dart';
import 'package:saturn/findroomates/ROOMSEKER/additionalinfoseeker.dart';
import 'package:saturn/findroomates/ROOMSEKER/houseinfoseeker.dart';

import '../../login/verifyemail.dart';

class Houseinfoseeker extends StatefulWidget {
  const Houseinfoseeker({super.key});

  @override
  State<Houseinfoseeker> createState() => _HouseinfoseekerState();
}

class _HouseinfoseekerState extends State<Houseinfoseeker> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          FocusManager.instance.primaryFocus!.unfocus();
        });
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.1,
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text('House Information',
                style: GoogleFonts.ubuntu(
                    // ignore: prefer_const_constructors
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                        color: Color.fromRGBO(153, 0, 204, 1),
                        fontWeight: FontWeight.w500))),
          ),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context, true);
              }),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(minWidth: 330.0, minHeight: 25.0),
              width: 380,
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                key: _formKey,
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Budget",
                            style: GoogleFonts.ubuntu(
                                // ignore: prefer_const_constructors
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                    fontWeight: FontWeight.w400))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Form(
                        // key: _formKey,
                        child: TextFormField(
                          validator: ((value) {
                            if (value!.isEmpty) {
                              return 'This field cannot be left empty';
                            }
                            return null;
                          }),
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
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Preferable Location 1",
                          style: GoogleFonts.ubuntu(
                              // ignore: prefer_const_constructors
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(51, 51, 51, 1),
                                  fontWeight: FontWeight.w400)),
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
                        validator: ((value) {
                          if (value!.isEmpty) {
                            return 'This field cannot be left empty';
                          }
                          return null;
                        }),
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

                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Preferable Location 2",
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
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: TextFormField(
                        validator: ((value) {
                          if (value!.isEmpty) {
                            return 'This field cannot be left empty';
                          }
                          return null;
                        }),
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
                        child: Text("Preferable Location 3",
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
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: TextFormField(
                        validator: ((value) {
                          if (value!.isEmpty) {
                            return 'This field cannot be left empty';
                          }
                          return null;
                        }),
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
                        child: Text("Type of House (mark three)",
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
                    Custombutton_(),
                    Custombutton_(),
                    Custombutton_(),
                    Custombutton_(),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                            "How long are you looking to share a house?",
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          //  minimum
                          child: Container(
                            width: 120,
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
                                        color: Color.fromRGBO(153, 0, 204, 1)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(153, 0, 204, 1)
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
                          padding: const EdgeInsets.only(left: 100),
                          child: Container(
                            width: 120,
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
                                        color: Color.fromRGBO(153, 0, 204, 1)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(153, 0, 204, 1)
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
                      height: 20,
                    ),
                    // InkWell(child: Text('CONTINUE'),customBorder: ,)
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      Additionalinfoseeker())));
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
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
                                    builder: ((context) =>
                                        Additionalinfoseeker())));
                          } else {
                            null;
                          }
                        },
                        child: Container(
                          // ignore: sort_child_properties_last
                          child: Center(
                            child: Text('SUBMIT',
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
      ),
    );
  }
}

class Custombutton_ extends StatefulWidget {
  const Custombutton_({
    super.key,
  });

  @override
  State<Custombutton_> createState() => _Custombutton_State();
}

class _Custombutton_State extends State<Custombutton_> {
  var buttonstate = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 12, left: 60),
        child: Align(
          alignment: Alignment.centerLeft,
          child: InkWell(
            onTap: () {
              setState(() {
                buttonstate = !buttonstate;
                // buttonPress == isPress;
              });
            },
            child: SizedBox(
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    color: buttonstate
                        ? Color.fromRGBO(255, 255, 255, 1)
                        : Color.fromRGBO(153, 0, 204, 1),
                    // : Color.fromRGBO(153, 0, 204, 1),
                    border: Border.all(color: Color.fromRGBO(153, 0, 204, 1))),
              ),
            ),
          ),
        ));
  }
}
