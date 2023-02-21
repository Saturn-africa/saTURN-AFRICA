import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:nigerian_states_and_lga/nigerian_states_and_lga.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class CustomDropDownWidget extends StatelessWidget {
  const CustomDropDownWidget({
    Key? key,
    required this.value,
    required this.items,
    this.text,
    this.onChanged,
    this.hint = "",
    this.showText = true,
  }) : super(key: key);

  final dynamic value;
  final List<DropdownMenuItem<dynamic>>? items;
  final ValueChanged<dynamic>? onChanged;
  final String hint;
  final String? text;
  final bool showText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: showText
              ? Column(
                  children: [
                    RichText(
                      text: TextSpan(
                          text: text!,
                          style: regTextStyle,
                          children: const [
                            TextSpan(
                                text: " *",
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400))
                          ]),
                    ),
                    const SizedBox(height: 10),
                  ],
                )
              : null,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: white,
            border: Border.all(width: 1, color: purple),
            borderRadius: BorderRadius.circular(6),
          ),
          child: DropdownButton2(
            underline: DropdownButtonHideUnderline(child: Container()),
            style: dropdownTextStyle,
            items: items,
            hint: Text(
              hint,
              style: const TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w400, color: lightBlack),
            ),
            value: value,
            onChanged: onChanged,
            buttonWidth: double.infinity,
            buttonHeight: 50,
            buttonPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            itemPadding: const EdgeInsets.only(left: 20),
            // itemHeight: 30,
            dropdownDecoration: BoxDecoration(
                color: dropColor, borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ],
    );
  }
}

class DropDownCustom extends StatelessWidget {
  const DropDownCustom(
      {this.hint = "",
      required this.items,
      required this.text,
      required this.onChanged,
      this.value,
      super.key});
  final List<String> items;
  final dynamic value;
  final String hint;
  final String text;
  final ValueChanged<dynamic> onChanged;

  @override
  Widget build(BuildContext context) {
    return CustomDropDownWidget(
        value: value,
        hint: hint,
        items: items
            .map<DropdownMenuItem<String>>((item) => DropdownMenuItem(
                value: item,
                child: Text(
                  item,
                  style: dropdownTextStyle,
                )))
            .toList(),
        onChanged: onChanged,
        text: text);
  }
}

class CustomStateDropDown extends StatelessWidget {
  const CustomStateDropDown(
      {required this.text,
      required this.value,
      required this.onChanged,
      super.key});
  final dynamic value;
  final String text;
  final ValueChanged<dynamic> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(text: text, style: regTextStyle, children: const [
          TextSpan(
              text: " *",
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 15,
                  fontWeight: FontWeight.w400))
        ])),
        const SizedBox(height: 10),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: white,
              border: Border.all(width: 1, color: purple),
              borderRadius: BorderRadius.circular(6),
            ),
            child: DropdownButton<String>(
              underline: DropdownButtonHideUnderline(child: Container()),
              key: const ValueKey('States'),
              value: value,
              isExpanded: true,
              hint: const Text(
                'Select a Nigerian state',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: lightBlack),
              ),
              items: NigerianStatesAndLGA.allStates
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: dropdownTextStyle),
                );
              }).toList(),
              onChanged: onChanged,
            )),
      ],
    );
  }
}
