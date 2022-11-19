// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:saturn/findroomates/ROOMOWNER/houseinfoowner.dart';
import 'package:saturn/findroomates/ROOMSEKER/userInfo/personalinfo.dart';

class Note extends StatefulWidget {
  const Note({Key? key}) : super(key: key);

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
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
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.only(
                top: 100.33, left: 23.33, right: 307.3, bottom: 32.33),
            child: Container(
              width: 83,
              height: 83,
              // ignore: prefer_const_constructors
              child: Icon(
                Icons.info,
                color: Color.fromRGBO(153, 0, 204, 1),
                size: 90,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              // top: 174.33,
              left: 23.33,
              right: 90.3,
            ),
            child: Expanded(
              child: Text(
                'We care about YOU .',
                style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.normal,
                        color: Color.fromRGBO(153, 0, 204, 1),
                        fontWeight: FontWeight.w700)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23, top: 37, right: 38),
            child: Text(
              'We are requesting some of your personal informatuion to provide the best possible fit of roommates you would love and be interested to live with.We care about your safety and privacy and we would never release your information illegitimately',
              style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w300)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
              top: 170,
            ),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => PERSinfo())));
                },
                child: Container(
                  // ignore: sort_child_properties_last
                  child: Center(
                    child: Text('THANK YOU',
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontWeight: FontWeight.w700),
                        )),
                  ),

                  width: 360,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(153, 0, 204, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                )),
          )
        ],
      ),
    );
  }
}
// ignore_for_file: prefer_const_constructors

class Noteseeker extends StatefulWidget {
  const Noteseeker({Key? key}) : super(key: key);

  @override
  State<Noteseeker> createState() => _NoteseekerState();
}

class _NoteseekerState extends State<Noteseeker> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
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
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.only(
                top: 100.33, left: 23.33, right: 307.3, bottom: 32.33),
            child: Container(
              width: 83,
              height: 83,
              // ignore: prefer_const_constructors
              child: Icon(
                Icons.info,
                color: Color.fromRGBO(153, 0, 204, 1),
                size: 90,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              // top: 174.33,
              left: 23.33,
              right: 90.3,
            ),
            child: Expanded(
              child: Text(
                'We care about YOU .',
                style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.normal,
                        color: Color.fromRGBO(153, 0, 204, 1),
                        fontWeight: FontWeight.w700)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23, top: 37, right: 38),
            child: Text(
              'We are requesting some of your personal informatuion to provide the best possible fit of roommates you would love and be interested to live with.We care about your safety and privacy and we would never release your information illegitimately',
              style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w300)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
              top: 170,
            ),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => PERSinfo())));
                },
                child: Container(
                  // ignore: sort_child_properties_last
                  child: Center(
                    child: Text('THANK YOU',
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontWeight: FontWeight.w700),
                        )),
                  ),

                  width: 360,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(153, 0, 204, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                )),
          )
        ],
      ),
    );
  }
}
