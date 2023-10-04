import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:saturn/custom_widgets/custom_shimmers/explore_card_shimmer.dart';
import 'package:saturn/customer_info/find_roommates/room_seeker/explore/seeker_explore_card.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/models/owner_details.dart';
import 'package:saturn/providers/room_seeker_provider/seeker_card.dart';

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
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) async {
      Provider.of<SeekerCardProvider>(context, listen: false).refreshData();
      await Provider.of<SeekerCardProvider>(context, listen: false)
          .getRoomSeekerCard(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Consumer<SeekerCardProvider>(
        builder: (_, card, __) => SingleChildScrollView(
          child: card.isLoading && card.seekerCardsList.isEmpty
              ? const ExploreCardShimmer()
              : (!card.isLoading && card.seekerCardsList.isEmpty)
                  ? Center(
                      child: Text(
                        "No available room seeker cards",
                        style: GoogleFonts.ubuntu(
                            textStyle: const TextStyle(
                                fontSize: 15,
                                color: purple,
                                fontWeight: FontWeight.w500)),
                      ),
                    )
                  : CarouselSlider.builder(
                      itemCount: card.seekerCardsList.length,
                      itemBuilder: (context, index, realIndex) {
                        return SeekerExploreCards(
                          seeker: card.seekerCardsList[index],
                        );
                      },
                      options: CarouselOptions(
                        height: size.height * 0.85,
                        viewportFraction: 0.95,
                        reverse: true,
                        enlargeCenterPage: true,
                        aspectRatio: 1.5,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 2000),
                        autoPlayCurve: Curves.linearToEaseOut,
                        autoPlayInterval: const Duration(seconds: 4),
                        pauseAutoPlayOnTouch: true,
                        onPageChanged: (index, reason) =>
                            card.indexValue(index, context),
                      ),
                    ),
        ),
      ),
    );
  }
}
