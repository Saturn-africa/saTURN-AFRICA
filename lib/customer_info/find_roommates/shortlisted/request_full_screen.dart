import 'package:flutter/material.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_white_button.dart';
import 'package:saturn/custom_widgets/view_details_custom.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/models/owner_details.dart';

class RequestDetailCard extends StatelessWidget {
  const RequestDetailCard({super.key, required this.owner});
  final OwnerDetails owner;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Looking For a Room to Stay",
          style: menuTextStyle.copyWith(color: purple),
        ),
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: deepBlack,
            ),
            onPressed: () {
              Navigator.pop(context, true);
            }),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.02, horizontal: size.width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
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
                          ColumnCustomWidget(
                              title: "Status", text: owner.status ?? ""),
                          ColumnCustomWidget(
                              title: "Religious Inclination",
                              text: owner.personalInfo!.religiousInclination ??
                                  ""),
                          ColumnCustomWidget(
                              title: "Cleaning",
                              text: owner.lifestyleInfo!.cleaning ?? ""),
                          ColumnCustomWidget(
                              title: "Language",
                              text: owner.personalInfo!.primaryLanguage ?? ""),
                          ColumnCustomWidget(
                              title: "Alcohol",
                              text: owner.lifestyleInfo!.drinkStatus ?? ""),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ColumnCustomWidget(
                              title: "Gender",
                              text: owner.personalInfo!.gender ?? ""),
                          ColumnCustomWidget(
                              title: "Sexual Inclination",
                              text:
                                  owner.personalInfo!.sexualInclination ?? ""),
                          ColumnCustomWidget(
                              title: "Pets",
                              text: owner.lifestyleInfo!.petTolerance ?? ""),
                          ColumnCustomWidget(
                              title: "Education Level",
                              text: owner.lifestyleInfo!.educationLevel ?? ""),
                          ColumnCustomWidget(
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
                          ColumnCustomWidget(
                              title: "Religious Inclination",
                              text: owner.roommatePref!.religiousInclination ??
                                  ""),
                          ColumnCustomWidget(
                              title: "Cleaning Habit",
                              text: owner.roommatePref!.cleaning ?? ""),
                          ColumnCustomWidget(
                              title: "Language",
                              text: owner.roommatePref!.primaryLanguage ?? ""),
                          ColumnCustomWidget(
                              title: "Alcohol Drinking Habit",
                              text: owner.roommatePref!.drinkStatus ?? ""),
                          ColumnCustomWidget(
                              title: "Age Range",
                              text: owner.roommatePref!.ageRange ?? ""),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ColumnCustomWidget(
                              title: "Gender",
                              text: owner.roommatePref!.gender ?? ""),
                          ColumnCustomWidget(
                              title: "Sexual Inclination",
                              text:
                                  owner.roommatePref!.sexualInclination ?? ""),
                          ColumnCustomWidget(
                              title: "Pets",
                              text: owner.roommatePref!.petTolerance ?? ""),
                          ColumnCustomWidget(
                              title: "Education Level",
                              text: owner.roommatePref!.educationLevel ?? ""),
                        ],
                      )
                    ],
                  ),
                  const CustomDetailHeader(title: "House Description"),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ColumnCustomWidget(
                              title: "Budget",
                              text: "NGN ${owner.houseInfo!.amount ?? ''}"),
                          ColumnCustomWidget(
                              title: "Location 1",
                              text: owner.houseInfo!.location1 ?? ""),
                          ColumnCustomWidget(
                              title: "Location 2",
                              text: owner.houseInfo!.location2 ?? ""),
                          ColumnCustomWidget(
                              title: "Location 3",
                              text: owner.houseInfo!.location3 ?? ""),
                          ColumnCustomWidget(
                              title: "Duration for Room Sharing",
                              text:
                                  "${owner.houseInfo!.minimumDuration ?? ''} year to ${owner.houseInfo!.maximumDuration ?? ''} year"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ColumnCustomWidget(
                              title: "Type of House",
                              text: owner.houseInfo!.houseType ?? ""),
                          ColumnCustomWidget(
                              title: "No of Restrooms",
                              text: owner.houseInfo!.noOfRestrooms ?? ""),
                          ColumnCustomWidget(
                              title: "Type of Restroom",
                              text: owner.houseInfo!.restroomType ?? ""),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  const CustomDetailHeader(title: "Additional Note"),
                  const SizedBox(height: 10),
                  Text(
                    owner.additionalInfo ?? "",
                    style: ownerCardSubtitleStyle,
                  )
                ],
              ),
              SizedBox(height: size.height * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: size.width * 0.4,
                    child: CustomWhiteButton(
                        onPressed: () {},
                        child: Text("DECLINE",
                            style: buttonStyle.copyWith(color: purple))),
                  ),
                  SizedBox(
                    width: size.width * 0.4,
                    child: CustomButtonWidget(
                        onPressed: () {},
                        text: Text("ACCEPT", style: buttonStyle)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
