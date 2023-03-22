import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saturn/customer_info/find_roommates/room_seeker/explore/view_detail/view_detail_card.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/models/owner_details.dart';

class ViewDetailSeekerPage extends StatelessWidget {
  const ViewDetailSeekerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: deepBlack,
            ),
            onPressed: () {
              Navigator.pop(context, true);
            }),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset("assets/icons/love.svg"),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ViewDetailSeekerCard(
        owner: OwnerDetails(
            status: "Verified",
            personalInfo: PersonalInfo(username: "John Igwe", gender: "Male"),
            houseInfo: HouseInfo(
                location1: "12, Abudu street, abule-oja, yaba, Lagos"),
            houseAmenities: [
              "Fan",
              "A.C",
              "TV",
              "Elevator",
              "Wi-Fi",
              "Security"
            ],
            additionalInfo: "The room is good",
            roommatePref: RoommatePref(),
            lifestyleInfo: LifestyleInfo()),
      ),
    );
  }
}
