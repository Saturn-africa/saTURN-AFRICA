import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profileseeker extends StatefulWidget {
  const Profileseeker({super.key});

  @override
  State<Profileseeker> createState() => _ProfileseekerState();
}

class _ProfileseekerState extends State<Profileseeker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              FittedBox(
                child: Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 2, top: 15),
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            // shape: BoxShape.circle,
                            // color: const Color.fromRGBO(217, 217, 217, 1),
                            // : Color.fromRGBO(153, 0, 204, 1),
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/download.png')),
                            border: Border.all(
                                color: const Color.fromRGBO(51, 51, 51, 0.4))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 30),
                        child: SizedBox(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    // ignore: sort_child_properties_last

                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(243, 245, 251, 1),

                                        // : Color.fromRGBO(153, 0, 204, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(60)),
                                        border: Border.all(
                                            color: Color.fromRGBO(
                                                51, 51, 51, 0.4))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('iRunstreet',
                                        style: GoogleFonts.ubuntu(
                                            // ignore: prefer_const_constructors
                                            textStyle: const TextStyle(
                                                fontSize: 24,
                                                fontStyle: FontStyle.normal,
                                                color: Color.fromRGBO(
                                                    51, 51, 51, 1),
                                                // color: const Color.fromRGBO(51, 51, 51, 0.6),
                                                fontWeight: FontWeight.w400))),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 6,
                                ),
                                child: Text('Upload your identity document',
                                    style: GoogleFonts.ubuntu(
                                        // ignore: prefer_const_constructors
                                        textStyle: const TextStyle(
                                            fontSize: 16,
                                            fontStyle: FontStyle.normal,
                                            color:
                                                Color.fromRGBO(51, 51, 51, 1),
                                            // color: const Color.fromRGBO(51, 51, 51, 0.6),
                                            fontWeight: FontWeight.w300))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 6,
                                ),
                                child: Text('Learn Why',
                                    style: GoogleFonts.ubuntu(
                                        // ignore: prefer_const_constructors
                                        textStyle: const TextStyle(
                                            fontSize: 16,
                                            fontStyle: FontStyle.normal,
                                            color:
                                                Color.fromRGBO(153, 0, 204, 1),
                                            // color: const Color.fromRGBO(51, 51, 51, 0.6),
                                            fontWeight: FontWeight.w300))),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 25),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (() {}),
                      child: ListTile(
                        trailing: Icon(
                          Icons.chevron_right_rounded,
                          size: 30,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                        title: Text('Profile Information',
                            style: GoogleFonts.ubuntu(
                                // ignore: prefer_const_constructors
                                textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    // color: const Color.fromRGBO(51, 51, 51, 0.6),
                                    fontWeight: FontWeight.w300))),
                        leading: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: const Color.fromRGBO(0, 0, 0, 0.2))),
                          child: Icon(
                            Icons.person,
                            color: Color.fromRGBO(153, 0, 204, 1),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (() {}),
                      child: ListTile(
                        trailing: Icon(
                          Icons.chevron_right_rounded,
                          size: 30,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                        title: Text('Favourite',
                            style: GoogleFonts.ubuntu(
                                // ignore: prefer_const_constructors
                                textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    // color: const Color.fromRGBO(51, 51, 51, 0.6),
                                    fontWeight: FontWeight.w300))),
                        leading: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: const Color.fromRGBO(0, 0, 0, 0.2))),
                          child: Icon(
                            Icons.person,
                            color: Color.fromRGBO(153, 0, 204, 1),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                        onTap: (() {}),
                        child: ListTile(
                          trailing: Icon(
                            Icons.chevron_right_rounded,
                            size: 30,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                          title: Text('House Description',
                              style: GoogleFonts.ubuntu(
                                  // ignore: prefer_const_constructors
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      // color: const Color.fromRGBO(51, 51, 51, 0.6),
                                      fontWeight: FontWeight.w300))),
                          leading: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: const Color.fromRGBO(0, 0, 0, 0.2))),
                            child: Icon(
                              Icons.person,
                              color: Color.fromRGBO(153, 0, 204, 1),
                            ),
                          ),
                          onTap: (() {}),
                        )),
                    InkWell(
                        onTap: (() {}),
                        child: ListTile(
                          trailing: Icon(
                            Icons.chevron_right_rounded,
                            size: 30,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                          title: Text('Settings',
                              style: GoogleFonts.ubuntu(
                                  // ignore: prefer_const_constructors
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      // color: const Color.fromRGBO(51, 51, 51, 0.6),
                                      fontWeight: FontWeight.w300))),
                          leading: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: const Color.fromRGBO(0, 0, 0, 0.2))),
                            child: Icon(
                              Icons.settings,
                              color: Color.fromRGBO(153, 0, 204, 1),
                            ),
                          ),
                          onTap: (() {}),
                        )),
                    InkWell(
                        onTap: (() {}),
                        child: ListTile(
                          trailing: Icon(
                            Icons.chevron_right_rounded,
                            size: 30,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                          title: Text('Log out',
                              style: GoogleFonts.ubuntu(
                                  // ignore: prefer_const_constructors
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      // color: const Color.fromRGBO(51, 51, 51, 0.6),
                                      fontWeight: FontWeight.w300))),
                          leading: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: const Color.fromRGBO(0, 0, 0, 0.2))),
                            child: Icon(
                              Icons.bar_chart_rounded,
                              color: Color.fromRGBO(153, 0, 204, 1),
                            ),
                          ),
                          onTap: (() {}),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
