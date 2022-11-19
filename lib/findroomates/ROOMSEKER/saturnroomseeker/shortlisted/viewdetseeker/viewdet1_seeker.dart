import 'package:flutter/material.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/viewdet/viewdetownercomm.dart';
import 'package:saturn/findroomates/ROOMSEKER/saturnroomseeker/shortlisted/viewdetseeker/viewdetseeker_common.dart';

class Viewdetseek1 extends StatefulWidget {
  const Viewdetseek1({super.key});

  @override
  State<Viewdetseek1> createState() => _Viewdetseek1State();
}

class _Viewdetseek1State extends State<Viewdetseek1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ViewdetseekerCommon(
        image: 'assets/images/house1.png',
        morephotos: Container(),
        typeofrestroom: 'Type of rest room',
        numofrestroom: 'number of restroom',
        location: 'location',
        minimumrentper: 'Minimum Rent Per Year',
        status: 'Serviced',
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
        alcohol: 'Drink Frequently',
        cleaning: 'Frequent',
        sex: 'Homosexual',
      ),
    );
  }
}
