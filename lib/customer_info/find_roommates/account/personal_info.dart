import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/helper_widgets/progress_bar.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/models/onboarding_models/request_model/owner_info.dart';
import 'package:saturn/providers/account/account_provider.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_dropdown.dart';
import 'package:saturn/custom_widgets/custom_input.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class UserPersonalInfo extends StatefulWidget {
  const UserPersonalInfo({super.key});

  @override
  State<UserPersonalInfo> createState() => _UserPersonalInfoState();
}

class _UserPersonalInfoState extends State<UserPersonalInfo> {
  final _formKey = GlobalKey<FormState>();
  PersonalInfoTexts texts = PersonalInfoTexts();
  TextEditingController usernameController = TextEditingController();
  dynamic selectedAge;
  dynamic selectedGender;
  dynamic selectedReligion;
  dynamic selectedSex;
  dynamic selectedLang;
  dynamic selectedRegion;
  dynamic selectedState;

  @override
  void dispose() {
    usernameController.dispose();
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
          builder: (_, account, __) => Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.02, horizontal: size.width * 0.04),
              child: Column(
                children: [
                  CustomInputField(
                    size: size,
                    text: texts.usernameText,
                    hintText: texts.usernameHint,
                    controller: usernameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return texts.usernameError;
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DropDownCustom(
                    items: const ["Under-18", "18-30", "31-50", "51-Above"],
                    hint: texts.ageHint,
                    value: selectedAge,
                    text: texts.ageText,
                    onChanged: (value) {
                      setState(() {
                        selectedAge = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DropDownCustom(
                      items: const ["Female", "Male", "Others"],
                      text: texts.genderText,
                      hint: texts.genderHint,
                      value: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value;
                        });
                      }),
                  const SizedBox(
                    height: 15,
                  ),
                  DropDownCustom(
                    items: const ["Christian", "Muslim", "Others"],
                    text: texts.religionText,
                    hint: texts.religionHint,
                    value: selectedReligion,
                    onChanged: (value) {
                      setState(() {
                        selectedReligion = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DropDownCustom(
                    items: const [
                      "Bisexual",
                      "Heterosexual",
                      "Homosexual",
                      "Can't say",
                    ],
                    hint: texts.sexHint,
                    value: selectedSex,
                    text: texts.sexText,
                    onChanged: (value) {
                      setState(() {
                        selectedSex = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DropDownCustom(
                    items: const [
                      "English",
                      "Hausa",
                      "Igbo",
                      "Yoruba",
                      "Others"
                    ],
                    text: texts.languageText,
                    hint: texts.languageHint,
                    value: selectedLang,
                    onChanged: (value) {
                      setState(() {
                        selectedLang = value;
                      });
                    },
                  ),
                  const SizedBox(height: 15),
                  DropDownCustom(
                    items: const [
                      "South South",
                      "South East",
                      "South West",
                      "North East",
                      "Nort West",
                      "North Central"
                    ],
                    text: texts.regionText,
                    hint: texts.regionHint,
                    value: selectedRegion,
                    onChanged: (value) {
                      setState(() {
                        selectedRegion = value;
                      });
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomStateDropDown(
                    text: texts.stateText,
                    value: selectedState,
                    onChanged: (val) {
                      setState(() {
                        selectedState = val;
                      });
                    },
                  ),
                  const SizedBox(height: 50),
                  CustomButtonWidget(
                    text: account.personalClicked
                        ? loadingIndicator()
                        : Text(
                            "SAVE",
                            style: buttonStyle,
                          ),
                    onPressed: () async {
                      if (account.personalClicked) {
                        account.onPersonalClick();
                        return;
                      }
                      if (selectedAge != null &&
                          selectedGender != null &&
                          selectedReligion != null &&
                          selectedSex != null &&
                          selectedLang != null &&
                          _formKey.currentState!.validate()) {
                        account.onPersonalClick();
                        OwnerPersonalInfoRequest data =
                            OwnerPersonalInfoRequest(
                                fullName: usernameController.text.trim(),
                                ageRange: selectedAge,
                                gender: selectedGender,
                                religion: selectedReligion,
                                region: selectedRegion,
                                sexualInclination: selectedSex,
                                language: selectedLang,
                                state: selectedState);
                        await account.personalDetailsUpdate(data, context);
                      } else {
                        showSnack(
                            context, "02", "Please fill the required fields");
                        return;
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
