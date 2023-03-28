import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:provider/provider.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/leading_arrow.dart';
import 'package:saturn/helper_widgets/progress_bar.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/providers/auth/registration_provider.dart';

class VerifyOTP extends StatelessWidget {
  const VerifyOTP({Key? key, required this.email}) : super(key: key);
  final String email;

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
          leading: leadingIcon(context),
          backgroundColor: Colors.white,
          elevation: 0.5,
        ),
        body: LayoutBuilder(
          builder: (context, constraint) => Consumer<RegistrationProvider>(
            builder: (_, verify, __) => SafeArea(
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: IntrinsicHeight(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.05,
                          vertical: size.height * 0.05),
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
                                  "Enter code sent to ",
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
                                      fieldWidth: size.width * 0.16,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(11.0),
                                          borderSide: const BorderSide(
                                            color: Colors.purple,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(11.0),
                                          borderSide: const BorderSide(
                                            color: Colors.purple,
                                            width: 2.0,
                                          ),
                                        ),
                                      ),
                                      numberOfFields: 4,
                                      borderColor: Colors.black,
                                      onSubmit:
                                          (String verificationCode) async {
                                        Map data = {"code": verificationCode};
                                        verify.onVerify();
                                        await verify.verifyOtp(data, context);
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
                            height: size.height * 0.2,
                            child: verify.isVerifying
                                ? Center(
                                    child: loadingIndicator(color: black),
                                  )
                                : null,
                          ),
                          const Spacer(),
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
                                          onTap: () async {
                                            await verify.resendOtp(context);
                                          },
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
                ),
              ),
            ),
          ),
        ));
  }
}
