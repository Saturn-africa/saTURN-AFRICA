import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/config/routing/routing.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/customer_info/find_roommates/customer_status.dart';
import 'package:saturn/customer_info/homes_for_rent/house_search.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/providers/customer_info_provider.dart';
import 'package:saturn/service/storage/shared_preferences/user_details.dart';

class ServiceNeed extends StatelessWidget {
  const ServiceNeed({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ServiceNeedTexts texts = ServiceNeedTexts();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) => SafeArea(
          child: Consumer<CustomerInfoProvider>(
            builder: (_, service, __) => SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraint.maxHeight),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.05,
                        horizontal: size.width * 0.04),
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
                                service.rentSelected();
                              },
                              child: Container(
                                width: size.width * 0.45,
                                height: size.width * 0.45,
                                decoration: BoxDecoration(
                                  color: white,
                                  border: Border.all(
                                    color: service.homeSelected
                                        ? purple
                                        : lightBlack,
                                    width: service.homeSelected ? 2 : 0.5,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10.0)),
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
                                service.roommateSelected();
                              },
                              child: Container(
                                width: size.width * 0.45,
                                height: size.width * 0.45,
                                decoration: BoxDecoration(
                                  color: white,
                                  border: Border.all(
                                    color: service.roomSelected
                                        ? purple
                                        : lightBlack,
                                    width: service.roomSelected ? 2 : 0.5,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10.0)),
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
                        const Spacer(),
                        CustomButtonWidget(
                          text: Text(
                            texts.continueText,
                            style: buttonStyle,
                          ),
                          onPressed: () async {
                            if (service.roomSelected) {
                              service.customerInfo["serviceNeed"] =
                                  "Find Roommates";
                              RoutingService.pushRouting(
                                  context, const CustomerStatus());
                            } else if (service.homeSelected) {
                              await UserPreferences.setUserStatus(
                                  "Homes For Rent");
                              if (context.mounted) {
                                RoutingService.pushRouting(
                                    context, const PreferredHouseSearchPage());
                              }
                            } else {
                              showSnack(
                                  context, "02", "Please select a service");
                              return;
                            }
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
