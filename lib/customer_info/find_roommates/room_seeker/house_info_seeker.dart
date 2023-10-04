import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/helper_widgets/progress_bar.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/models/account/request_model/house_info_seeker.dart';
import 'package:saturn/providers/custom_provider/house_data_provider.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_duration_field.dart';
import 'package:saturn/custom_widgets/custom_input.dart';
import 'package:saturn/custom_widgets/custom_list_tile.dart';
import 'package:saturn/custom_widgets/custom_text.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class HouseSeekerInfoPage extends StatefulWidget {
  const HouseSeekerInfoPage({super.key});

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

  @override
  void initState() {
    Provider.of<HouseDataProvider>(context, listen: false).clearData();
    super.initState();
  }

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
        elevation: 0,
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
      body: Consumer<HouseDataProvider>(
        builder: (_, data, __) => SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                      if (value!.isEmpty) {
                        return texts.locationError;
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomInputField(
                      size: size,
                      text: texts.location2Text,
                      hintText: texts.locationHint,
                      keyboardType: TextInputType.name,
                      controller: location2Controller,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return texts.locationError;
                        }
                        return null;
                      }),
                  const SizedBox(height: 15),
                  CustomInputField(
                      size: size,
                      text: texts.location3Text,
                      hintText: texts.locationHint,
                      keyboardType: TextInputType.name,
                      controller: location3Controller,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return texts.locationError;
                        }
                        return null;
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextWidget(text1: texts.houseTypeText, text2: "*"),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: data.houseType.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (data.selectedBool.length < data.houseType.length) {
                          data.selectedType.add(false);
                        }
                        return CustomListTile(
                            size: size,
                            isBold: false,
                            onChanged: (val) {
                              data.onCheckboxClick(index, val!);
                              if (data.selectedType[index]) {
                                data.addHouseType(data.houseType[index]);
                              } else {
                                data.removeHouseType(data.houseType[index]);
                              }
                            },
                            value: data.selectedType[index],
                            text: data.houseType[index]);
                      }),
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
                  const SizedBox(height: 30),
                  CustomButtonWidget(
                    text: data.isSaved
                        ? loadingIndicator()
                        : Text(
                            texts.nextButton,
                            style: buttonStyle,
                          ),
                    onPressed: () async {
                      if (data.isSaved) {
                        data.onSaveClick();
                        return;
                      }
                      if (_formKey.currentState!.validate() &&
                          selectedMaximum != null &&
                          selectedMininum != null &&
                          data.selectedHouseType.length >= 3) {
                        data.onSaveClick();
                        HouseInfoSeekerRequest body = HouseInfoSeekerRequest(
                            houseBudget: budgetController.text.trim(),
                            preferedLocation1: location1Controller.text.trim(),
                            preferedLocation2: location2Controller.text.trim(),
                            preferedLocation3: location3Controller.text.trim(),
                            minimumSharingDuration: selectedMininum,
                            maximumSharingDuration: selectedMaximum,
                            houseType: data.selectedHouseType);
                        await data.saveSeekerHouseInfo(context, body);
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
      ),
    );
  }
}
