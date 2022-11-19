// ignore_for_file: prefer_const_constructors, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

// import 'package:validators/validators.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturn/createacc_page/createacc2.dart';
import 'package:saturn/login/verifyemail.dart';

class Create_Account extends StatefulWidget {
  const Create_Account({Key? key}) : super(key: key);

  @override
  State<Create_Account> createState() => _Create_AccountState();
}

class _Create_AccountState extends State<Create_Account> {
  String _errorMessage = '';
  TextEditingController username = TextEditingController();
  var _confirmPass;

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
          title: Center(
            child: Text(
              'Create Account',
              style: TextStyle(color: Colors.purple, fontSize: 26),
            ),
          ),
        ),
        // appBar: AppBar(
        //   title: Center(
        //       child: Text(
        //     'Create Account',
        //     style: TextStyle(color: Colors.purple),
        //   )),
        //   backgroundColor: Colors.white,
        //   elevation: 0.1,
        // ),
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
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Create an Account to Get Started",
                            style: GoogleFonts.ubuntu(
                                // ignore: prefer_const_constructors
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w400))
                            // fontSize: 20,
                            // fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),

                    SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Username",
                            style: GoogleFonts.ubuntu(
                                // ignore: prefer_const_constructors
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w400))
                            // fontSize: 20,
                            // fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // formfield business name
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Form(
                        // key: _formKey,
                        child: TextFormField(
                          validator: ((value) {
                            if (value!.isEmpty) {
                              return 'please enter username';
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
                        child: Text("Email Adress",
                            style: GoogleFonts.ubuntu(
                                // ignore: prefer_const_constructors
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1),
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
                        // key: _formKey,
                        // onChanged: ((val) {
                        //   validateEmail(val);
                        // }),
                        keyboardType: TextInputType.emailAddress,
                        // validator: (val) {
                        //   if (val!.isEmpty) {
                        //     return "Please Enter Your Email";
                        //   } else {
                        //     return null;
                        //     ;
                        //   }
                        // },
                        // // validator: (value) {
                        //   isEmail(String str) {
                        //     return _email.hasMatch(str.toLowerCase());
                        //   }

                        //   if (value!.isEmpty) {
                        //     return "Please Enter Your Email";
                        //   } else if (value.characters = "@") {
                        //     return "Password must be atleast 8 characters long";
                        //   } else {
                        //     if (value != _confirmPass) {
                        //       return "Password must be same as above";
                        //     } else {
                        //       return null;
                        //     }
                        //   }
                        // },
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
                    // Padding(
                    //   padding: const EdgeInsets.all(5.0),
                    //   child: Align(
                    //     alignment: Alignment.centerLeft,
                    //     child: Text(
                    //       _errorMessage,
                    //       style: TextStyle(color: Colors.red),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Password",
                            style: GoogleFonts.ubuntu(
                                // ignore: prefer_const_constructors
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w400))
                            // fontSize: 20,
                            // fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // form field password
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: TextFormField(
                          // key: _formKey,
                          validator: (value) {
                            _confirmPass = value;
                            if (value!.isEmpty) {
                              return "Please Enter New Password";
                            } else if (value.length < 8) {
                              return "Password must be atleast 8 characters long";
                            } else {
                              return null;
                            }
                          },
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
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Confirm Password",
                            style: GoogleFonts.ubuntu(
                                // ignore: prefer_const_constructors
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w400))
                            // fontSize: 20,
                            // fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // formfield location(state)
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Re-Enter New Password";
                          } else if (_confirmPass != value) {
                            return "Password must be same as above";
                          } else {
                            return null;
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          // enabled: false,
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Colors.purple,
                              // width: 2.0,
                            ),
                          ),
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Colors.purple,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
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

                    // formfield for password

                    SizedBox(
                      height: 120,
                    ),
                    // InkWell(child: Text('CONTINUE'),customBorder: ,)
                    TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => VerNum())));
                          } else {
                            null;
                          }
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.purple),
                            // color: Colors.purple,
                            width: 360,
                            height: 60,
                            child: Center(
                              child: Text(
                                'CONTINUE',
                                style: TextStyle(color: Colors.white),
                              ),
                            ))),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateEmail(String val) {
    if (val.isEmpty) {
      setState(() {
        _errorMessage = "Email can not be empty";
      });
    } else if (!EmailValidator.validate(val, true)) {
      setState(() {
        _errorMessage = "Invalid Email Address";
      });
    } else {
      setState(() {
        _errorMessage = "";
      });
    }
  }
}
