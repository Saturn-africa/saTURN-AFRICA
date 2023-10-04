import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saturn/custom_widgets/drawer_widget.dart';
import 'package:saturn/customer_info/homes_for_rent/explore/homes_explore_card.dart';
import 'package:saturn/customer_info/homes_for_rent/filter_page.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class HomesExplore extends StatefulWidget {
  const HomesExplore({super.key});

  @override
  State<HomesExplore> createState() => _HomesExploreState();
}

class _HomesExploreState extends State<HomesExplore> {
  var details = [{}, {}];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CarouselSlider.builder(
        itemCount: details.length,
        itemBuilder: ((context, index, realIndex) {
          return const HomesExploreCard();
        }),
        options: CarouselOptions(
          height: size.height * 0.85,
          viewportFraction: 0.95,
          reverse: true,
          enlargeCenterPage: true,
          aspectRatio: 1.5,
          autoPlayAnimationDuration: const Duration(milliseconds: 2000),
          autoPlayCurve: Curves.linearToEaseOut,
          autoPlayInterval: const Duration(seconds: 4),
          pauseAutoPlayOnTouch: true,
          onPageChanged: (index, reason) => setState(() => activeIndex = index),
        ),
      ),
    );
  }
}
