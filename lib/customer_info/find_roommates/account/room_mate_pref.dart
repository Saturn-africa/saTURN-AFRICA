import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/helper_widgets/progress_bar.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/models/account/request_model/roommate_pref.dart';
import 'package:saturn/providers/account/account_provider.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_dropdown.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class RoommatePreferencePage extends StatefulWidget {
  const RoommatePreferencePage({
    super.key,
  });

  @override
  State<RoommatePreferencePage> createState() => _RoommatePreferencePageState();
}

class _RoommatePreferencePageState extends State<RoommatePreferencePage> {
  PersonalInfoTexts texts = PersonalInfoTexts();
  LifeStyleInfoTexts textss = LifeStyleInfoTexts();
  dynamic selectedSmoke;
  dynamic selectedEducation;
  dynamic selectedPet;
  dynamic selectedDrink;
  dynamic selectedClean;
  dynamic selectedAge;
  dynamic selectedGender;
  dynamic selectedReligion;
  dynamic selectedSex;
  dynamic selectedLang;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Roommate Preference", style: appBarTextStyle),
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context, true);
            }),
        backgroundColor: Colors.white,
        elevation: 0.3,
      ),
      body: SingleChildScrollView(
        child: Consumer<AccountProvider>(
          builder: (_, account, __) => Padding(
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.02, horizontal: size.width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomDropDownWidget(
                  value: selectedAge,
                  hint: texts.ageHint,
                  items: ["Under-18", "18-30", "31-50", "51-Above"]
                      .map<DropdownMenuItem<String>>((item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: dropdownTextStyle,
                          )))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedAge = value;
                    });
                  },
                  text: texts.ageText,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomDropDownWidget(
                  value: selectedGender,
                  hint: texts.genderHint,
                  items: ["Female", "Male", "Others"]
                      .map<DropdownMenuItem<String>>((item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: dropdownTextStyle,
                          )))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value;
                    });
                  },
                  text: texts.genderText,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomDropDownWidget(
                    value: selectedReligion,
                    hint: texts.religionHint,
                    items: ["Christian", "Muslim", "Others"]
                        .map<DropdownMenuItem<String>>(
                            (item) => DropdownMenuItem(
                                value: item,
                                child: Text(
                                  item,
                                  style: dropdownTextStyle,
                                )))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedReligion = value;
                      });
                    },
                    text: texts.religionText),
                const SizedBox(
                  height: 15,
                ),
                CustomDropDownWidget(
                  value: selectedSex,
                  hint: texts.sexHint,
                  items: ["Bisexual", "Heterosexual", "Homosexual", "Can't say"]
                      .map<DropdownMenuItem<String>>((item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: dropdownTextStyle,
                          )))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedSex = value;
                    });
                  },
                  text: texts.sexText,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomDropDownWidget(
                  value: selectedLang,
                  hint: texts.languageHint,
                  items: ["English", "Hausa", "Igbo", "Yoruba", "Others"]
                      .map<DropdownMenuItem<String>>((item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: dropdownTextStyle,
                          )))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedLang = value;
                    });
                  },
                  text: texts.languageText,
                ),
                const SizedBox(height: 15),
                CustomDropDownWidget(
                  value: selectedEducation,
                  hint: textss.educationHint,
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
                  text: textss.educationText,
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
                  text: textss.smokeText,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomDropDownWidget(
                  value: selectedPet,
                  hint: textss.petrHint,
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
                  text: textss.petText,
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
                  text: textss.drinkText,
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
                  text: textss.cleanText,
                ),
                SizedBox(height: size.height * 0.07),
                CustomButtonWidget(
                  text: account.preferenceClicked
                      ? loadingIndicator()
                      : Text(
                          "SAVE",
                          style: buttonStyle,
                        ),
                  onPressed: () async {
                    if (account.preferenceClicked) {
                      account.onPreferenceClick();
                      return;
                    }
                    if (selectedAge != null &&
                        selectedGender != null &&
                        selectedReligion != null &&
                        selectedSex != null &&
                        selectedLang != null &&
                        selectedEducation != null &&
                        selectedSmoke != null &&
                        selectedPet != null &&
                        selectedDrink != null &&
                        selectedClean != null) {
                      account.onPreferenceClick();
                      RoommatePrefRequest data = RoommatePrefRequest(
                          ageRangeOfRoommate: selectedAge,
                          genderOfRoommate: selectedGender,
                          religionOfRoommate: selectedReligion,
                          sexualInclinationOfRoommate: selectedSex,
                          languageOfRoommate: selectedLang,
                          educationalLevelOfRoommate: selectedEducation,
                          smokingLevelOfRoommate: selectedSmoke,
                          petToleranceLevelOfRoommate: selectedPet,
                          drinkingLevelOfRoommate: selectedDrink,
                          cleaningLevelOfRoommate: selectedClean);
                      await account.roommatePrefUpdate(data, context);
                    } else {
                      showSnack(context, "02", "Fill all required fields");
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
