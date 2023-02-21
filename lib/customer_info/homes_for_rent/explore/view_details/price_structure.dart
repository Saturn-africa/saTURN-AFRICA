import 'package:flutter/material.dart';
import 'package:saturn/custom_widgets/custom_card_button.dart';
import 'package:saturn/customer_info/homes_for_rent/apply_for_rent.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class PriceStructurePage extends StatelessWidget {
  const PriceStructurePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Price Structure",
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
            horizontal: size.width * 0.04,
            vertical: size.width * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Total Package",
                        maxLines: 1,
                        style: amountStyle.copyWith(fontSize: 16),
                      ),
                      const SizedBox(width: 5),
                      Text("(In Naira)", style: tableTextStyle)
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(width: 1, color: cardBorderColor)),
                    child: Table(
                      children: [
                        tableRow("Basic Rent", "100,000", "Yearly"),
                        tableRow("Caution", "20,000", "One-Time"),
                        tableRow("Service Fee", "10,000", "One-Time")
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Bills",
                        maxLines: 1,
                        style: amountStyle.copyWith(fontSize: 16),
                      ),
                      const SizedBox(width: 5),
                      Text("(In Naira)", style: tableTextStyle)
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(width: 1, color: cardBorderColor)),
                    child: Table(
                      defaultColumnWidth: FixedColumnWidth(size.width * 0.3),
                      children: [
                        tableRow("Electricity", "Not Available", "Yearly"),
                        tableRow("Security", "20,000", "One-Time"),
                        tableRow("Cleaning", "10,000", "One-Time")
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.2),
              SizedBox(
                width: size.width,
                child: CustomCardButtonWidget(
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (context) => const ApplyForRentPage()));
                    },
                    child: Text(
                      "Proceed to Tour",
                      style: buttonStyle,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  TableRow tableRow(String text1, String text2, String text3) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            text1,
            style: tableTextStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            text2,
            style: tableTextStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            text3,
            style: tableTextStyle,
          ),
        )
      ],
    );
  }
}
