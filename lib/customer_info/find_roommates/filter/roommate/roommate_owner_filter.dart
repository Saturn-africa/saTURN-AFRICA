import 'package:flutter/material.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_dropdown.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class RoommateFilterScreen extends StatefulWidget {
  const RoommateFilterScreen({super.key});

  @override
  State<RoommateFilterScreen> createState() => _RoommateFilterScreenState();
}

class _RoommateFilterScreenState extends State<RoommateFilterScreen> {
  dynamic selectedAge;
  dynamic selectedGender;
  dynamic selectedReligion;
  dynamic selectedSex;
  dynamic selectedPet;
  dynamic selectedLang;
  PersonalInfoTexts texts = PersonalInfoTexts();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            left: size.width * 0.04,
            right: size.width * 0.04,
            bottom: size.height * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                value: selectedReligion,
                hint: texts.religionHint,
                items: ["Christian", "Muslim", "Others"]
                    .map<DropdownMenuItem<String>>((item) => DropdownMenuItem(
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
              value: selectedPet,
              hint: "select a pet tolerance",
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
              text: "Pet Tolerance",
            ),
            const SizedBox(
              height: 15,
            ),
            CustomDropDownWidget(
              value: selectedLang,
              hint: "select a language",
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
              text: "Language",
            ),
            SizedBox(height: size.height * 0.08),
            CustomButtonWidget(
              onPressed: () {
                Navigator.of(context).pop();
              },
              text: Text("APPLY", style: buttonStyle),
            )
          ],
        ),
      ),
    );
  }
}
