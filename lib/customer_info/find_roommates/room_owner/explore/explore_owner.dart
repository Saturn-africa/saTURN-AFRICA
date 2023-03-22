import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/explore/owner_expore_card.dart';
import 'package:saturn/helper_widgets/home/app_bar.dart';

class OwnerExplore extends StatefulWidget {
  const OwnerExplore({super.key});

  @override
  State<OwnerExplore> createState() => _OwnerExploreState();
}

class _OwnerExploreState extends State<OwnerExplore> {
  var details = [{}, {}];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(context, size),
      body: CarouselSlider.builder(
        itemCount: details.length,
        itemBuilder: ((context, index, realIndex) {
          return const OwnerExploreCards();
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
