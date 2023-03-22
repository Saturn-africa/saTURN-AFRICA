import 'package:flutter/material.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_dropdown.dart';
import 'package:saturn/custom_widgets/custom_input.dart';
import 'package:saturn/customer_info/homes_for_rent/home_page/rent_home_main.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class PreferredHouseSearchPage extends StatefulWidget {
  const PreferredHouseSearchPage({super.key});

  @override
  State<PreferredHouseSearchPage> createState() =>
      _PreferredHouseSearchPageState();
}

class _PreferredHouseSearchPageState extends State<PreferredHouseSearchPage> {
  TextEditingController minimumBudgetController = TextEditingController();
  TextEditingController maximumBudgetController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  dynamic selectedRegion;
  dynamic selectedState;
  dynamic selectedHouseType;

  @override
  void dispose() {
    minimumBudgetController.dispose();
    maximumBudgetController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Search for your Preferred House",
            style: appBarTextStyle.copyWith(fontSize: 17)),
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context, true);
            }),
        backgroundColor: white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.04, vertical: size.height * 0.02),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomStateDropDown(
                  text: "State of Interest",
                  value: selectedState,
                  onChanged: (val) {
                    setState(() {
                      selectedState = val;
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
                  text: "Region of Interest",
                  hint: "Select a Region",
                  value: selectedRegion,
                  onChanged: (value) {
                    setState(() {
                      selectedRegion = value;
                    });
                  },
                ),
                const SizedBox(height: 15),
                DropDownCustom(
                  items: const [
                    "Duplex",
                    "Bungalow",
                    "Two-Bedroom Flat",
                    "Three-Bedroom Flat",
                    "Single Room",
                    "Semi-Detached"
                  ],
                  text: "Type of House",
                  hint: "Select type of House",
                  value: selectedHouseType,
                  onChanged: (value) {
                    setState(() {
                      selectedHouseType = value;
                    });
                  },
                ),
                const SizedBox(height: 15),
                CustomInputField(
                  size: size,
                  text: "Minimum Budget",
                  controller: minimumBudgetController,
                  keyboardType: TextInputType.number,
                  hintText: "Enter minimum budget",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Minimum Budget is required";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                CustomInputField(
                  size: size,
                  text: "Maximum Budget",
                  controller: maximumBudgetController,
                  keyboardType: TextInputType.number,
                  hintText: "Enter maximum budget",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Maximum Budget is required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: size.height * 0.15),
                CustomButtonWidget(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      if (selectedHouseType == null ||
                          selectedRegion == null ||
                          selectedState == null) {
                        showSnack(
                            context, "02", "Please fill the required fields");
                        return;
                      }
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const RentMainHome()),
                            (route) => false);
                      }
                    },
                    text: Text(
                      "Continue",
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
