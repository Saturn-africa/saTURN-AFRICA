import 'package:flutter/material.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/view_details_custom.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/models/owner_details.dart';

class ViewDetailCard extends StatelessWidget {
  const ViewDetailCard({super.key, required this.owner});
  final OwnerDetails owner;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.02, horizontal: size.width * 0.02),
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
                          Text(owner.personalInfo!.username ?? "",
                              style: dropdownTextStyle.copyWith(color: purple)),
                          const SizedBox(height: 15),
                          Text(owner.personalInfo!.gender ?? "",
                              style: ownerCardTextStyle),
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
                              title: "Status", text: owner.status ?? ""),
                          ColumnCustomOwner(
                              title: "Religious Inclination",
                              text: owner.personalInfo!.religiousInclination ??
                                  ""),
                          ColumnCustomOwner(
                              title: "Cleaning",
                              text: owner.lifestyleInfo!.cleaning ?? ""),
                          ColumnCustomOwner(
                              title: "Language",
                              text: owner.personalInfo!.primaryLanguage ?? ""),
                          ColumnCustomOwner(
                              title: "Alcohol",
                              text: owner.lifestyleInfo!.drinkStatus ?? ""),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ColumnCustomOwner(
                              title: "Gender",
                              text: owner.personalInfo!.gender ?? ""),
                          ColumnCustomOwner(
                              title: "Sexual Inclination",
                              text:
                                  owner.personalInfo!.sexualInclination ?? ""),
                          ColumnCustomOwner(
                              title: "Pets",
                              text: owner.lifestyleInfo!.petTolerance ?? ""),
                          ColumnCustomOwner(
                              title: "Education Level",
                              text: owner.lifestyleInfo!.educationLevel ?? ""),
                          ColumnCustomOwner(
                              title: "Age Range",
                              text: owner.personalInfo!.ageRange ?? ""),
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
                              text: owner.roommatePref!.religiousInclination ??
                                  ""),
                          ColumnCustomOwner(
                              title: "Cleaning Habit",
                              text: owner.roommatePref!.cleaning ?? ""),
                          ColumnCustomOwner(
                              title: "Language",
                              text: owner.roommatePref!.primaryLanguage ?? ""),
                          ColumnCustomOwner(
                              title: "Alcohol Drinking Habit",
                              text: owner.roommatePref!.drinkStatus ?? ""),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ColumnCustomOwner(
                              title: "Gender",
                              text: owner.roommatePref!.gender ?? ""),
                          ColumnCustomOwner(
                              title: "Sexual Inclination",
                              text:
                                  owner.roommatePref!.sexualInclination ?? ""),
                          ColumnCustomOwner(
                              title: "Pets",
                              text: owner.roommatePref!.petTolerance ?? ""),
                          ColumnCustomOwner(
                              title: "Education Level",
                              text: owner.roommatePref!.educationLevel ?? ""),
                          ColumnCustomOwner(
                              title: "Age Range",
                              text: owner.roommatePref!.ageRange ?? ""),
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
                              text: owner.houseInfo!.numberOfPeople ?? ""),
                          ColumnCustomOwner(
                              title: "Duration for Room Sharing",
                              text:
                                  "${owner.houseInfo!.minimumDuration ?? ''} year to ${owner.houseInfo!.maximumDuration ?? ''} year"),
                          ColumnCustomOwner(
                              title: "No of Rooms",
                              text: owner.houseInfo!.numberOfPeople ?? ""),
                          ColumnCustomOwner(
                              title: "Type of Kitchen",
                              text: owner.houseInfo!.kitchenType ?? ""),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ColumnCustomOwner(
                              title: "Amount",
                              text: "NGN ${owner.houseInfo!.amount ?? ''}"),
                          ColumnCustomOwner(
                              title: "Type of House",
                              text: owner.houseInfo!.houseType ?? ""),
                          ColumnCustomOwner(
                              title: "No of Restrooms",
                              text: owner.houseInfo!.noOfRestrooms ?? ""),
                          ColumnCustomOwner(
                              title: "Type of Restroom",
                              text: owner.houseInfo!.restroomType ?? ""),
                        ],
                      )
                    ],
                  ),
                  const CustomDetailHeader(title: "House Amenities"),
                  const SizedBox(height: 15),
                  AmenitiesCustom(
                    amenities: owner.houseAmenities!,
                  ),
                  const SizedBox(height: 15),
                  const CustomDetailHeader(title: "Location"),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          owner.houseInfo!.location1 ?? "",
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
                    owner.additionalInfo ?? "",
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
