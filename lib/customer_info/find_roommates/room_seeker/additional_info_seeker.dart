import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/Providers/customer_info_provider.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_input.dart';
import 'package:saturn/custom_widgets/custom_white_button.dart';
import 'package:saturn/customer_info/find_roommates/room_seeker/home_main_seeker.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/snack_bar.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class AdditionalInfoSeekerPage extends StatefulWidget {
  const AdditionalInfoSeekerPage({super.key});

  @override
  State<AdditionalInfoSeekerPage> createState() =>
      _AdditionalInfoSeekerPageState();
}

class _AdditionalInfoSeekerPageState extends State<AdditionalInfoSeekerPage> {
  SeekerAdditionalInfoTexts texts = SeekerAdditionalInfoTexts();
  TextEditingController noteController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(texts.appBarText, style: appBarTextStyle),
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: lightBlack,
              ),
              onPressed: () {
                Navigator.pop(context, true);
              }),
          backgroundColor: Colors.white,
          elevation: 0.5,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.02, horizontal: size.width * 0.04),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(texts.labelText, style: verifyOTPLabelStyle),
                  CustomInputField(
                    size: size,
                    text: "",
                    minLines: 6,
                    maxLines: 6,
                    obscureText: false,
                    controller: noteController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.multiline,
                    isCompulsory: false,
                    hintText: texts.hintText,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return texts.noteError;
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: size.height * 0.4),
                  CustomWhiteButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const SeekerMainHome())));
                      },
                      child: Text(
                        texts.skipButton,
                        style: buttonStyle.copyWith(color: purple),
                      )),
                  const SizedBox(height: 10),
                  CustomButtonWidget(
                    text: Text(texts.nextButton, style: buttonStyle),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context
                                .read<CustomerInfoProvider>()
                                .customerInfo["additionalNote"] =
                            noteController.text.trim();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const SeekerMainHome())));
                      } else {
                        showSnack(context, "Please Add a Note", redAccent);
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
