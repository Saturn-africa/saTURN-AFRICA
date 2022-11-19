// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:saturn/Serviceneed.dart';

import 'package:saturn/createacc_page/createacc1.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/saturnhomeroomowner.dart';
import 'package:saturn/findroomates/ROOMSEKER/saturnroomseeker/shortlisted/saturnroomseeker.dart';
import 'package:saturn/general/dropdown.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/profileowner.dart';
import 'package:saturn/findroomates/ROOMOWNER/saturnroomowner/shortlisted/shortlistedowner.dart';
import 'package:saturn/homesforrent/common/viewdetails.dart';
import 'package:saturn/homesforrent/homecall.dart';
import 'package:saturn/homesforrent/homesfeed.dart';
import 'package:saturn/homesforrent/pricestructor/pricestructorcommon.dart';
import 'package:saturn/login/phonenumber.dart';
import 'package:saturn/login/registration.dart';
import 'package:saturn/menu/home.dart';
import 'package:saturn/need2.dart';
import 'package:saturn/saturnhomeforrent.dart';

import 'package:saturn/findroomates/ROOMSEKER/note.dart';

import 'package:saturn/login/verifyemail.dart';

void main() {
  runApp(
      // ignore: prefer _const_constructors
      MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SaturnHomeseeker(),
    // home: Create_Account(),
  ));
}
