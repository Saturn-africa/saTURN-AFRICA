import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/customer_info/find_roommates/customer_status.dart';
import 'package:saturn/customer_info/homes_for_rent/house_search.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/snack_bar.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/providers/customer_info_provider.dart';

class Service extends StatelessWidget {
  const Service({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ServiceNeedTexts texts = ServiceNeedTexts();
    Size size = MediaQuery.of(context).size;
    CustomerInfoProvider customerWatch = context.watch<CustomerInfoProvider>();
    CustomerInfoProvider customerRead = context.read<CustomerInfoProvider>();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.05, horizontal: size.width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(texts.serviceText, style: serviceHeaderStyle),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        customerRead.rentSelected();
                      },
                      child: Container(
                        width: size.width * 0.45,
                        height: size.width * 0.45,
                        decoration: BoxDecoration(
                          color: white,
                          border: Border.all(
                            color: customerWatch.homeSelected
                                ? purple
                                : lightBlack,
                            width: customerWatch.homeSelected ? 2 : 0.5,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                'assets/images/home.png',
                                width: size.width * 0.2,
                                height: size.width * 0.2,
                              ),
                            ),
                            Expanded(
                                child: Text(texts.rentText,
                                    textAlign: TextAlign.center,
                                    style: serviceLabelStyle)),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        customerRead.roommateSelected();
                      },
                      child: Container(
                        width: size.width * 0.45,
                        height: size.width * 0.45,
                        decoration: BoxDecoration(
                          color: white,
                          border: Border.all(
                            color: customerWatch.roomSelected
                                ? purple
                                : lightBlack,
                            width: customerWatch.roomSelected ? 2 : 0.5,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                'assets/images/roommates.png',
                                width: size.width * 0.2,
                                height: size.width * 0.2,
                              ),
                            ),
                            Expanded(
                                child: Text(texts.roommateText,
                                    textAlign: TextAlign.center,
                                    style: serviceLabelStyle)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.45,
                ),
                CustomButtonWidget(
                  text: Text(
                    texts.continueText,
                    style: buttonStyle,
                  ),
                  onPressed: () {
                    if (customerRead.roomSelected) {
                      customerRead.customerInfo["serviceNeed"] =
                          "Find Roommates";
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CustomerStatus()));
                    } else if (customerRead.homeSelected) {
                      customerRead.customerInfo["serviceNeed"] =
                          "Homes For Rent";
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PreferredHouseSearchPage()));
                    } else {
                      showSnack(context, "Please select a service", redAccent);
                      return;
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
