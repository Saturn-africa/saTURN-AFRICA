import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:saturn/providers/auth/login_provider.dart';
import 'package:saturn/providers/customer_info_provider.dart';
import 'package:saturn/providers/custom_provider/list_tile_provider.dart';
import 'package:saturn/providers/custom_provider/menu_provider.dart';
import 'package:saturn/providers/home_provider.dart';
import 'package:saturn/providers/owner_home_provider.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/preview.dart';
import 'package:saturn/providers/auth/registration_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CustomerInfoProvider()),
      ChangeNotifierProvider(create: (context) => OwnerHomeProvider()),
      ChangeNotifierProvider(create: (context) => ListTileProvider()),
      ChangeNotifierProvider(create: (context) => MenuProvider()),
      ChangeNotifierProvider(create: (context) => RegistrationProvider()),
      ChangeNotifierProvider(create: (context) => LoginProvider()),
      ChangeNotifierProvider(create: (context) => HomeProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PreviewScreen(),
      theme: ThemeData.light().copyWith(primaryColor: purple),
    ),
  ));
}
