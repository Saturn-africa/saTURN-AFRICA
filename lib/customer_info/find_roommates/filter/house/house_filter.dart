import 'package:flutter/material.dart';
import 'package:saturn/custom_widgets/custom_duration_field.dart';
import 'package:saturn/customer_info/find_roommates/filter/house/amenity_filter_card.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_dropdown.dart';
import 'package:saturn/custom_widgets/custom_input.dart';
import 'package:saturn/custom_widgets/custom_list_tile.dart';
import 'package:saturn/custom_widgets/custom_text.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class HouseFilter extends StatefulWidget {
  const HouseFilter({super.key});

  @override
  State<HouseFilter> createState() => _HouseFilterState();
}

class _HouseFilterState extends State<HouseFilter> {
  TextEditingController locationController = TextEditingController();
  dynamic budget;
  dynamic selectedMinimum;
  dynamic selectedMaximum;

  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  // TextEditingController budgetController = TextEditingController();
  @override
  void dispose() {
    locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            left: size.width * 0.04,
            right: size.width * 0.04,
            bottom: size.height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomInputField(
              textInputAction: TextInputAction.done,
              size: size,
              text: "Location",
              hintText: "Enter Location",
              validator: (value) {
                if (value!.isEmpty) {
                  return "Location must not be empty";
                }
                return null;
              },
              controller: locationController,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomDropDownWidget(
              value: budget,
              text: "Budget",
              hint: "select a budget",
              items: [
                "100,000 - 150,000",
                "150,000 - 200,000",
                "200,000 - 250,000"
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
                  budget = value;
                });
              },
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomTextWidget(text1: "Type of House", text2: "*"),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
                isBold: false,
                size: size,
                onChanged: (val) {
                  setState(() {
                    isChecked1 = val!;
                  });
                },
                value: isChecked1,
                text: "Flat"),
            CustomListTile(
                isBold: false,
                size: size,
                onChanged: (val) {
                  setState(() {
                    isChecked2 = val!;
                  });
                },
                value: isChecked2,
                text: "Self Contain"),
            CustomListTile(
                isBold: false,
                size: size,
                onChanged: (val) {
                  setState(() {
                    isChecked3 = val!;
                  });
                },
                value: isChecked3,
                text: "2 Bedrooms"),
            CustomListTile(
                isBold: false,
                size: size,
                onChanged: (val) {
                  setState(() {
                    isChecked4 = val!;
                  });
                },
                value: isChecked4,
                text: "Self Contain"),
            const SizedBox(height: 15),
            const CustomTextWidget(text1: "Duration", text2: " *"),
            const SizedBox(height: 10),
            CustomDuration(
                minimumText: "Minimum",
                maximumText: "Maximum",
                onChangedMaximum: (val) {
                  setState(() {
                    selectedMaximum = val;
                  });
                },
                onChangedMinimum: (val) {
                  setState(() {
                    selectedMinimum = val;
                  });
                },
                selectedMininum: selectedMinimum,
                selectedMaximum: selectedMaximum),
            const SizedBox(height: 15),
            const CustomTextWidget(text1: "Amenities", text2: "*"),
            const SizedBox(height: 10),
            const AmenitiesGrid(
              amenities: [
                "Fenced",
                "Gateman",
                "Light",
                "Space",
                "Fenced",
                "Gateman",
                "Light",
                "wi-fi",
              ],
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
