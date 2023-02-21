import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class BillingHistoryPage extends StatefulWidget {
  const BillingHistoryPage({super.key});

  @override
  State<BillingHistoryPage> createState() => _BillingHistoryPageState();
}

class _BillingHistoryPageState extends State<BillingHistoryPage> {
  List items = [
    {
      "text": "Account Activation",
      "date": DateFormat("MMM dd, yyyy").format(DateTime.now()),
      "amount": "#1000"
    },
    {
      "text": "Account Activation",
      "date": DateFormat("MMM dd, yyyy").format(DateTime.now()),
      "amount": "#1000"
    },
    {
      "text": "Account Activation",
      "date": DateFormat("MMM dd, yyyy").format(DateTime.now()),
      "amount": "#1000"
    },
    {
      "text": "Account Activation",
      "date": DateFormat("MMM dd, yyyy").format(DateTime.now()),
      "amount": "#1000"
    }
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Billing History", style: appBarTextStyle),
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context, true);
            }),
        backgroundColor: white,
        elevation: 0,
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.04, vertical: size.height * 0.03),
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: black),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/icons/profile-tick.svg"),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(items[index]["text"],
                                  style: dropdownTextStyle),
                              const SizedBox(height: 7),
                              Text(items[index]["date"], style: dateTextStyle),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        items[index]["amount"],
                        style: amountStyle,
                      )
                    ],
                  ),
                );
              })),
    );
  }
}
