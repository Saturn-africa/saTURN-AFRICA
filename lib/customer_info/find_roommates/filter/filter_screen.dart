import 'package:flutter/material.dart';
import 'package:saturn/customer_info/find_roommates/filter/house/house_filter.dart';
import 'package:saturn/customer_info/find_roommates/filter/roommate/roommate_owner_filter.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class FilterPreferencePage extends StatelessWidget {
  const FilterPreferencePage({super.key});
  @override
  Widget build(BuildContext context) {
    final filterbody = <Widget>[
      const HouseFilter(),
      const RoommateFilterScreen(),
    ];
    final filterTitle = <Tab>[
      Tab(
        child: Text('House', style: tabStyle),
      ),
      Tab(
        child: Text('Roommate', style: tabStyle),
      ),
    ];
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: filterTitle.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Filter Preference",
            style: appBarTextStyle,
          ),
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: lightBlack,
              ),
              onPressed: () {
                Navigator.pop(context, true);
              }),
          backgroundColor: Colors.white,
          elevation: 0.1,
          bottom: TabBar(
            automaticIndicatorColorAdjustment: false,
            labelColor: purple,
            isScrollable: true,
            labelPadding:
                EdgeInsets.fromLTRB(size.width * 0.1, 0, size.width * 0.1, 0),
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: filterTitle,
          ),
        ),
        body: TabBarView(
          children: filterbody,
        ),
      ),
    );
  }
}
