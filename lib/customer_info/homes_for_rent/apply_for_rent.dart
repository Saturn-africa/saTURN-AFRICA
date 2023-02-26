import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:saturn/custom_widgets/custom_card_button.dart';
import 'package:saturn/customer_info/homes_for_rent/physical_tour_page.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class ApplyForRentPage extends StatelessWidget {
  const ApplyForRentPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Apply For Rent",
          style: appBarTextStyle,
        ),
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: lightBlack,
            ),
            onPressed: () {
              Navigator.pop(context, true);
            }),
        backgroundColor: Colors.white,
        elevation: 0.1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.04, vertical: size.height * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Please make sure you have inspected the house before paying",
                  style: regTextStyle),
              const SizedBox(height: 15),
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
                  Text(
                    "Rent Summary",
                    style: applyTitleStyle,
                  ),
                  const SizedBox(height: 10),
                  const CustomRowTexts(
                      leftText: "Two Bedroom Flat", rightText: "Akobo, Ibadan")
                ],
              ),
              const SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Price Structure",
                    style: applyTitleStyle,
                  ),
                  const SizedBox(height: 10),
                  const CustomRowTexts(
                      leftText: "Basic Rent", rightText: "N100,000"),
                  const SizedBox(height: 10),
                  const CustomRowTexts(
                      leftText: "Service Fee", rightText: "N100,000"),
                ],
              ),
              SizedBox(height: size.height * 0.1),
              SizedBox(
                width: double.infinity,
                child: CustomCardButtonWidget(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const PhysicalTourPage()));
                    },
                    child: Text(
                      "Reserve",
                      style: buttonStyle,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRowTexts extends StatelessWidget {
  const CustomRowTexts(
      {super.key, required this.leftText, required this.rightText});
  final String leftText;
  final String rightText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: size.width * 0.45,
          child: AutoSizeText(
            leftText,
            style: regTextStyle,
          ),
        ),
        SizedBox(
          width: size.width * 0.45,
          child: AutoSizeText(
            rightText,
            textAlign: TextAlign.end,
            style: amenityText,
          ),
        ),
      ],
    );
  }
}
