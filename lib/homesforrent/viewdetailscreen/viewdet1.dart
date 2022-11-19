import 'package:flutter/material.dart';

import '../common/viewdetails.dart';
import '../homesfeed.dart';

class Viewdet1 extends StatefulWidget {
  const Viewdet1({super.key});

  @override
  State<Viewdet1> createState() => _Viewdet1State();
}

class _Viewdet1State extends State<Viewdet1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ViewdetCommon(
        image: 'assets/images/house1.png',
        morephotos: Container(),
        typeofrestroom: 'Type of rest room',
        numofrestroom: 'number of restroom',
        location: 'location',
        minimumrentper: 'Minimum Rent Per Year',
        serviced: 'Serviced',
        furnishing: 'Furnishing',
        pets: 'pets',
        roomsize: 'Roomsize',
        typeofhous: 'Type of House',
        typeofkitchen: 'Type of Kitchen',
        Language: 'English',
        educationlev: 'Undergraduate',
        numberofroom: 'Number of Room',
        maxno_of_occupant: 'Maximum No of Occupants',
        maritalstatus: 'Marital Status',
        nameoftype: 'Self-Contain',
        income_range: 'Income Range',
        religion: 'Religion',
        profession: 'Profession',
        age: 'Age',
        tribe: 'Tribe',
      ),
    );
  }
}
