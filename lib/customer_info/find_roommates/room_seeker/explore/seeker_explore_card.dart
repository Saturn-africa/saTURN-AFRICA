import 'package:flutter/material.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_container.dart';
import 'package:saturn/custom_widgets/custom_white_button.dart';
import 'package:saturn/custom_widgets/view_details_custom.dart';
import 'package:saturn/customer_info/find_roommates/room_seeker/explore/view_detail/view_detail.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/models/owner_details.dart';

class SeekerExploreCards extends StatelessWidget {
  const SeekerExploreCards({super.key});

  @override
  Widget build(BuildContext context) {
    String seekerText = "Looking For A Room To Stay";
    OwnerDetails owner = OwnerDetails(
        status: "Room Seeker",
        personalInfo: PersonalInfo(
            username: "John Igwe",
            gender: "Male",
            ageRange: "18-30",
            religiousInclination: "Christian"),
        roommatePref: RoommatePref(
            ageRange: "18-30",
            religiousInclination: "Muslim",
            sexualInclination: "Heterosexual",
            primaryLanguage: "English",
            gender: "Female"),
        houseInfo: HouseInfo(
            location1: "Dammico",
            location2: "abule-oja",
            location3: "bariga, yaba",
            houseType: "self-contain",
            restroomType: "indoor restroom",
            amount: "20000"));
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
                              owner.personalInfo!.username ?? "",
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
                                text: owner.personalInfo!.ageRange ?? ""),
                            SizedBox(width: size.width * 0.1),
                            ColumnCustomWidget(
                                title: "Religion",
                                text:
                                    owner.personalInfo!.religiousInclination ??
                                        ""),
                            SizedBox(width: size.width * 0.1),
                            ColumnCustomWidget(
                                title: "Gender",
                                text: owner.personalInfo!.gender ?? ""),
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
                            CustomCardContainer(
                                text:
                                    owner.roommatePref!.religiousInclination ??
                                        ""),
                            const SizedBox(width: 10),
                            CustomCardContainer(
                                text: owner.roommatePref!.ageRange ==
                                        owner.personalInfo!.ageRange
                                    ? "Same Age Range"
                                    : owner.roommatePref!.ageRange ?? ""),
                            const SizedBox(width: 10),
                            CustomCardContainer(
                                text:
                                    owner.roommatePref!.sexualInclination ?? "")
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
                            CustomCardContainer(
                                text: owner.houseInfo!.houseType ?? ""),
                            const SizedBox(width: 10),
                            CustomCardContainer(
                                text: owner.houseInfo!.houseType ?? ""),
                            const SizedBox(width: 10),
                            CustomCardContainer(
                                text: owner.houseInfo!.restroomType ?? ""),
                            const SizedBox(width: 10),
                            CustomCardContainer(
                                text: owner.houseInfo!.amount ?? "")
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
                            CustomCardContainer(
                                text: owner.houseInfo!.location1 ?? ""),
                            const SizedBox(width: 10),
                            CustomCardContainer(
                                text: owner.houseInfo!.location2 ?? ""),
                            const SizedBox(width: 10),
                            CustomCardContainer(
                                text: owner.houseInfo!.location3),
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
                                          const ViewDetailSeekerPage())));
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
