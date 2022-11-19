// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/saturnhomeroomowner.dart';

class Additional extends StatefulWidget {
  const Additional({super.key});

  @override
  State<Additional> createState() => _AdditionalState();
}

class _AdditionalState extends State<Additional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding:
                const EdgeInsets.only(top: 25, right: 0, left: 0, bottom: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Additional information",
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Additional information',
                      style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontWeight: FontWeight.w400))),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Expanded(
                    child: TextFormField(
                      maxLines: 6,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                color: Color.fromRGBO(51, 51, 51, 0.6),
                                fontWeight: FontWeight.w300)),
                        hintText:
                            'Give additional information on your house and roommate preference',
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(51, 51, 51, 0.6),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(51, 51, 51, 0.6),
                            // width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // photos
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Photos',
                        style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                color: Color.fromRGBO(51, 51, 51, 1),
                                fontWeight: FontWeight.w400))),
                  ),
                ),
                // images
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 9, right: 20),
                          child: Addimage(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 9, right: 20),
                          child: Addimage(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Addimage(),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 9, right: 20),
                          child: Addimage(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 9, right: 20),
                          child: Addimage(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Addimage(),
                        ),
                      ],
                    ),
                  ),
                ),
                // images

                SizedBox(
                  height: 70,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Additional())));
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
                              builder: ((context) => SaturnHomeowner())));
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
        ));
  }
}

class Addimage extends StatefulWidget {
  const Addimage({
    super.key,
  });

  @override
  State<Addimage> createState() => _AddimageState();
}

class _AddimageState extends State<Addimage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      // ignore: sort_child_properties_last
      child: Container(
        constraints: BoxConstraints(maxHeight: double.infinity),
        // ignore: sort_child_properties_last
        child: Center(),

        width: 120,
        height: 120,
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            // : Color.fromRGBO(153, 0, 204, 1),
            border: Border.all(color: Color.fromRGBO(51, 51, 51, 0.4))),
      ),
    );
  }
}
