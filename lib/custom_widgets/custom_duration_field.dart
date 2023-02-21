import 'package:flutter/material.dart';
import 'package:saturn/custom_widgets/custom_dropdown.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class CustomDuration extends StatefulWidget {
  const CustomDuration({
    Key? key,
    required this.minimumText,
    required this.maximumText,
    required this.onChangedMaximum,
    required this.onChangedMinimum,
    required this.selectedMininum,
    required this.selectedMaximum,
  }) : super(key: key);

  final String minimumText;
  final String maximumText;
  final ValueChanged<dynamic>? onChangedMinimum;
  final ValueChanged<dynamic>? onChangedMaximum;
  final dynamic selectedMininum;
  final dynamic selectedMaximum;

  @override
  State<CustomDuration> createState() => _CustomDurationState();
}

class _CustomDurationState extends State<CustomDuration> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.minimumText,
                style: regTextStyle.copyWith(fontSize: 14)),
            const SizedBox(height: 10),
            SizedBox(
              width: size.width * 0.35,
              child: CustomDropDownWidget(
                  value: widget.selectedMininum,
                  showText: false,
                  hint: "minimum",
                  items: ["1", "2", "3", "4", "5"]
                      .map<DropdownMenuItem<String>>((item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: dropdownTextStyle,
                          )))
                      .toList(),
                  onChanged: widget.onChangedMinimum),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.maximumText,
                style: regTextStyle.copyWith(fontSize: 14)),
            const SizedBox(height: 10),
            SizedBox(
              width: size.width * 0.35,
              child: CustomDropDownWidget(
                  value: widget.selectedMaximum,
                  hint: "maximum",
                  showText: false,
                  items: ["1", "2", "3", "4", "5"]
                      .map<DropdownMenuItem<String>>((item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: dropdownTextStyle,
                          )))
                      .toList(),
                  onChanged: widget.onChangedMaximum),
            )
          ],
        )
      ],
    );
  }
}
