// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class pricestructure1 extends StatefulWidget {
  const pricestructure1({super.key});

  @override
  State<pricestructure1> createState() => _pricestructure1State();
}

// ignore: camel_case_types
class _pricestructure1State extends State<pricestructure1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: pricestructure1()),
    );
  }
}

class Pricestructurecommon extends StatelessWidget {
  const Pricestructurecommon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text('hello'),
          width: 120,
          height: 45,
          // decoration: BoxDecoration(
          //     color: Color.fromRGBO(255, 255, 255, 1),
          //     borderRadius: BorderRadius.all(Radius.circular(10)),
          //     border: Border.all(color: Color.fromARGB(255, 210, 61, 236))),
        )
      ],
    );
  }
}
