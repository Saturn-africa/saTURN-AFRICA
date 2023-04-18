import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_container.dart';
import 'package:saturn/custom_widgets/custom_white_button.dart';
import 'package:saturn/custom_widgets/view_details_custom.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/progress_bar.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/models/room_owner_model/owner_cards.dart';
import 'package:saturn/providers/room_owner_provider/owner_card.dart';

class OwnerExploreCards extends StatelessWidget {
  const OwnerExploreCards({super.key, required this.owner});
  final Data owner;

  @override
  Widget build(BuildContext context) {
    String ownerText = "Looking For a Roommate To Join Me";
    Size size = MediaQuery.of(context).size;
    return Consumer<OwnerCardProvider>(
      builder: (_, card, __) => SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: size.width * 0.02,
              right: size.width * 0.02,
              top: size.height * 0.03,
              bottom: size.height * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(ownerText, style: ownerCardTitleStyle),
              const SizedBox(height: 10),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: cardBorderColor,
                      width: 1,
                      style: BorderStyle.solid),
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
                            const AssetImage("assets/images/female.png"),
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
                                owner.user != null
                                    ? owner.user!.username ?? "Unknown"
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
                        Text("Personal Information",
                            style: ownerCardTitleStyle),
                        const SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ColumnCustomWidget(
                                  title: "Age Range",
                                  text: owner.ageRange ?? "..."),
                              const SizedBox(width: 10),
                              ColumnCustomWidget(
                                  title: "Religion",
                                  text: owner.religion ?? "..."),
                              const SizedBox(width: 10),
                              ColumnCustomWidget(
                                  title: "Gender", text: owner.gender ?? "..."),
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
                              owner.religionOfRoommate == null
                                  ? Container(child: null)
                                  : CustomCardContainer(
                                      text: owner.religionOfRoommate!),
                              const SizedBox(width: 10),
                              owner.ageRangeOfRoommate == null
                                  ? Container(child: null)
                                  : CustomCardContainer(
                                      text: owner.ageRangeOfRoommate ==
                                              owner.ageRange
                                          ? "Same Age Range"
                                          : owner.ageRangeOfRoommate!),
                              const SizedBox(width: 10),
                              owner.sexualInclinationOfRoommate == null
                                  ? Container(child: null)
                                  : CustomCardContainer(
                                      text: owner.sexualInclinationOfRoommate!),
                              owner.religionOfRoommate == null &&
                                      owner.ageRangeOfRoommate == null &&
                                      owner.sexualInclinationOfRoommate == null
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
                        Text("House Description", style: ownerCardTitleStyle),
                        const SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              owner.apartmentLocation == null
                                  ? Container(child: null)
                                  : CustomCardContainer(
                                      text: owner.apartmentLocation.toString()),
                              const SizedBox(width: 10),
                              owner.houseType == null
                                  ? Container(child: null)
                                  : CustomCardContainer(
                                      text: owner.houseType.toString()),
                              const SizedBox(width: 10),
                              owner.apartmentPrice == null
                                  ? Container(child: null)
                                  : CustomCardContainer(
                                      text: owner.apartmentPrice.toString()),
                              owner.apartmentLocation == null &&
                                      owner.houseType == null &&
                                      owner.apartmentPrice == null
                                  ? Center(
                                      child: Text(
                                          "No Specified House Description.",
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
                              onPressed: () async {
                                if (card.isViewClicked) {
                                  card.onViewClick();
                                  return;
                                }
                                card.onViewClick();
                                await card.getRoomOwnerCardById(
                                    context, owner.id);
                              },
                              child: card.isViewClicked
                                  ? loadingIndicator()
                                  : Text(
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
            ],
          ),
        ),
      ),
    );
  }
}
