import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/providers/customer_info_provider.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_dropdown.dart';
import 'package:saturn/custom_widgets/custom_input.dart';
import 'package:saturn/custom_widgets/custom_white_button.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/home_main.dart';
import 'package:saturn/customer_info/find_roommates/room_seeker/home_main_seeker.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/snack_bar.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({
    this.isProfile = false,
    super.key,
  });
  final bool isProfile;

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
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
    dynamic status =
        context.read<CustomerInfoProvider>().customerInfo["status"];
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
        child: Form(
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
                  items: const ["English", "Hausa", "Igbo", "Yoruba", "Others"],
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
                SizedBox(height: size.height * 0.07),
                Container(
                  child: widget.isProfile
                      ? null
                      : CustomWhiteButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => status == "Room Owner"
                                        ? const OwnerMainHome()
                                        : const SeekerMainHome()),
                                ((route) => route.isFirst));
                          },
                          child: Text(
                            texts.skipButton,
                            style: buttonStyle.copyWith(color: purple),
                          )),
                ),
                SizedBox(height: widget.isProfile ? 0 : 10),
                CustomButtonWidget(
                  text: Text(
                    widget.isProfile ? "APPLY" : texts.nextButton,
                    style: buttonStyle,
                  ),
                  onPressed: () {
                    if (selectedAge != null &&
                        selectedGender != null &&
                        selectedReligion != null &&
                        selectedSex != null &&
                        selectedLang != null &&
                        _formKey.currentState!.validate()) {
                      context.read<CustomerInfoProvider>().personalInfo(
                          usernameController.text.trim(),
                          selectedAge,
                          selectedGender,
                          selectedReligion,
                          selectedSex,
                          selectedLang);
                      widget.isProfile
                          ? null
                          : Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => status == "Room Owner"
                                      ? const OwnerMainHome()
                                      : const SeekerMainHome()),
                              ((route) => route.isFirst));
                    } else {
                      showSnack(context, "Please fill the required fields",
                          redAccent);
                      return;
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
