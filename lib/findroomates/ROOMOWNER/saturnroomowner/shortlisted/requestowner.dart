// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/findroomates/ROOMOWNER/Roommate_Pref.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/shortlisted/requestfullscreenowner.dart';

class Requestbuild extends StatefulWidget {
  const Requestbuild({super.key});

  @override
  State<Requestbuild> createState() => _RequestbuildState();
}

class _RequestbuildState extends State<Requestbuild> {
  var requestlist = [
    {
      "profimage": "assets/images/female.png",
      "irunstreet": "irunstreet",
      "roommatereq": "roomate request to join",
      "requestscreen": requestfull1(),
    },
    {
      "profimage": "assets/images/female.png",
      "irunstreet": "irunstreet",
      "roommatereq": "roommate request to join",
      "requestscreen": requestfull1(),
    },
    {
      "requestscreen": requestfull1(),
      "profimage": "assets/images/female.png",
      "irunstreet": "irunstreet",
      "roommatereq": "Sent a roommate request."
    },
  ];
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 50),
      color: Colors.white,
      child: ListView.builder(
          itemCount: requestlist.length,
          itemBuilder: (context, index) {
            return Request(
              profimage: requestlist[index]["profimage"],
              requestscreen: requestlist[index]["requestscreen"],
              irunstreet: requestlist[index]["irunstreet"],
              rooommatereq: requestlist[index]["roommatereq"],
            );
          }
          // itemCount: requestlist.length,
          ),
    );
  }
}

class Request extends StatelessWidget {
  final profimage;
  final irunstreet;
  final rooommatereq;
  final requestscreen;
  const Request(
      {super.key,
      this.profimage,
      this.irunstreet,
      this.rooommatereq,
      this.requestscreen});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          (Card(
            // color: Color.fromRGBO(153, 0, 20, opacity),
            child: Container(
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                // image: DecorationImage(image: AssetImage(profimage.toString())),
                color: const Color.fromRGBO(255, 255, 255, 0.1),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                    color:
                        const Color.fromRGBO(153, 0, 204, 1).withOpacity(0.3)),
              ),
              child: InkWell(
                onTap: () {
                  (Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => requestscreen))));
                },
                child: ListTile(
                  leading: Container(
                    width: 80,
                    height: 100,
                    // // decoration: BoxDecoration(
                    // //     image: DecorationImage(image: AssetImage(profimage.toString())),
                    // //     color: const Color.fromRGBO(255, 255, 255, 1),
                    // //     borderRadius: const BorderRadius.all(Radius.circular(2)),
                    //     border: Border.all(color: const Color.fromARGB(51, 51, 51, 1))),
                    child: Image.asset(
                      profimage.toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(irunstreet.toString(),
                      style: GoogleFonts.ubuntu(
                          // ignore: prefer_const_constructors
                          textStyle: const TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontWeight: FontWeight.w400))),
                  subtitle: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(rooommatereq.toString(),
                          style: GoogleFonts.ubuntu(
                              // ignore: prefer_const_constructors
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(51, 51, 51, 0.3),
                                  fontWeight: FontWeight.w400)))),
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
