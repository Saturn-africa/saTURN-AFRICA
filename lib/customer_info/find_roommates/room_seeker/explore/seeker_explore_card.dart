import 'package:flutter/material.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_container.dart';
import 'package:saturn/custom_widgets/custom_white_button.dart';
import 'package:saturn/custom_widgets/room_seeker/seeker_house_types.dart';
import 'package:saturn/custom_widgets/view_details_custom.dart';
import 'package:saturn/customer_info/find_roommates/room_seeker/explore/view_detail/view_detail.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/models/room_seeker_model/seeker_cards.dart';

class SeekerExploreCards extends StatelessWidget {
  const SeekerExploreCards({super.key, required this.seeker});
  final Data seeker;

  @override
  Widget build(BuildContext context) {
    String seekerText = "Looking For A Room To Stay";
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            left: size.width * 0.02,
            right: size.width * 0.02,
            top: size.height * 0.03,
            bottom: size.height * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(seekerText, style: ownerCardTitleStyle),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                border: Border.all(color: lightBlack, width: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: Image(
                            image: ResizeImage(
                          const AssetImage("assets/images/male.png"),
                          height: (size.width * 0.40).toInt(),
                          width: (size.width * 0.35).toInt(),
                        )),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 15, top: size.width * 0.12),
                        child: Column(
                          children: [
                            Text(
                              "Username",
                              style: ownerCardHeaderStyle.copyWith(
                                  color: titleColor),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              seeker.user != null
                                  ? seeker.user!.username ?? "Unknown"
                                  : "Unknown",
                              style: ownerCardTitleStyle,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Personal Information", style: ownerCardTitleStyle),
                      const SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ColumnCustomWidget(
                                title: "Age Range",
                                text: seeker.ageRange ?? "Not specified"),
                            SizedBox(width: size.width * 0.1),
                            ColumnCustomWidget(
                                title: "Religion",
                                text: seeker.religion ?? "Not specified"),
                            SizedBox(width: size.width * 0.1),
                            ColumnCustomWidget(
                                title: "Gender",
                                text: seeker.gender ?? "Not specified"),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Roommate Preference", style: ownerCardTitleStyle),
                      const SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            seeker.religionOfRoommate == null
                                ? Container(child: null)
                                : CustomCardContainer(
                                    text: seeker.religionOfRoommate!),
                            const SizedBox(width: 10),
                            seeker.ageRangeOfRoommate == null
                                ? Container(child: null)
                                : CustomCardContainer(
                                    text: seeker.ageRangeOfRoommate ==
                                            seeker.ageRange
                                        ? "Same Age Range"
                                        : seeker.ageRangeOfRoommate!),
                            const SizedBox(width: 10),
                            seeker.sexualInclinationOfRoommate == null
                                ? Container(child: null)
                                : CustomCardContainer(
                                    text: seeker.sexualInclinationOfRoommate!),
                            seeker.religionOfRoommate == null &&
                                    seeker.ageRangeOfRoommate == null &&
                                    seeker.sexualInclinationOfRoommate == null
                                ? Center(
                                    child: Text(
                                        "No Specified Roommate Preferences.",
                                        style: amenityText))
                                : Container(child: null)
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("House Preference", style: ownerCardTitleStyle),
                      const SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            seeker.houseType == null ||
                                    seeker.houseType!.isEmpty
                                ? Container()
                                : Row(
                                    children:
                                        getHouseTypeList(seeker.houseType!),
                                  ),
                            const SizedBox(width: 10),
                            seeker.restRoomType == null
                                ? Container(child: null)
                                : CustomCardContainer(
                                    text: seeker.restRoomType),
                            const SizedBox(width: 10),
                            seeker.apartmentPrice == null
                                ? Container(child: null)
                                : CustomCardContainer(
                                    text: seeker.apartmentPrice),
                            seeker.restRoomType == null &&
                                        seeker.apartmentPrice == null &&
                                        seeker.houseType == null ||
                                    seeker.houseType!.isEmpty
                                ? Center(
                                    child: Text(
                                        "No Specified House Preferences.",
                                        style: amenityText))
                                : Container(child: null)
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Location of Interest", style: ownerCardTitleStyle),
                      const SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            seeker.apartmentLocation == null
                                ? Container()
                                : CustomCardContainer(
                                    text: seeker.apartmentLocation),
                            // const SizedBox(width: 10),
                            // CustomCardContainer(
                            //     text: owner.houseInfo!.location2 ?? ""),
                            // const SizedBox(width: 10),
                            // CustomCardContainer(
                            //     text: owner.houseInfo!.location3),
                            seeker.apartmentLocation == null
                                ? Center(
                                    child: Text(
                                        "No Specified Location of interest.",
                                        textAlign: TextAlign.center,
                                        style: amenityText))
                                : Container(child: null)
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CustomWhiteButton(
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true).push(
                                  MaterialPageRoute(
                                      fullscreenDialog: true,
                                      builder: ((context) =>
                                          ViewDetailSeekerPage(data: seeker))));
                            },
                            child: Text(
                              "View Details",
                              style: ownerCardTitleStyle.copyWith(
                                  fontWeight: FontWeight.w400),
                            )),
                      ),
                      SizedBox(width: size.width * 0.05),
                      Expanded(
                        child: CustomButtonWidget(
                            onPressed: () {},
                            text: Text(
                              "Send Request",
                              style: ownerCardTitleStyle.copyWith(
                                  fontWeight: FontWeight.w400, color: white),
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  color: seekerCardBgColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Text(
                  "Please complete your profile before matching roommates",
                  style: ownerCardSubtitleStyle),
            )
          ],
        ),
      ),
    );
  }
}
