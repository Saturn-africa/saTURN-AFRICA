import 'package:flutter/material.dart';
import 'package:saturn/customer_info/find_roommates/shortlisted/request_owner.dart';
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
