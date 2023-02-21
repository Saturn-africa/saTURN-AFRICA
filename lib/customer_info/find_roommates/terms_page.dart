import 'package:flutter/material.dart';
import 'package:saturn/customer_info/find_roommates/personal_info.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TermsTexts texts = TermsTexts();
    // bool roomOwner = context.watch<CustomerInfoProvider>().roomOwner;
    // bool roomSeeker = context.watch<CustomerInfoProvider>().roomSeeker;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: deepBlack,
            ),
            onPressed: () {
              Navigator.pop(context, true);
            }),
        backgroundColor: Colors.white,
        elevation: 0.2,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.03, horizontal: size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.info,
                color: purple,
                size: 90,
              ),
              Text(
                texts.termsHeaderText,
                style: termsHeaderStyle,
              ),
              SizedBox(height: size.height * 0.04),
              Text(
                texts.termsLabel1Text,
                style: termsLabelStyle,
              ),
              const SizedBox(height: 15),
              Text(
                texts.termsLabel2Text,
                style: termsLabelStyle,
              ),
              SizedBox(
                height: size.height * 0.25,
              ),
              CustomButtonWidget(
                text: Text(
                  texts.buttonText,
                  style: buttonStyle.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PersonalInfoPage()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
