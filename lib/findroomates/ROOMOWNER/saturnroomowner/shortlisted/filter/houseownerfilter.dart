// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../general/dropdown.dart';

class Houseown_filter extends StatefulWidget {
  const Houseown_filter({super.key});

  @override
  State<Houseown_filter> createState() => _Houseown_filterState();
}

class _Houseown_filterState extends State<Houseown_filter> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
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
              child: Text("Budget",
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
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Type of House",
                  style: GoogleFonts.ubuntu(
                      // ignore: prefer_const_constructors
                      textStyle: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(51, 51, 51, 0.8),
                          fontWeight: FontWeight.w400))
                  // fontSize: 20,
                  // fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          filterbut1(textbut: 'Self-Contain'),
          filterbut1(textbut: 'Two Bedroom flat'),
          filterbut1(textbut: 'Three Bedroom flat'),
          SizedBox(),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Duration",
                  style: GoogleFonts.ubuntu(
                      // ignore: prefer_const_constructors
                      textStyle: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(51, 51, 51, 0.8),
                          fontWeight: FontWeight.w400))
                  // fontSize: 20,
                  // fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: SizedBox(
                    width: 110,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: DropDownExample(
                        select: 'Pet6',
                        text1: 'Not',
                        text2: ' cleaning',
                        text3: 'i clean',
                        text4: '',
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 110,
                    height: 60,
                    child: DropDownExample(
                      select: 'Pet tolerance',
                      text1: 'Not-',
                      text2: 'i  m',
                      text3: 'i dont ',
                      text4: '',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// ignore_for_file: sort_child_properties_last

class DropDowncreated extends StatefulWidget {
  DropDowncreated(
      {key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.select,
      required this.text4})
      : super(key: key);

  @override
  _DropDowncreatedState createState() => _DropDowncreatedState();
  final String text1;
  final String text2;
  final String? text3;
  final String? text4;
  final String? select;
}

class _DropDowncreatedState extends State<DropDowncreated> {
  int selectedValue = 1;
  var value;
  // final String text1;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 1),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              border:
                  Border.all(color: const Color.fromARGB(255, 210, 61, 236))),
          width: 900,
          height: 150,
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: DropdownButton(
                    // disabledHint: ,

                    hint: Text('select ${widget.select}'),
                    // dropdownColor: Colors.teal,
                    enableFeedback: true,
                    isExpanded: true,
                    elevation: 0,
                    underline: Container(
                        // width: 300,
                        ),
                    value: selectedValue,
                    // ignore: prefer_const_literals_to_create_immutables
                    items: [
                      DropdownMenuItem(
                        enabled: true,
                        child: Row(
                          children: [
                            Text(widget.text1,
                                style: GoogleFonts.ubuntu(
                                    // ignore: prefer_const_constructors
                                    textStyle: TextStyle(
                                        fontSize: 15,
                                        fontStyle: FontStyle.normal,
                                        // color: Color.fromRGBO(0, 0, 0, 1),
                                        color: Color.fromRGBO(51, 51, 51, 0.6),
                                        fontWeight: FontWeight.w300))
                                // fontSize: 20,
                                // fontWeight: FontWeight.w500,
                                ),
                          ],
                        ),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text(widget.text2,
                            style: GoogleFonts.ubuntu(
                                // ignore: prefer_const_constructors
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    // color: Color.fromRGBO(0, 0, 0, 1),
                                    color: Color.fromRGBO(51, 51, 51, 0.6),
                                    fontWeight: FontWeight.w300))
                            // fontSize: 20,
                            // fontWeight: FontWeight.w500,
                            ),
                        value: 2,
                      ),
                      DropdownMenuItem(
                          child: Text(widget.text3!,
                              style: GoogleFonts.ubuntu(
                                  // ignore: prefer_const_constructors
                                  textStyle: TextStyle(
                                      fontSize: 15,
                                      fontStyle: FontStyle.normal,
                                      // color: Color.fromRGBO(0, 0, 0, 1),
                                      color: Color.fromRGBO(51, 51, 51, 0.6),
                                      fontWeight: FontWeight.w300))
                              // fontSize: 20,
                              // fontWeight: FontWeight.w500,
                              ),
                          value: 3),
                      DropdownMenuItem(
                        child: Text(widget.text4!,
                            style: GoogleFonts.ubuntu(
                                // ignore: prefer_const_constructors
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    // color: Color.fromRGBO(0, 0, 0, 1),
                                    color: Color.fromRGBO(51, 51, 51, 0.6),
                                    fontWeight: FontWeight.w300))
                            // fontSize: 20,
                            // fontWeight: FontWeight.w500,
                            ),
                      )
                    ],
                    onChanged: (dynamic value) {
                      setState(() {
                        selectedValue = value;
                      });
                    }),
              )),
        ),
      );
}

class filterbut1 extends StatefulWidget {
  // var text;

  const filterbut1({super.key, required this.textbut});
  final String textbut;

  @override
  State<filterbut1> createState() => _filterbut1State();
}

class _filterbut1State extends State<filterbut1> {
  var filterbut1 = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, bottom: 15),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                filterbut1 = !filterbut1;
              });
            },
            child: SizedBox(
              child: Container(
                width: 24,
                height: 25,
                decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    color: filterbut1
                        ? Color.fromRGBO(255, 255, 255, 1)
                        : Color.fromRGBO(153, 0, 204, 1),
                    // : Color.fromRGBO(153, 0, 204, 1),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Color.fromRGBO(51, 51, 51, 0.4))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Container(
              // width: 114,
              child: FittedBox(
                child: Text(widget.textbut,
                    softWrap: true,
                    style: GoogleFonts.ubuntu(
                      // ignore: prefer_const_constructors
                      textStyle: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(51, 51, 51, 0.4),
                          fontWeight: FontWeight.w400),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
