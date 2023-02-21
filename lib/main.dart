import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/providers/customer_info_provider.dart';
import 'package:saturn/providers/list_tile_provider.dart';
import 'package:saturn/providers/menu_provider.dart';
import 'package:saturn/providers/owner_home_provider.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/preview.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CustomerInfoProvider()),
      ChangeNotifierProvider(create: (context) => OwnerHomeProvider()),
      ChangeNotifierProvider(create: (context) => ListTileProvider()),
      ChangeNotifierProvider(create: (context) => MenuProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PreviewScreen(),
      theme: ThemeData.light().copyWith(primaryColor: purple),
    ),
  ));
}

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(const Duration(seconds: 3), () {
//       Navigator.of(context).pushReplacement(
//           MaterialPageRoute(builder: (_) => const PreviewScreen()));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       color: white,
//       height: size.height,
//       width: double.infinity,
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           Positioned(
//             child: Image.asset(
//               "assets/images/saturn.png",
//               width: size.width * 0.6,
//               height: size.height * 0.5,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
