import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/customer_info/menu_screens/payment/payment_mode.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class ActivatePaymentPage extends StatelessWidget {
  const ActivatePaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Activate Account", style: appBarTextStyle),
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.04, horizontal: size.height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Center(
                  child: Text("Simple Pricing. No Hidden Fees",
                      textAlign: TextAlign.center, style: regTextStyle),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: cardBorderColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CustomPaymentRow(
                          text: "Profile Boost",
                          color: purple,
                          textColor: lightBlack,
                        ),
                        SizedBox(height: 10),
                        CustomPaymentRow(text: "Access to Verified Profiles"),
                        SizedBox(height: 10),
                        CustomPaymentRow(text: "Unlimited Roommate Options"),
                        SizedBox(height: 10),
                        CustomPaymentRow(text: "Roommate Agreement"),
                        SizedBox(height: 30)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Amount", style: dateTextStyle),
                        const SizedBox(height: 10),
                        AutoSizeText("#2,000", style: amountTextStyle)
                      ],
                    )
                  ],
                ),
              ),
              const Spacer(),
              CustomButtonWidget(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const PaymentMethodPage()));
                  },
                  text: Text("Proceed to Payment", style: buttonStyle))
            ],
          ),
        ),
      ),
    );
  }
}

class CustomPaymentRow extends StatelessWidget {
  const CustomPaymentRow(
      {super.key,
      this.color = dateColor,
      required this.text,
      this.textColor = dateColor});
  final Color color;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.6,
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/shield.svg",
            color: color,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: AutoSizeText(
              text,
              style: paymentTextStyle.copyWith(color: textColor),
            ),
          ),
        ],
      ),
    );
  }
}
