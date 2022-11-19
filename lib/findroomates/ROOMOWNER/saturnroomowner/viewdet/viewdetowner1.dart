import 'package:flutter/material.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/viewdet/viewdetownercomm.dart';

class Viewdetown1 extends StatefulWidget {
  const Viewdetown1({super.key});

  @override
  State<Viewdetown1> createState() => _Viewdetown1State();
}

class _Viewdetown1State extends State<Viewdetown1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ViewdetownerCommon(
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
        gender: 'female',
        name: 'Peppermint',
      ),
    );
  }
}
