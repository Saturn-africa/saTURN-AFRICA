import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_input.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/progress_bar.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/providers/account/account_provider.dart';

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
          elevation: 0,
        ),
        body: Consumer<AccountProvider>(
          builder: (_, account, __) => LayoutBuilder(
            builder: (context, constraint) => SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                child: Form(
                  key: _formKey,
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: constraint.maxHeight),
                    child: IntrinsicHeight(
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
                          const Spacer(),
                          const SizedBox(height: 20),
                          CustomButtonWidget(
                            text: account.addInfoClicked
                                ? loadingIndicator()
                                : Text(texts.nextButton, style: buttonStyle),
                            onPressed: () async {
                              FocusScope.of(context).unfocus();
                              if (account.addInfoClicked) {
                                account.onAddInfoClick();
                                return;
                              }
                              if (_formKey.currentState!.validate()) {
                                Map<String, String> body = {
                                  "additionalInformation":
                                      noteController.text.trim()
                                };
                                account.onAddInfoClick();
                                await account.additionalInfoUpdate(
                                    body, context);
                              } else {
                                showSnack(context, "02", "Please Add a Note");
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
        ));
  }
}
