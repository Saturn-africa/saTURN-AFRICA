import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saturn/custom_widgets/drawer_widget.dart';
import 'package:saturn/customer_info/find_roommates/filter/filter_screen.dart';
import 'package:saturn/customer_info/find_roommates/shortlisted/request_owner.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class ShortlistedScreen extends StatefulWidget {
  const ShortlistedScreen({super.key});

  @override
  State<ShortlistedScreen> createState() => _ShortlistedScreenState();
}

class _ShortlistedScreenState extends State<ShortlistedScreen> {
  final shortlistedBody = <Widget>[
    const Center(
      child: RequestTabs(),
    ),
    const Center(
      child: RequestTabs(),
    )
  ];
  final shortlistedTitle = <Tab>[
    Tab(
      child: Text('REQUEST', style: tabStyle),
    ),
    Tab(
      child: Text('MESSAGE', style: tabStyle),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: shortlistedTitle.length,
      child: Scaffold(
        appBar: AppBar(
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
                Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                        fullscreenDialog: true,
                        builder: ((context) => const FilterPreferencePage())));
              },
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 0.1,
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.transparent,
            isScrollable: true,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: purple),
            tabs: shortlistedTitle,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.04, vertical: size.height * 0.02),
          child: TabBarView(
            children: shortlistedBody,
          ),
        ),
      ),
    );
  }
}
