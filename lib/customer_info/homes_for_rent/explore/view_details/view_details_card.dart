import 'package:flutter/material.dart';
import 'package:saturn/custom_widgets/custom_card_button.dart';
import 'package:saturn/custom_widgets/view_details_custom.dart';
import 'package:saturn/customer_info/homes_for_rent/apply_for_rent.dart';
import 'package:saturn/customer_info/homes_for_rent/explore/view_details/price_structure.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/models/owner_details.dart';

class HomesViewDetailsCard extends StatelessWidget {
  const HomesViewDetailsCard({super.key, required this.owner});
  final OwnerDetails owner;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.02, vertical: size.height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: const AssetImage("assets/images/house1.png"),
              fit: BoxFit.cover,
              width: size.width,
              height: 250,
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Room Overview", style: ownerCardTitleStyle),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ColumnCustomWidget(
                            title: "Serviced", text: "Frequent"),
                        ColumnCustomWidget(
                            title: "Type Of House",
                            text: owner.houseInfo!.houseType ?? ""),
                        const ColumnCustomWidget(title: "Room Size", text: ""),
                        ColumnCustomWidget(
                            title: "No of Rooms",
                            text: owner.houseInfo!.noOfRooms ?? ""),
                        ColumnCustomWidget(
                            title: "No of RestRooms",
                            text: owner.houseInfo!.noOfRestrooms ?? ""),
                        ColumnCustomWidget(
                            title: "Maximum No of Occupants",
                            text: owner.houseInfo!.numberOfPeople ?? "")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ColumnCustomWidget(
                            title: "Location",
                            text: owner.houseInfo!.location1 ?? ""),
                        const ColumnCustomWidget(title: "Furnishing", text: ""),
                        ColumnCustomWidget(
                            title: "Minimum Rent Period",
                            text: owner.houseInfo!.minimumDuration ?? ""),
                        ColumnCustomWidget(
                            title: "Type of Kitchen",
                            text: owner.houseInfo!.kitchenType ?? ""),
                        ColumnCustomWidget(
                            title: "Type  of Restroom",
                            text: owner.houseInfo!.restroomType ?? ""),
                        ColumnCustomWidget(
                            title: "Pets",
                            text: owner.roommatePref!.petTolerance ?? "")
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("House Amenities", style: ownerCardTitleStyle),
                const SizedBox(height: 10),
                AmenitiesCustom(amenities: owner.houseAmenities!)
              ],
            ),
            const SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Tenant Preference", style: ownerCardTitleStyle),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ColumnCustomWidget(
                            title: "Age",
                            text: owner.roommatePref!.ageRange ?? ""),
                        ColumnCustomWidget(
                            title: "Religion",
                            text:
                                owner.roommatePref!.religiousInclination ?? ""),
                        const ColumnCustomWidget(
                            title: "Marital Status", text: "Single"),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ColumnCustomWidget(
                            title: "Profession",
                            text: owner.roommatePref!.ageRange ?? ""),
                        const ColumnCustomWidget(
                            title: "Tribe", text: "Yoruba"),
                        const ColumnCustomWidget(
                            title: "Income Range", text: "N100000"),
                      ],
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Additional Note",
                  style: ownerCardTitleStyle,
                ),
                const SizedBox(height: 10),
                Text(
                  owner.additionalInfo ?? "",
                  style: ownerCardTextStyle,
                )
              ],
            ),
            const SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomCardWhiteButton(
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (_) => const PriceStructurePage()));
                    },
                    child: Text(
                      "View Price Structure",
                      style: buttonStyle.copyWith(color: purple),
                    )),
                const SizedBox(height: 10),
                CustomCardButtonWidget(
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (context) => const ApplyForRentPage()));
                    },
                    child: Text(
                      "Proceed to Tour",
                      style: buttonStyle,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
