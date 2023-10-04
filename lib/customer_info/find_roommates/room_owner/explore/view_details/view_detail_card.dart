import 'package:flutter/material.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/view_details_custom.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/models/room_owner_model/owner_cards.dart';

class ViewDetailCard extends StatelessWidget {
  const ViewDetailCard({super.key, required this.owner});
  final Data owner;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.02, horizontal: size.width * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "LOOKING FOR A ROOMMATE TO JOIN ME",
              style: ownerCardHeaderStyle,
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: purple, width: 0.5),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 60,
                        backgroundColor: purple,
                        backgroundImage: AssetImage("assets/images/female.png"),
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              owner.user != null
                                  ? owner.user!.username ?? "Unknown"
                                  : "Unknown",
                              style: dropdownTextStyle.copyWith(color: purple)),
                          const SizedBox(height: 15),
                          Text(owner.gender ?? "", style: ownerCardTextStyle),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  const CustomDetailHeader(title: "About Me"),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ColumnCustomOwner(
                              title: "Status",
                              text: owner.user != null
                                  ? owner.user!.isVerified!
                                      ? "Verified"
                                      : "Not verified"
                                  : "Not verified"),
                          ColumnCustomOwner(
                              title: "Religious Inclination",
                              text: owner.religion ?? ""),
                          ColumnCustomOwner(
                              title: "Cleaning",
                              text: owner.cleaningLevelOfRoommate ?? ""),
                          ColumnCustomOwner(
                              title: "Language", text: owner.language ?? ""),
                          ColumnCustomOwner(
                              title: "Alcohol",
                              text: owner.drinkingLevelOfRoommate ?? ""),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ColumnCustomOwner(
                              title: "Gender", text: owner.gender ?? ""),
                          ColumnCustomOwner(
                              title: "Sexual Inclination",
                              text: owner.sexualInclination ?? ""),
                          ColumnCustomOwner(
                              title: "Pets",
                              text: owner.petToleranceLevelOfRoommate ?? ""),
                          ColumnCustomOwner(
                              title: "Education Level",
                              text: owner.educationalLevelOfRoommate ?? ""),
                          ColumnCustomOwner(
                              title: "Age Range", text: owner.ageRange ?? ""),
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
                          ColumnCustomOwner(
                              title: "Religious Inclination",
                              text: owner.religionOfRoommate ?? ""),
                          ColumnCustomOwner(
                              title: "Cleaning Habit",
                              text: owner.cleaningLevelOfRoommate ?? ""),
                          ColumnCustomOwner(
                              title: "Language",
                              text: owner.languageOfRoommate ?? ""),
                          ColumnCustomOwner(
                              title: "Alcohol Drinking Habit",
                              text: owner.drinkingLevelOfRoommate ?? ""),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ColumnCustomOwner(
                              title: "Gender",
                              text: owner.genderOfRoommate ?? ""),
                          ColumnCustomOwner(
                              title: "Sexual Inclination",
                              text: owner.sexualInclinationOfRoommate ?? ""),
                          ColumnCustomOwner(
                              title: "Pets",
                              text: owner.petToleranceLevelOfRoommate ?? ""),
                          ColumnCustomOwner(
                              title: "Education Level",
                              text: owner.educationalLevelOfRoommate ?? ""),
                          ColumnCustomOwner(
                              title: "Age Range",
                              text: owner.ageRangeOfRoommate ?? ""),
                        ],
                      )
                    ],
                  ),
                  const CustomDetailHeader(title: "House Description"),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ColumnCustomOwner(
                              title: "Current No of Occupants",
                              text: owner.houseOccupants != null
                                  ? owner.houseOccupants.toString()
                                  : ""),
                          ColumnCustomOwner(
                              title: "Duration for Room Sharing",
                              text:
                                  "${owner.mininumSharingDuration != null ? owner.mininumSharingDuration.toString() : ''}  to ${owner.maximumSharingDuration != null ? owner.maximumSharingDuration.toString() : ''}"),
                          ColumnCustomOwner(
                              title: "No of Rooms",
                              text: owner.numberOfRooms != null
                                  ? owner.numberOfRooms.toString()
                                  : ""),
                          ColumnCustomOwner(
                              title: "Type of Kitchen",
                              text: owner.kitchenType ?? ""),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ColumnCustomOwner(
                              title: "Amount",
                              text: "NGN ${owner.apartmentPrice ?? ''}"),
                          ColumnCustomOwner(
                              title: "Type of House",
                              text: owner.houseType ?? ""),
                          ColumnCustomOwner(
                              title: "No of Restrooms",
                              text: owner.numberOfRestrooms ?? ""),
                          ColumnCustomOwner(
                              title: "Type of Restroom",
                              text: owner.restRoomType ?? ""),
                        ],
                      )
                    ],
                  ),
                  const CustomDetailHeader(title: "House Amenities"),
                  const SizedBox(height: 15),
                  AmenitiesCustom(
                    amenities:
                        owner.homeAmenities == null ? [] : owner.homeAmenities!,
                  ),
                  const SizedBox(height: 15),
                  const CustomDetailHeader(title: "Location"),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          owner.apartmentLocation ?? "",
                          style: ownerCardTextStyle,
                        ),
                        const SizedBox(height: 10),
                        Image.asset(
                          "assets/images/location.png",
                          width: double.infinity,
                          fit: BoxFit.cover,
                          height: 150,
                        )
                      ],
                    ),
                  ),
                  const CustomDetailHeader(title: "Additional Note"),
                  const SizedBox(height: 10),
                  Text(
                    owner.additionalInformation ?? "",
                    style: ownerCardSubtitleStyle,
                  )
                ],
              ),
            ),
            const SizedBox(height: 50),
            CustomButtonWidget(
                onPressed: () {},
                text: Text("SEND REQUEST", style: buttonStyle))
          ],
        ),
      ),
    );
  }
}
