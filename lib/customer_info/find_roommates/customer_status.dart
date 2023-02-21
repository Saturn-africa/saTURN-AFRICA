import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/customer_info/find_roommates/terms_page.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/snack_bar.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';

import '../../providers/customer_info_provider.dart';

class CustomerStatus extends StatelessWidget {
  const CustomerStatus({super.key});
  @override
  Widget build(BuildContext context) {
    CustomerStatusTexts texts = CustomerStatusTexts();
    Size size = MediaQuery.of(context).size;
    bool roomOwner = context.watch<CustomerInfoProvider>().roomOwner;
    bool roomSeeker = context.watch<CustomerInfoProvider>().roomSeeker;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context, true);
              }),
          elevation: 0,
          backgroundColor: white,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.01, horizontal: size.width * 0.05),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(texts.statusText, style: serviceHeaderStyle),
              const SizedBox(height: 15),
              Text(texts.statusLabelText, style: verifyOTPLabelStyle),
              SizedBox(height: size.height * 0.05),
              InkWell(
                onTap: () {
                  context.read<CustomerInfoProvider>().roomOwnerSelected();
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                      vertical: 12, horizontal: size.width * 0.05),
                  decoration: BoxDecoration(
                      color: white,
                      border: Border.all(
                          color: roomOwner ? purple : lightBlack,
                          width: roomOwner ? 2 : 0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        texts.statusCard1HeaderText,
                        style: serviceHeaderStyle,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        texts.statusCard1LabelText,
                        style: verifyOTPLabelStyle,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  context.read<CustomerInfoProvider>().roomSeekerSelected();
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                      vertical: 12, horizontal: size.width * 0.05),
                  decoration: BoxDecoration(
                      color: white,
                      border: Border.all(
                          color: roomSeeker ? purple : lightBlack,
                          width: roomSeeker ? 2 : 0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        texts.statusCard2HeaderText,
                        style: serviceHeaderStyle,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        texts.statusCard2LabelText,
                        style: verifyOTPLabelStyle,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.25,
              ),
              CustomButtonWidget(
                text: Text(
                  texts.nextText,
                  style: buttonStyle,
                ),
                onPressed: () {
                  if (roomSeeker || roomOwner) {
                    roomSeeker
                        ? context
                            .read<CustomerInfoProvider>()
                            .customerInfo["status"] = "Room Seeker"
                        : null;
                    roomOwner
                        ? context
                            .read<CustomerInfoProvider>()
                            .customerInfo["status"] = "Room Owner"
                        : null;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TermsPage()));
                  } else {
                    showSnack(context, "please select a field", redAccent);
                  }
                },
              )
            ]),
          ),
        )));
  }
}
