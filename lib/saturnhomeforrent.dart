// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:saturn/drawer.dart';
// import 'package:saturn/findroomates/userInfo/lifestyle.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// class SaturnHome extends StatefulWidget {
//   const SaturnHome({Key? key}) : super(key: key);

//   @override
//   State<SaturnHome> createState() => _SaturnHomeState();
// }

// class _SaturnHomeState extends State<SaturnHome>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   static const saturnpages = <Widget>[
//     Center(child: Drawer1()),
//     // Center(child: Text('data')),
//     Center(
//         child: Lifestyle(
//       nextto: Text('data'),
//     )),
//   ];
//   static const saturnitem = <Tab>[
//     Tab(
//       icon: Icon(
//         MdiIcons.vectorCircleVariant,
//         color: Colors.black,
//       ),
//     ),
//     Tab(
//       icon: Icon(
//         Icons.money_off,
//         color: Colors.black,
//       ),
//     )
//   ];
//   // int _currentTabIndex=0;
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: saturnpages.length, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.black),
//         elevation: 0,
//         title: Center(
//           child: Text('Saturn',
//               style: GoogleFonts.ubuntu(
//                   textStyle: TextStyle(
//                       fontSize: 20,
//                       fontStyle: FontStyle.normal,
//                       color: Color.fromRGBO(153, 0, 204, 1),
//                       fontWeight: FontWeight.w400))
//               // fontSize: 20,
//               // fontWeight: FontWeight.w500,
//               ),
//         ),
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         actions: <Widget>[
//           InkWell(
//             child: IconButton(onPressed: (() {}), icon: Icon(Icons.search)),
//           ),
//           IconButton(
//             icon: Icon(
//               Icons.shopping_cart,
//               color: Colors.black,
//             ),
//             onPressed: (() {
//               // () => Navigator.push(
//               //     context, MaterialPageRoute(builder: (context) => Cart()));
//             }),
//           ),
//         ],
//       ),
//       drawer: Drawer(
//           elevation: 0,
//           // backgroundColor: Colors.black,
//           child: ListView(
//             // ignore: prefer_const_literals_to_create_immutables
//             children: <Widget>[
// // header
//               UserAccountsDrawerHeader(
//                 decoration: const BoxDecoration(color: Colors.red),
//                 accountName: Text(
//                   "kidda",
//                   style: TextStyle(
//                       fontSize: 24,
//                       fontStyle: FontStyle.italic,
//                       color: Colors.white),
//                 ),
//                 accountEmail: Text("akandeumar05@gmail.com"),
//                 currentAccountPicture: GestureDetector(
//                   child: CircleAvatar(
//                     backgroundColor: Colors.grey,
//                     child: Icon(
//                       Icons.person,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               // body

//               InkWell(
//                 onTap: (() {}),
//                 child: ListTile(
//                   title: Text("home page"),
//                   leading: Icon(
//                     Icons.home,
//                     color: Colors.red,
//                   ),
//                 ),
//               ),
//               InkWell(
//                   onTap: (() {}),
//                   child: ListTile(
//                     title: Text("my Account"),
//                     leading: Icon(
//                       Icons.person,
//                       color: Colors.red,
//                     ),
//                     onTap: (() {
//                       // () => Navigator.of(context).push(
//                       //     MaterialPageRoute(builder: (context) => HomePage()));
//                     }),
//                   )),

//               InkWell(
//                   onTap: (() {}),
//                   child: ListTile(
//                     title: Text("my orders"),
//                     leading: Icon(
//                       Icons.shopify_sharp,
//                       color: Colors.red,
//                     ),
//                   )),

//               InkWell(
//                   onTap: (() {
//                     // Navigator.push(
//                     //     context, MaterialPageRoute(builder: (context) => Cart()));
//                   }),
//                   child: ListTile(
//                     title: Text("my cart"),
//                     leading: Icon(
//                       Icons.shopping_cart,
//                       color: Colors.green,
//                     ),
//                   )),
//               InkWell(
//                   onTap: (() {}),
//                   child: ListTile(
//                     title: Text("favourites"),
//                     leading: Icon(
//                       Icons.favorite,
//                       color: Colors.red,
//                     ),
//                   )),

//               Divider(),

//               InkWell(
//                   onTap: (() {}),
//                   child: ListTile(
//                     title: Text("settings"),
//                     leading: Icon(
//                       Icons.settings,
//                       // color: Colors.red,
//                     ),
//                   )),
//               InkWell(
//                   onTap: (() {}),
//                   child: ListTile(
//                     title: Text("about"),
//                     // ignore: prefer_const_constructors
//                     leading: Icon(
//                       Icons.help,
//                       color: Colors.blue,
//                     ),
//                   )),
//             ],
//           )),
//       body: TabBarView(
//         children: saturnpages,
//         controller: _tabController,
//       ),
//       bottomNavigationBar: Material(
//           child: TabBar(
//         tabs: saturnitem,
//         controller: _tabController,
//       )),
//     );
//   }
// }
