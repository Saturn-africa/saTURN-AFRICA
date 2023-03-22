import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField(
      {required this.size,
      required this.text,
      required this.controller,
      this.validator,
      this.autovalidateMode = AutovalidateMode.onUserInteraction,
      this.keyboardType = TextInputType.text,
      this.style,
      this.inputFormatters,
      this.readOnly = false,
      this.maxLength,
      this.obscureText = false,
      this.suffixIcon,
      this.isCompulsory = true,
      this.hintText = "",
      this.textInputAction = TextInputAction.done,
      this.maxLines,
      this.minLines = 1,
      this.isFieldOnly = false,
      super.key});
  final Size size;
  final TextStyle? style;
  final String text;
  final bool obscureText;
  final Widget? suffixIcon;
  final AutovalidateMode autovalidateMode;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final bool readOnly;
  final int minLines;
  final int? maxLength;
  final TextInputAction? textInputAction;
  final int? maxLines;
  final String hintText;
  final bool isCompulsory;
  final FormFieldValidator<String>? validator;
  final bool isFieldOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: isFieldOnly
              ? null
              : RichText(
                  text: TextSpan(text: text, style: regTextStyle, children: [
                    TextSpan(
                        text: isCompulsory ? " *" : "",
                        style: const TextStyle(
                            color: Colors.redAccent,
                            fontSize: 15,
                            fontWeight: FontWeight.w400))
                  ]),
                ),
        ),
        SizedBox(height: isFieldOnly ? 0 : 10),
        TextFormField(
          autovalidateMode: autovalidateMode,
          validator: validator,
          controller: controller,
          readOnly: readOnly,
          style: style,
          maxLength: maxLength,
          maxLines: maxLines,
          minLines: minLines,
          cursorColor: purple,
          inputFormatters: inputFormatters,
          obscureText: obscureText,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          decoration: InputDecoration(
            isDense: true,
            filled: true,
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: hintStyle,
            fillColor: white,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: purple,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Colors.redAccent,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Colors.redAccent,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: purple,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: purple,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
