import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:saturn/Customer_Info/service_need.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class VerifyOTP extends StatelessWidget {
  const VerifyOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyEmailTexts texts = VerifyEmailTexts();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            texts.appBarText,
            style: appBarTextStyle,
          ),
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context, true);
              }),
          backgroundColor: Colors.white,
          elevation: 0.5,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: size.height * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Center(
                          child: Text(
                        texts.headerText,
                        style: verifyOTPHeaderStyle,
                      )),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          texts.labelText,
                          style: verifyOTPLabelStyle,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.purple,
                            ),
                            borderRadius: BorderRadius.circular(22)),
                        child: Column(
                          children: [
                            OtpTextField(
                              cursorColor: purple,
                              fieldWidth: size.width * 0.12,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11.0),
                                  borderSide: const BorderSide(
                                    color: Colors.purple,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11.0),
                                  borderSide: const BorderSide(
                                    color: Colors.purple,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                              numberOfFields: 5,
                              borderColor: Colors.black,
                              onSubmit: (String verificationCode) {
                                // print(verificationCode);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const Service())));
                              }, // end onSubmit
                            ),
                            const SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.55,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  texts.receiveOtp,
                                  style: verifyOTPFooterStyle,
                                )),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: GestureDetector(
                                  child: Text(
                                    texts.resendText,
                                    style: verifyOTPResendStyle,
                                  ),
                                  onTap: () {},
                                ))
                          ],
                        ),
                      ),
                      Expanded(
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              texts.supportText,
                              style: verifyOTPResendStyle,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
