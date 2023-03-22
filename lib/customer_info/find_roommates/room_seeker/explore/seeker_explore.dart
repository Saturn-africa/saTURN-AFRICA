import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:saturn/customer_info/find_roommates/room_seeker/explore/seeker_explore_card.dart';
import 'package:saturn/helper_widgets/home/app_bar.dart';
import 'package:saturn/models/owner_details.dart';

class SeekerExplorePage extends StatefulWidget {
  const SeekerExplorePage({super.key});

  @override
  State<SeekerExplorePage> createState() => _SeekerExplorePageState();
}

class _SeekerExplorePageState extends State<SeekerExplorePage> {
  List<OwnerDetails> details = [
    OwnerDetails(
        status: "Verified",
        personalInfo: PersonalInfo(username: "John Igwe", gender: "Male"),
        houseInfo:
            HouseInfo(location1: "12, Abudu street, abule-oja, yaba, Lagos"),
        houseAmenities: ["Fan", "A.C", "TV", "Elevator", "Wi-Fi", "Security"],
        additionalInfo: "The room is good",
        roommatePref: RoommatePref(),
        lifestyleInfo: LifestyleInfo()),
    OwnerDetails(
        status: "Verified",
        personalInfo: PersonalInfo(username: "John Igwe", gender: "Male"),
        houseInfo:
            HouseInfo(location1: "12, Abudu street, abule-oja, yaba, Lagos"),
        houseAmenities: ["Fan", "A.C", "TV", "Elevator", "Wi-Fi", "Security"],
        additionalInfo: "The room is good",
        roommatePref: RoommatePref(),
        lifestyleInfo: LifestyleInfo()),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(context, size),
      body: SingleChildScrollView(
        child: CarouselSlider.builder(
          itemCount: details.length,
          itemBuilder: (context, index, realIndex) {
            return const SeekerExploreCards();
          },
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
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
          ),
        ),
      ),
    );
  }
}
