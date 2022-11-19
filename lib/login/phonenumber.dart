// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:flutter/material.dart';
import 'package:saturn/login/verifyemail.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              constraints:
                  BoxConstraints(minWidth: 230, minHeight: double.infinity),
              //
              child: InternationalPhoneNumberInput(
                //  inputBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink)),

                countrySelectorScrollControlled: true,
                maxLength: 12,
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                onInputValidated: (bool value) {
                  print(value);
                },
                selectorConfig: SelectorConfig(
                  showFlags: true,
                  setSelectorButtonAsPrefixIcon: true,
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                ),
                ignoreBlank: false,
                // autoValidateMode: AutovalidateMode.onUserInteraction,
                selectorTextStyle: TextStyle(color: Colors.black),
                initialValue: number,

                textFieldController: controller, formatInput: true,

                keyboardType: TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                inputDecoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11.0),
                    borderSide: BorderSide(
                      color: Colors.purple,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 550,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => VerNum()));
                },
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.purple),
                    // color: Colors.purple,
                    width: 400,
                    height: 40,
                    child: Center(
                      child: Text(
                        'CONTINUE',
                        style: TextStyle(color: Colors.white),
                      ),
                    )))
          ],
        ),
      ),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
