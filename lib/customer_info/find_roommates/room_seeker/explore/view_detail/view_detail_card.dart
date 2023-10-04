import 'package:flutter/material.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/room_seeker/house_type_column.dart';
import 'package:saturn/custom_widgets/view_details_custom.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/models/room_seeker_model/seeker_cards.dart';

class ViewDetailSeekerCard extends StatelessWidget {
  const ViewDetailSeekerCard({super.key, required this.seeker});
  final SeekerData seeker;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.04, vertical: size.height * 0.02),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "I AM LOOKING FOR A ROOM TO STAY",
            style: ownerCardHeaderStyle,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Image.asset("assets/images/male.png", width: 120),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      seeker.user != null
                          ? seeker.user!.username ?? "Unknown"
                          : "Unknown",
                      style: dropdownTextStyle.copyWith(color: purple)),
                  const SizedBox(height: 15),
                  Text(seeker.gender ?? "", style: ownerCardTextStyle),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          const CustomDetailHeader(title: "About Me"),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ColumnCustomWidget(
                      title: "Status",
                      text: seeker.user != null
                          ? seeker.user!.isVerified!
                              ? "Verified"
                              : "Not verified"
                          : "Not verified"),
                  ColumnCustomWidget(
                      title: "Religious Inclination",
                      text: seeker.religion ?? ""),
                  ColumnCustomWidget(
                      title: "Cleaning",
                      text: seeker.cleaningLevelOfRoommate ?? ""),
                  ColumnCustomWidget(
                      title: "Language", text: seeker.language ?? ""),
                  ColumnCustomWidget(
                      title: "Alcohol",
                      text: seeker.drinkingLevelOfRoommate ?? "")
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ColumnCustomWidget(
                      title: "Gender", text: seeker.gender ?? ""),
                  ColumnCustomWidget(
                      title: "Sexual Inclination",
                      text: seeker.sexualInclination ?? ""),
                  ColumnCustomWidget(
                      title: "Pets",
                      text: seeker.petToleranceLevelOfRoommate ?? ""),
                  ColumnCustomWidget(
                      title: "Education Level",
                      text: seeker.educationalLevelOfRoommate ?? ""),
                  ColumnCustomWidget(
                      title: "Age Range", text: seeker.ageRange ?? ""),
                ],
              )
            ],
          ),
          const CustomDetailHeader(title: "Roommate Preference"),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ColumnCustomWidget(
                      title: "Religious Inclination",
                      text: seeker.religionOfRoommate ?? ""),
                  ColumnCustomWidget(
                      title: "Cleaning Habits",
                      text: seeker.cleaningLevelOfRoommate ?? ""),
                  ColumnCustomWidget(
                      title: "Language", text: seeker.languageOfRoommate ?? ""),
                  ColumnCustomWidget(
                      title: "Alcohol Drinking Habit",
                      text: seeker.drinkingLevelOfRoommate ?? "")
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ColumnCustomWidget(
                      title: "Gender", text: seeker.genderOfRoommate ?? ""),
                  ColumnCustomWidget(
                      title: "Sexual Inclination",
                      text: seeker.sexualInclinationOfRoommate ?? ""),
                  ColumnCustomWidget(
                      title: "Pets",
                      text: seeker.petToleranceLevelOfRoommate ?? ""),
                  ColumnCustomWidget(
                      title: "Education Level",
                      text: seeker.educationalLevelOfRoommate ?? ""),
                  ColumnCustomWidget(
                      title: "Age Range", text: seeker.ageRangeOfRoommate ?? "")
                ],
              )
            ],
          ),
          const CustomDetailHeader(title: "House Preference"),
          const SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ColumnCustomWidget(
                      title: "Budget", text: seeker.apartmentPrice ?? ""),
                  ColumnCustomWidget(
                      title: "Location 1",
                      text: seeker.apartmentLocation ?? ""),
                  ColumnCustomWidget(
                      title: "Location 2",
                      text: seeker.apartmentLocation ?? ""),
                  ColumnCustomWidget(
                      title: "Location", text: seeker.apartmentLocation ?? ""),
                  ColumnCustomWidget(
                      title: "Duration For Room Sharing",
                      text:
                          "${seeker.mininumSharingDuration ?? 0} to ${seeker.maximumSharingDuration ?? 0}"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width * 0.46,
                    child: Text(
                      "Type of House",
                      style: ownerCardSubtitleStyle.copyWith(color: titleColor),
                    ),
                  ),
                  seeker.houseType == null
                      ? Container()
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: getHouseTypeColumn(seeker.houseType!, size),
                        )
                  // ColumnCustomWidget(
                  //     title: "Type of House",
                  //     text: owner.houseInfo!.houseType ?? ""),
                ],
              )
            ],
          ),
          const CustomDetailHeader(title: "Additional Note"),
          const SizedBox(height: 15),
          Text(
            seeker.additionalInformation ?? "",
            style: ownerCardSubtitleStyle,
          ),
          const SizedBox(height: 50),
          CustomButtonWidget(
              onPressed: () {}, text: Text("SEND REQUEST", style: buttonStyle))
        ]),
      ),
    );
  }
}
