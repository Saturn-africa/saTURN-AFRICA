import 'package:flutter/material.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  String? paymentMethod;

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
            Text(
                "Select your preferred payment method below to activate your account.",
                style: paymentTextStyle),
            const SizedBox(height: 30),
            Row(
              children: [
                Radio(
                    value: "cards",
                    groupValue: paymentMethod,
                    activeColor: purple,
                    onChanged: (val) {
                      setState(() {
                        paymentMethod = val.toString();
                      });
                    }),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pay with Cards",
                      style: paymentTextStyle.copyWith(
                          fontWeight: FontWeight.w500),
                    ),
                    const Image(
                      image: AssetImage("assets/images/payment_cards.png"),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Radio(
                    activeColor: purple,
                    value: "transfer",
                    groupValue: paymentMethod,
                    onChanged: (val) {
                      setState(() {
                        paymentMethod = val.toString();
                      });
                    }),
                Text(
                  "Pay with Bank transfer",
                  style: paymentTextStyle.copyWith(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const RowHintPayment(
                text:
                    "Kindly note that you will be redirected to Flutterwave to complete your purchase."),
            const SizedBox(height: 5),
            const RowHintPayment(
                text:
                    " Ensure your payment information is up to date and that you have sufficient funds."),
            const Spacer(),
            CustomButtonWidget(
              onPressed: () {
                print(paymentMethod);
              },
              text: Text("Proceed", style: buttonStyle),
            )
          ],
        ),
      )),
    );
  }
}

class RowHintPayment extends StatelessWidget {
  const RowHintPayment({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 5,
          width: 5,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: lightBlack,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: paymentHintStyle,
          ),
        )
      ],
    );
  }
}
