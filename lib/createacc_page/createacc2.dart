// // ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

// import 'package:flutter/material.dart';
// // import 'package:saturn/packages/switch_button.dart';
// // import 'package:switch_button/switch_button.dart';
// // import 'package:switcher_button/switcher_button.dart';

// class Create_Acc2 extends StatefulWidget {
//   const Create_Acc2({Key? key}) : super(key: key);

//   @override
//   State<Create_Acc2> createState() => _Create_Acc2State();
// }

// class _Create_Acc2State extends State<Create_Acc2> {
//   bool state = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//             icon: Icon(
//               Icons.arrow_back,
//               color: Colors.black,
//             ),
//             onPressed: () {
//               Navigator.pop(context, true);
//             }),
//         backgroundColor: Colors.white,
//         elevation: 0.1,
//         title: Center(
//           child: Text(
//             'Create Account',
//             style: TextStyle(color: Colors.purple, fontSize: 22),
//           ),
//         ),
//       ),
//       body: Container(
//         child: SingleChildScrollView(
//             child: Column(
//           // ignore: prefer_const_literals_to_create_immutables
//           children: [
//             SizedBox(
//               height: 15,
//             ),
//             // operation text
//             Align(
//                 alignment: Alignment.centerLeft,
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 12),
//                   child: Text(
//                     'Enter Operation Time',
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.w800,
//                     ),
//                   ),
//                 )),
//             SizedBox(
//               height: 30,
//             ),
//             // switchbutton
//             Column(
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   // ignore: prefer_const_literals_to_create_immutables
//                   children: [
//                     // switchbutton1
//                     Padding(
//                       padding: const EdgeInsets.only(right: 80),
//                       child: Text('Weekdays'),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20),
//                       child: SwitcherButton(
//                         onColor: Colors.purple,
//                         offColor: Colors.white,
//                         value: true,
//                         onChange: (value) {
//                           print(value);
//                         },
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: Text('closed'),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 // switchbutton3
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   // ignore: prefer_const_literals_to_create_immutables
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 110),
//                       child: Text('Saturday'),
//                     ),
//                     SwitcherButton(
//                       onColor: Colors.purple,
//                       offColor: Colors.white,
//                       value: true,
//                       onChange: (value) {
//                         print(value);
//                       },
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: Text('closed'),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 // switchbutton2
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   // ignore: prefer_const_literals_to_create_immutables
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 110),
//                       child: Text('Sunday'),
//                     ),
//                     SwitcherButton(
//                       // size: 30,
//                       onColor: Colors.purple,
//                       offColor: Colors.white,
//                       value: true,
//                       onChange: (value) {
//                         print(value);
//                       },
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10, right: 0),
//                       child: Text('Open'),
//                     )
//                   ],
//                 ),
//               ],
//             )
//           ],
//         )),
//       ),
//     );
//   }
// }
