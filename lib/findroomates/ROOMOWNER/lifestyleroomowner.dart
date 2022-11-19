// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/findroomates/ROOMOWNER/Roommate_Pref.dart';
import 'package:saturn/findroomates/ROOMOWNER/houseinfoowner.dart';
import 'package:saturn/findroomates/ROOMSEKER/houseinfoseeker.dart';

import '../../general/dropdown.dart';

class Lifestyleowner extends StatefulWidget {
  const Lifestyleowner({Key? key, required this.nextto}) : super(key: key);

  @override
  State<Lifestyleowner> createState() => _LifestyleownerState();
  final Widget nextto;
}

// GestureDetector(
//       onTap: () {
//         setState(() {
//           FocusManager.instance.primaryFocus!.unfocus();
//         });
class _LifestyleownerState extends State<Lifestyleowner> {
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
                const EdgeInsets.only(top: 25, right: 80, left: 20, bottom: 10),
            child: Align(
              alignment: Alignment.center,
              child: Text("Lifestyle information",
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
                Padding(
                  padding: const EdgeInsets.only(
                      top: 29, right: 86, left: 30, bottom: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'Filling this information allows a potential roommat to have an idea of who you are and how they can relate with you.',
                        style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                color: Color.fromRGBO(51, 51, 51, 1),
                                fontWeight: FontWeight.w400))
                        // fontSize: 20,
                        // fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Education Level",
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
                      text1: 'Undergraduate',
                      text2: 'Graduate',
                      text3: 'Secondary School Leaver',
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
                    child: Text("Do you smoke",
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
                      select: 'sexual inc...',
                      text1: 'I smoke (Outdoor Only)',
                      text2: 'I smoke frequently',
                      text3: 'I rarely smoke',
                      text4: 'I dont smoke',
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
                    child: Text("Pet Tolerace",
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
                      text1: 'i do have pets',
                      text2: 'i dont have pets',
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
                    child: Text("Do you drink?",
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
                // formfield drink
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
                SizedBox(
                  height: 10,
                ),
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
                // formfield emailadress
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
                SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Roommate_pref())));
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
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: Color.fromARGB(255, 210, 61, 236))),
                    )),
                SizedBox(
                  height: 12,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Roommate_pref())));
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
                      height: 60,
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
  // ));
}
// }ROOMSEEKER

class LifestyleSEEKER extends StatefulWidget {
  const LifestyleSEEKER({
    Key? key,
  }) : super(key: key);

  @override
  State<LifestyleSEEKER> createState() => _LifestyleSEEKERState();
}

// GestureDetector(
//       onTap: () {
//         setState(() {
//           FocusManager.instance.primaryFocus!.unfocus();
//         });
class _LifestyleSEEKERState extends State<LifestyleSEEKER> {
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
                const EdgeInsets.only(top: 25, right: 80, left: 20, bottom: 10),
            child: Align(
              alignment: Alignment.center,
              child: Text("Lifestyle information",
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
                Padding(
                  padding: const EdgeInsets.only(
                      top: 29, right: 86, left: 30, bottom: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'Filling this information allows a potential roommat to have an idea of who you are and how they can relate with you.',
                        style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                color: Color.fromRGBO(51, 51, 51, 1),
                                fontWeight: FontWeight.w400))
                        // fontSize: 20,
                        // fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Education Level",
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
                      text1: 'Undergraduate',
                      text2: 'Graduate',
                      text3: 'Secondary School Leaver',
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
                    child: Text("Do you smoke",
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
                      select: 'sexual inc...',
                      text1: 'I smoke (Outdoor Only)',
                      text2: 'I smoke frequently',
                      text3: 'I rarely smoke',
                      text4: 'I dont smoke',
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
                    child: Text("Pet Tolerace",
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
                      text1: 'i do have pets',
                      text2: 'i dont have pets',
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
                    child: Text("Do you drink?",
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
                // formfield drink
                Center(
                  child: Container(
                    width: 380,
                    height: 60,
                    child: DropDownExample(
                      select: '...',
                      text1: 'I drink (rarely)',
                      text2: 'I drink frequently',
                      text3: "I don't drink",
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
                // formfield emailadress
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
                SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Houseinfoseeker())));
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
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: Color.fromARGB(255, 210, 61, 236))),
                    )),
                SizedBox(
                  height: 12,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Houseinfoseeker())));
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
                      height: 60,
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
  // ));
}
// }
