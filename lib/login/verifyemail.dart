// ignore_for_file: prefer_const_constructors, avoid_print, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:saturn/Serviceneed.dart';
import 'package:saturn/createacc_page/createacc1.dart';

class VerNum extends StatelessWidget {
  const VerNum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                      child: Text(
                    'Verify Email Adress',
                    style: TextStyle(color: Colors.purple),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Enter code sent to example@abc.com',
                      style: TextStyle(fontSize: 12)),
                  SizedBox(
                    height: 20,
                  ),
                  //        TextFormField(

                  //         // obscuringCharacter: true,
                  //         // textInputAction: TextInputType.datetime,/
                  // smartDashesType: SmartDashesType.enabled,
                  //           // OtpTextField:,
                  //         decoration: InputDecoration(
                  //           suffix: IconButton(
                  //               onPressed: () {}, icon: Icon(Icons.remove_red_eye)),
                  //           fillColor: Colors.white,
                  //           focusedBorder: OutlineInputBorder(
                  //             borderRadius: BorderRadius.circular(11.0),
                  //             borderSide: BorderSide(
                  //               color: Colors.purple,
                  //             ),
                  //           ),
                  //           enabledBorder: OutlineInputBorder(
                  //             borderRadius: BorderRadius.circular(11.0),
                  //             borderSide: BorderSide(
                  //               color: Colors.purple,
                  //               width: 2.0,

                  //             ),
                  //           ),

                  //       ),
                  //                       ),
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                        ),
                        borderRadius: BorderRadius.circular(22)),
                    child: Column(
                      children: [
                        OtpTextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11.0),
                              borderSide: BorderSide(
                                color: Colors.purple,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11.0),
                              borderSide: BorderSide(
                                color: Colors.purple,
                                width: 2.0,
                              ),
                            ),
                          ),

                          numberOfFields: 5,

                          // enabledBorderColor: ,

                          borderColor: Colors.black,

                          // showFieldAsBox: true, //set to true to show as box or false to show as dash

                          onSubmit: (String verificationCode) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Service())));
                          }, // end onSubmit
                        ),
                        SizedBox(
                          height: 12,
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 450,
                  ),
// bottom text
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('Did not recieve OTP code ?'))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Resend Code',
                          style: TextStyle(color: Colors.purple),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8, bottom: 18),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Call support',
                          style: TextStyle(color: Colors.purple),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
