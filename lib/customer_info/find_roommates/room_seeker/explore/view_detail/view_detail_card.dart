import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/view_details_custom.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/models/owner_details.dart';

class ViewDetailSeekerCard extends StatelessWidget {
  const ViewDetailSeekerCard({super.key, required this.owner});
  final OwnerDetails owner;

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
                  Text(owner.personalInfo!.username ?? "",
                      style: dropdownTextStyle.copyWith(color: purple)),
                  const SizedBox(height: 15),
                  Text(owner.personalInfo!.gender ?? "",
                      style: ownerCardTextStyle),
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
                  const ColumnCustomWidget(title: "Status", text: "Verified"),
                  ColumnCustomWidget(
                      title: "Religious Inclination",
                      text: owner.personalInfo!.religiousInclination ?? ""),
                  ColumnCustomWidget(
                      title: "Cleaning",
                      text: owner.lifestyleInfo!.cleaning ?? ""),
                  ColumnCustomWidget(
                      title: "Language",
                      text: owner.personalInfo!.primaryLanguage ?? ""),
                  ColumnCustomWidget(
                      title: "Alcohol",
                      text: owner.lifestyleInfo!.drinkStatus ?? "")
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ColumnCustomWidget(
                      title: "Gender", text: owner.personalInfo!.gender ?? ""),
                  ColumnCustomWidget(
                      title: "Sexual Inclination",
                      text: owner.personalInfo!.sexualInclination ?? ""),
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
                      text: owner.roommatePref!.religiousInclination ?? ""),
                  ColumnCustomWidget(
                      title: "Cleaning Habits",
                      text: owner.roommatePref!.cleaning ?? ""),
                  ColumnCustomWidget(
                      title: "Language",
                      text: owner.roommatePref!.primaryLanguage ?? ""),
                  ColumnCustomWidget(
                      title: "Alcohol Drinking Habit",
                      text: owner.roommatePref!.drinkStatus ?? "")
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ColumnCustomWidget(
                      title: "Gender", text: owner.roommatePref!.gender ?? ""),
                  ColumnCustomWidget(
                      title: "Sexual Inclination",
                      text: owner.roommatePref!.sexualInclination ?? ""),
                  ColumnCustomWidget(
                      title: "Pets",
                      text: owner.roommatePref!.petTolerance ?? ""),
                  ColumnCustomWidget(
                      title: "Education Level",
                      text: owner.roommatePref!.educationLevel ?? ""),
                  ColumnCustomWidget(
                      title: "Age Range",
                      text: owner.roommatePref!.ageRange ?? "")
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
                      title: "Budget", text: owner.houseInfo!.amount ?? ""),
                  ColumnCustomWidget(
                      title: "Location 1",
                      text: owner.houseInfo!.location1 ?? ""),
                  ColumnCustomWidget(
                      title: "Location 2",
                      text: owner.houseInfo!.location2 ?? ""),
                  ColumnCustomWidget(
                      title: "Location",
                      text: owner.houseInfo!.location3 ?? ""),
                  ColumnCustomWidget(
                      title: "Duration For Room Sharing",
                      text:
                          "${owner.houseInfo!.minimumDuration ?? 0} to ${owner.houseInfo!.minimumDuration ?? 0}"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ColumnCustomWidget(
                      title: "Type of House",
                      text: owner.houseInfo!.houseType ?? ""),
                ],
              )
            ],
          ),
          const CustomDetailHeader(title: "Additional Note"),
          const SizedBox(height: 15),
          Text(
            owner.additionalInfo ?? "",
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
