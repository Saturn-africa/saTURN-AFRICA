import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_dropdown.dart';
import 'package:saturn/helper_widgets/progress_bar.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/models/account/request_model/lifestyle_request.dart';
import 'package:saturn/providers/account/account_provider.dart';

class LifestyleInfoPage extends StatefulWidget {
  const LifestyleInfoPage({Key? key}) : super(key: key);

  @override
  State<LifestyleInfoPage> createState() => _LifestyleInfoPageState();
}

class _LifestyleInfoPageState extends State<LifestyleInfoPage> {
  LifeStyleInfoTexts texts = LifeStyleInfoTexts();
  dynamic selectedSmoke;
  dynamic selectedEducation;
  dynamic selectedPet;
  dynamic selectedDrink;
  dynamic selectedClean;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(texts.appBarText, style: appBarTextStyle),
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
      body: SingleChildScrollView(
        child: Consumer<AccountProvider>(
          builder: (_, account, __) => Padding(
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.02, horizontal: size.width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(texts.labelText, style: verifyOTPLabelStyle),
                const SizedBox(height: 20),
                CustomDropDownWidget(
                  value: selectedEducation,
                  hint: texts.educationHint,
                  items: [
                    "Secondary School Certificate",
                    "Undergraduate",
                    "Graduate"
                  ]
                      .map<DropdownMenuItem<String>>((item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: dropdownTextStyle,
                          )))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedEducation = value;
                    });
                  },
                  text: texts.educationText,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomDropDownWidget(
                  value: selectedSmoke,
                  items: [
                    "I smoke (Outdoor Only)",
                    "I smoke frequently",
                    "I rarely smoke",
                    "I don't smoke"
                  ]
                      .map<DropdownMenuItem<String>>((item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: dropdownTextStyle,
                          )))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedSmoke = value;
                    });
                  },
                  text: texts.smokeText,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomDropDownWidget(
                  value: selectedPet,
                  hint: texts.petrHint,
                  items: ["I do have pets", "I don't have a pet", "I love pets"]
                      .map<DropdownMenuItem<String>>((item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: dropdownTextStyle,
                          )))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedPet = value;
                    });
                  },
                  text: texts.petText,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomDropDownWidget(
                  value: selectedDrink,
                  items: [
                    "I drink (rarely)",
                    "I drink (frequently)",
                    "I don't drink"
                  ]
                      .map<DropdownMenuItem<String>>((item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: dropdownTextStyle,
                          )))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedDrink = value;
                    });
                  },
                  text: texts.drinkText,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomDropDownWidget(
                  value: selectedClean,
                  items: [
                    "I clean (rarely)",
                    "I clean (frequently)",
                    "I don't clean"
                  ]
                      .map<DropdownMenuItem<String>>((item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: dropdownTextStyle,
                          )))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedClean = value;
                    });
                  },
                  text: texts.cleanText,
                ),
                SizedBox(
                  height: size.height * 0.07,
                ),
                CustomButtonWidget(
                  text: account.lifestyleClicked
                      ? loadingIndicator()
                      : Text(
                          "APPLY",
                          style: buttonStyle,
                        ),
                  onPressed: () async {
                    if (account.lifestyleClicked) {
                      account.onLifestyleClick();
                      return;
                    }
                    if (selectedEducation != null &&
                        selectedSmoke != null &&
                        selectedPet != null &&
                        selectedDrink != null &&
                        selectedClean != null) {
                      account.onLifestyleClick();
                      LifestyleInfoRequest data = LifestyleInfoRequest(
                          educationalLevel: selectedEducation,
                          smokingLevel: selectedSmoke,
                          petToleranceLevel: selectedPet,
                          drinkingLevel: selectedDrink,
                          cleaningLevel: selectedClean);
                      await account.lifestyleInfoUpdate(data, context);
                    } else {
                      showSnack(
                          context, "02", "Please fill the required fields");
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
