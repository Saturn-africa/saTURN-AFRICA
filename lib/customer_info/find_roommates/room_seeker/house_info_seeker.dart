import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/Customer_Info/find_roommates/Room_Seeker/additional_info_seeker.dart';
import 'package:saturn/providers/customer_info_provider.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_duration_field.dart';
import 'package:saturn/custom_widgets/custom_input.dart';
import 'package:saturn/custom_widgets/custom_list_tile.dart';
import 'package:saturn/custom_widgets/custom_text.dart';
import 'package:saturn/custom_widgets/custom_white_button.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/snack_bar.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class HouseSeekerInfoPage extends StatefulWidget {
  const HouseSeekerInfoPage({this.isProfile = true, super.key});
  final bool isProfile;

  @override
  State<HouseSeekerInfoPage> createState() => _HouseSeekerInfoPageState();
}

class _HouseSeekerInfoPageState extends State<HouseSeekerInfoPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController budgetController = TextEditingController();
  TextEditingController location1Controller = TextEditingController();
  TextEditingController location2Controller = TextEditingController();
  TextEditingController location3Controller = TextEditingController();
  dynamic selectedMininum;
  dynamic selectedMaximum;
  HomeSeekerInfoTexts texts = HomeSeekerInfoTexts();
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;

  @override
  void dispose() {
    budgetController.dispose();
    location1Controller.dispose();
    location2Controller.dispose();
    location3Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text(texts.appBarText, style: appBarTextStyle),
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: lightBlack,
            ),
            onPressed: () {
              Navigator.pop(context, true);
            }),
      ),
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.02, horizontal: size.width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomInputField(
                  size: size,
                  hintText: texts.budgetHint,
                  text: texts.budgetText,
                  keyboardType: TextInputType.number,
                  controller: budgetController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return texts.budgetError;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                CustomInputField(
                  size: size,
                  text: texts.location1Text,
                  hintText: texts.locationHint,
                  keyboardType: TextInputType.name,
                  controller: location1Controller,
                  validator: (value) {
                    if (value!.isEmpty &&
                        location2Controller.text.trim().isEmpty &&
                        location3Controller.text.trim().isEmpty) {
                      return texts.locationError;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                CustomInputField(
                  size: size,
                  isCompulsory: false,
                  text: texts.location2Text,
                  hintText: texts.locationHint,
                  keyboardType: TextInputType.name,
                  controller: location2Controller,
                ),
                const SizedBox(height: 15),
                CustomInputField(
                  size: size,
                  isCompulsory: false,
                  text: texts.location3Text,
                  hintText: texts.locationHint,
                  keyboardType: TextInputType.name,
                  controller: location3Controller,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextWidget(text1: texts.houseTypeText, text2: "*"),
                const SizedBox(
                  height: 10,
                ),
                CustomListTile(
                    size: size,
                    isBold: false,
                    onChanged: (val) {
                      setState(() {
                        isChecked1 = val!;
                      });
                    },
                    value: isChecked1,
                    text: "Duplex"),
                CustomListTile(
                    size: size,
                    isBold: false,
                    onChanged: (val) {
                      setState(() {
                        isChecked2 = val!;
                      });
                    },
                    value: isChecked2,
                    text: "Self-Contain"),
                CustomListTile(
                    size: size,
                    isBold: false,
                    onChanged: (val) {
                      setState(() {
                        isChecked3 = val!;
                      });
                    },
                    value: isChecked3,
                    text: "Single Room"),
                CustomListTile(
                    size: size,
                    isBold: false,
                    onChanged: (val) {
                      setState(() {
                        isChecked4 = val!;
                      });
                    },
                    value: isChecked4,
                    text: "Two Bedroom Flat"),
                CustomListTile(
                    size: size,
                    isBold: false,
                    onChanged: (val) {
                      setState(() {
                        isChecked5 = val!;
                      });
                    },
                    value: isChecked5,
                    text: "Three Bedroom Flat"),
                const SizedBox(height: 15),
                CustomTextWidget(text1: texts.shareHouseText, text2: " *"),
                const SizedBox(height: 10),
                CustomDuration(
                  minimumText: texts.minimumText,
                  maximumText: texts.maximumText,
                  selectedMininum: selectedMininum,
                  selectedMaximum: selectedMaximum,
                  onChangedMinimum: (value) {
                    setState(() {
                      selectedMininum = value;
                    });
                  },
                  onChangedMaximum: (value) {
                    setState(() {
                      selectedMaximum = value;
                    });
                  },
                ),
                SizedBox(height: size.height * 0.07),
                Container(
                  child: !widget.isProfile
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomWhiteButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              const AdditionalInfoSeekerPage())));
                                },
                                child: Text(texts.skipButton,
                                    style:
                                        buttonStyle.copyWith(color: purple))),
                            const SizedBox(height: 10),
                            CustomButtonWidget(
                              text: Text(
                                texts.nextButton,
                                style: buttonStyle,
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate() &&
                                    selectedMaximum != null &&
                                    selectedMininum != null &&
                                    _countSelectedField(
                                            isChecked1,
                                            isChecked2,
                                            isChecked3,
                                            isChecked4,
                                            isChecked5) >
                                        3) {
                                  context
                                      .read<CustomerInfoProvider>()
                                      .houseInfo(
                                          budgetController.text.trim(),
                                          location1Controller.text.trim(),
                                          location2Controller.text.trim(),
                                          location3Controller.text.trim(),
                                          _houseTypeList(
                                              isChecked1,
                                              isChecked2,
                                              isChecked3,
                                              isChecked4,
                                              isChecked5),
                                          selectedMininum,
                                          selectedMaximum);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              const AdditionalInfoSeekerPage())));
                                } else {
                                  showSnack(
                                      context,
                                      "Please fill the required fields",
                                      redAccent);
                                }
                              },
                            ),
                          ],
                        )
                      : CustomButtonWidget(
                          text: Text(
                            "APPLY",
                            style: buttonStyle,
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate() &&
                                selectedMaximum != null &&
                                selectedMininum != null &&
                                _countSelectedField(isChecked1, isChecked2,
                                        isChecked3, isChecked4, isChecked5) >
                                    3) {
                              Navigator.pop(context);
                            } else {
                              showSnack(context,
                                  "Please fill the required fields", redAccent);
                            }
                          },
                        ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> _houseTypeList(
      bool check1, bool check2, bool check3, bool check4, bool check5) {
    List<String> houseType = [];
    if (check1) houseType.add("Duplex");
    if (check2) houseType.add("Self-Contain");
    if (check3) houseType.add("Single Room");
    if (check4) houseType.add("Two Bedroom Flat");
    if (check5) houseType.add("Three Bedroom Flat");
    return houseType;
  }

  int _countSelectedField(
      bool check1, bool check2, bool check3, bool check4, bool check5) {
    int count = 0;
    if (check1) count++;
    if (check2) count++;
    if (check3) count++;
    if (check4) count++;
    if (check5) count++;
    return count;
  }
}
