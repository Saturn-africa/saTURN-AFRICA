import 'package:flutter/material.dart';
import 'package:saturn/auth/registration/create_details.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class PreviewScreen extends StatelessWidget {
  const PreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreviewTexts texts = PreviewTexts();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05, vertical: size.height * 0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/saturn.png",
                    width: size.width * 0.8,
                    height: size.height * 0.15,
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.0),
                  child: Text(
                    texts.headerText,
                    // textAlign: TextAlign.left,
                    style: kHeaderTextStyle,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
              child: CustomButtonWidget(
                text: Text(texts.startedText,
                    style: buttonStyle.copyWith(fontSize: 20)),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccount()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
