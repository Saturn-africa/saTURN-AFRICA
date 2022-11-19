// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:saturn/login/phonenumber.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 65),
          Center(
            child: Icon(
              Icons.phone_in_talk,
              color: Colors.purple,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: MyHomePage(),
          )
        ],
      ),
    );
  }
}
