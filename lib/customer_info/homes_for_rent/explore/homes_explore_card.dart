import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saturn/custom_widgets/custom_card_button.dart';
import 'package:saturn/custom_widgets/homes_card_grid.dart';
import 'package:saturn/customer_info/homes_for_rent/explore/view_details/view_details.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class HomesExploreCard extends StatelessWidget {
  const HomesExploreCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.03, horizontal: size.width * 0.02),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                border: Border.all(
                    color: cardBorderColor, width: 1, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: size.width * 0.75,
                            child: AutoSizeText("TWO BEDROOM FLAT, DAMICO, IFE",
                                maxLines: 1, style: homesCardHeaderStyle),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Serviced Apartment",
                            style: dateTextStyle.copyWith(color: titleColor),
                          )
                        ],
                      ),
                      SvgPicture.asset("assets/icons/love.svg"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Image(
                    image: const AssetImage("assets/images/house1.png"),
                    fit: BoxFit.cover,
                    width: size.width,
                    height: 200,
                  ),
                  const SizedBox(height: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Availability",
                        style: dateTextStyle.copyWith(color: purple),
                      ),
                      const SizedBox(height: 10),
                      Text("Currently Available", style: regTextStyle)
                    ],
                  ),
                  const SizedBox(height: 10),
                  const HomeGridCustom(amenities: [
                    ["Rooms", "4"],
                    ["Restroom", "4"],
                    ["M Sqr", "4123"],
                    ["Kitchen", "0"]
                  ]),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * 0.5,
                        child: Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.45,
                              child: AutoSizeText.rich(
                                TextSpan(
                                    text: "N1,000,000",
                                    style: amountTextStyle,
                                    children: [
                                      TextSpan(
                                        text: "/year",
                                        style: ownerCardTextStyle,
                                      )
                                    ]),
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          width: 125,
                          child: CustomCardWhiteButton(
                              onPressed: () {
                                Navigator.of(context, rootNavigator: true).push(
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            const HomesViewDetailPage()));
                              },
                              child: Text(
                                "View Details",
                                style: cardButtonStyle.copyWith(color: purple),
                              )),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
