// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/findroomates/ROOMOWNER/additionalinfo.dart';

import 'houseinfoowner.dart';

class House_amenities extends StatefulWidget {
  House_amenities({
    super.key,
  });
  // final String text;
  // final Size Contsize = MediaQuery.of(context).size;

  @override
  State<House_amenities> createState() => _House_amenitiesState();
}

class _House_amenitiesState extends State<House_amenities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding:
              const EdgeInsets.only(top: 25, right: 80, left: 20, bottom: 20),
          child: Align(
            alignment: Alignment.center,
            child: Text("House Amenities",
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
      body: SafeArea(
        child: Column(
          children: [
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    custbutton(text: 'Fenced'),
                    custbutton(text: 'Gateman'),
                    custbutton(text: 'light'),
                    custbutton(text: 'Space'),
                  ],
                ),
              ),
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    custbutton(text: 'Fenced'),
                    custbutton(text: 'Gateman'),
                    custbutton(text: 'light'),
                    custbutton(text: 'Space'),
                  ],
                ),
              ),
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    custbutton(text: 'Fenced'),
                    custbutton(text: 'Gateman'),
                    custbutton(text: 'light'),
                    custbutton(text: 'Space'),
                  ],
                ),
              ),
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    custbutton(text: 'Fenced'),
                    custbutton(text: 'Gateman'),
                    custbutton(text: 'light'),
                    custbutton(text: 'Space'),
                  ],
                ),
              ),
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    custbutton(text: 'Fenced'),
                    custbutton(text: 'Gateman'),
                    custbutton(text: 'light'),
                    custbutton(text: 'Space'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    custbutton(text: 'Fenjhjhkced'),
                    custbutton(text: 'Gateman'),
                    custbutton(text: 'light'),
                    custbutton(text: 'Space'),
                  ],
                ),
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

class custbutton extends StatefulWidget {
  const custbutton({super.key, required this.text});
  final String text;

  @override
  State<custbutton> createState() => _custbuttonState();
}

class _custbuttonState extends State<custbutton> {
  var ispresscol = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          // left: 03,
          ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 0),
        child: TextButton(
            onPressed: () {
              setState(() {
                ispresscol = !ispresscol;
                // buttonPress == isPress;
              });
            },
            child: Container(
              constraints: BoxConstraints(maxHeight: double.infinity),
              // ignore: sort_child_properties_last
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.text,
                      softWrap: true,
                      style: GoogleFonts.ubuntu(
                        // ignore: prefer_const_constructors
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(51, 51, 51, 1),
                            fontWeight: FontWeight.w400),
                      )),
                ),
              ),

              // width: 80,
              // height: 30,
              decoration: BoxDecoration(
                  color: ispresscol
                      ? Color.fromRGBO(255, 255, 255, 0.4)
                      : Color.fromRGBO(153, 0, 204, 1),
                  // : Color.fromRGBO(153, 0, 204, 1),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Color.fromRGBO(51, 51, 51, 51))),
            )),
      ),
    );
  }
}
