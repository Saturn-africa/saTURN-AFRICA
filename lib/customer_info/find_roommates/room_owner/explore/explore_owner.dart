import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:saturn/custom_widgets/custom_shimmers/explore_card_shimmer.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/explore/owner_expore_card.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/providers/room_owner_provider/owner_card.dart';

class OwnerExplore extends StatefulWidget {
  const OwnerExplore({super.key});

  @override
  State<OwnerExplore> createState() => _OwnerExploreState();
}

class _OwnerExploreState extends State<OwnerExplore> {
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) async {
      Provider.of<OwnerCardProvider>(context, listen: false).refreshData();
      await Provider.of<OwnerCardProvider>(context, listen: false)
          .getRoomOwnerCard(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Consumer<OwnerCardProvider>(
        builder: (_, card, __) => card.isLoading && card.ownerCardsList.isEmpty
            ? const ExploreCardShimmer()
            : (!card.isLoading && card.ownerCardsList.isEmpty)
                ? Center(
                    child: Text(
                      "No available room owners",
                      style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(
                              fontSize: 15,
                              color: purple,
                              fontWeight: FontWeight.w500)),
                    ),
                  )
                : CarouselSlider.builder(
                    itemCount: card.ownerCardsList.length,
                    itemBuilder: ((context, index, realIndex) {
                      return OwnerExploreCards(
                        owner: card.ownerCardsList[index],
                      );
                    }),
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
    );
  }
}
