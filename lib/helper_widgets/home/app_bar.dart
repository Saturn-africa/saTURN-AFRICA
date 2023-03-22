import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saturn/custom_widgets/drawer_widget.dart';
import 'package:saturn/customer_info/find_roommates/filter/filter_screen.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

AppBar appBar(BuildContext context, Size size) {
  return AppBar(
    leading: const DrawerWidget(),
    centerTitle: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/icons/logo.svg',
          color: purple,
        ),
        SizedBox(width: size.width * 0.05),
        Text("Saturn", style: appBarTextStyle),
      ],
    ),
    actions: [
      IconButton(
        iconSize: 40,
        icon: SvgPicture.asset(
          'assets/icons/filter.svg',
          color: deepBlack,
        ),
        onPressed: () {
          Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
              fullscreenDialog: true,
              builder: ((context) => const FilterPreferencePage())));
        },
      ),
    ],
    backgroundColor: Colors.white,
    elevation: 0.2,
  );
}
