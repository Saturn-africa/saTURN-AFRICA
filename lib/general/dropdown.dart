// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// void main() => runApp(App());

class DropDownExample extends StatefulWidget {
  DropDownExample(
      {key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.select,
      required this.text4})
      : super(key: key);

  @override
  _DropDownExampleState createState() => _DropDownExampleState();
  final String text1;
  final String text2;
  final String? text3;
  final String? text4;
  final String? select;
}

class _DropDownExampleState extends State<DropDownExample> {
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
                    hint: Text('select ${widget.select}'),
                    // dropdownColor: Colors.teal,
                    enableFeedback: true,
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_drop_down),
                    elevation: 16,
                    underline: Container(
                        // width: 300,
                        ),
                    value: selectedValue,
                    // ignore: prefer_const_literals_to_create_immutables
                    items: [
                      DropdownMenuItem(
                        child: Text(widget.text1,
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
