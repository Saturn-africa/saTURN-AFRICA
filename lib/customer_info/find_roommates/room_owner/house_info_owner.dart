import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/providers/customer_info_provider.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_dropdown.dart';
import 'package:saturn/custom_widgets/custom_input.dart';
import 'package:saturn/custom_widgets/custom_text.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/house_amenities.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class OwnerHouseInfoPage extends StatefulWidget {
  const OwnerHouseInfoPage({
    this.isProfile = true,
    super.key,
  });
  final bool isProfile;

  @override
  State<OwnerHouseInfoPage> createState() => _OwnerHouseInfoPageState();
}

class _OwnerHouseInfoPageState extends State<OwnerHouseInfoPage> {
  TextEditingController amountController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController houseController = TextEditingController();
  TextEditingController peopleController = TextEditingController();
  TextEditingController kitchenController = TextEditingController();
  TextEditingController restroomController = TextEditingController();
  dynamic selectedMinimum;
  dynamic selectedMaximum;
  dynamic selectedRooms;
  dynamic selectedRestroom;
  final _formKey = GlobalKey<FormState>();
  OwnerHouseInfoTexts texts = OwnerHouseInfoTexts();

  @override
  void dispose() {
    amountController.dispose();
    locationController.dispose();
    houseController.dispose();
    peopleController.dispose();
    kitchenController.dispose();
    restroomController.dispose();
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
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.03, horizontal: size.width * 0.04),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomInputField(
                    size: size,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    hintText: "Enter amount for sharing",
                    text: texts.amountText,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return texts.amountError;
                      }
                      return null;
                    },
                    controller: amountController),
                const SizedBox(
                  height: 15,
                ),
                CustomInputField(
                    size: size,
                    text: texts.locationText,
                    hintText: "Enter the Location",
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.done,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return texts.locationError;
                      }
                      return null;
                    },
                    controller: locationController),
                const SizedBox(height: 15),
                CustomInputField(
                    size: size,
                    text: texts.houseText,
                    hintText: "Enter the house type",
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return texts.houseError;
                      }
                      return null;
                    },
                    controller: houseController),
                const SizedBox(height: 15),
                CustomInputField(
                    size: size,
                    text: texts.peopleText,
                    hintText: "Enter the number of people in the house",
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return texts.peopleError;
                      }
                      return null;
                    },
                    controller: peopleController),
                const SizedBox(height: 15),
                CustomTextWidget(text1: texts.durationText, text2: " *"),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(texts.minText,
                            style: regTextStyle.copyWith(fontSize: 14)),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: size.width * 0.35,
                          child: CustomDropDownWidget(
                              value: selectedMinimum,
                              showText: false,
                              hint: texts.minText,
                              items: ["1", "2", "3", "4", "5"]
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
                                  selectedMinimum = value;
                                });
                              }),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(texts.maxText,
                            style: regTextStyle.copyWith(fontSize: 14)),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: size.width * 0.35,
                          child: CustomDropDownWidget(
                            value: selectedMaximum,
                            hint: texts.maxText,
                            showText: false,
                            items: ["1", "2", "3", "4", "5"]
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
                                selectedMaximum = value;
                              });
                            },
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(texts.roomText,
                            style: regTextStyle.copyWith(fontSize: 16)),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: size.width * 0.25,
                          child: CustomDropDownWidget(
                              value: selectedRooms,
                              showText: false,
                              items: ["1", "2", "3", "4", "5"]
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
                                  selectedRooms = value;
                                });
                              }),
                        ),
                      ],
                    ),
                    SizedBox(
                        width: size.width * 0.5,
                        child: CustomInputField(
                            size: size,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return texts.kitchenError;
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.done,
                            hintText: "Enter kitchen type",
                            text: texts.kitchenText,
                            controller: kitchenController))
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(texts.restroomText,
                            style: regTextStyle.copyWith(fontSize: 16)),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: size.width * 0.25,
                          child: CustomDropDownWidget(
                              value: selectedRestroom,
                              showText: false,
                              items: ["1", "2", "3", "4", "5"]
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
                                  selectedRestroom = value;
                                });
                              }),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: size.width * 0.50,
                      child: CustomInputField(
                          size: size,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return texts.kitchenError;
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.done,
                          hintText: "Enter restroom type",
                          text: texts.restTypeText,
                          controller: restroomController),
                    )
                  ],
                ),
                SizedBox(height: size.height * 0.07),
                CustomButtonWidget(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      if (_formKey.currentState!.validate() &&
                          selectedMaximum != null &&
                          selectedMinimum != null &&
                          selectedRestroom != null &&
                          selectedRooms != null) {
                        context.read<CustomerInfoProvider>().houseInfoOwner(
                            amountController.text.trim(),
                            locationController.text.trim(),
                            houseController.text.trim(),
                            peopleController.text.trim(),
                            selectedMinimum,
                            selectedMaximum,
                            selectedRooms,
                            kitchenController.text.trim(),
                            selectedRestroom,
                            restroomController.text.trim());

                        widget.isProfile
                            ? null
                            : Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const HouseAmenitiesPage()));
                      } else {
                        showSnack(
                            context, "02", "Please fill the required fields");
                      }
                    },
                    text: Text(
                      widget.isProfile ? "SAVE" : texts.nextButton,
                      style: buttonStyle,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
