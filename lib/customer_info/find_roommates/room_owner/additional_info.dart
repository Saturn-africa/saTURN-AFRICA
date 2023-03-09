import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:saturn/custom_widgets/image_picker.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/home_main.dart';
import 'package:saturn/Providers/customer_info_provider.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_input.dart';
import 'package:saturn/custom_widgets/custom_white_button.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class OwnerAdditionalInformationPage extends StatefulWidget {
  const OwnerAdditionalInformationPage({
    this.isProfile = true,
    super.key,
  });
  final bool isProfile;

  @override
  State<OwnerAdditionalInformationPage> createState() =>
      _OwnerAdditionalInformationPageState();
}

class _OwnerAdditionalInformationPageState
    extends State<OwnerAdditionalInformationPage> {
  TextEditingController noteController = TextEditingController();
  OwnerAdditionalInfoTexts texts = OwnerAdditionalInfoTexts();
  final _formKey = GlobalKey<FormState>();
  List<XFile>? imageList = [];

  @override
  void dispose() {
    noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                    text: texts.appBarText,
                    isCompulsory: true,
                    controller: noteController,
                    maxLines: 4,
                    minLines: 4,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return texts.infoBoxError;
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    hintText: texts.hintText,
                  ),
                  const SizedBox(height: 20),
                  Text(texts.photoText, style: regTextStyle),
                  const SizedBox(height: 10),
                  // images
                  AddImage(
                      imgPickFn: (pickedImg) {
                        setState(() {
                          imageList = pickedImg;
                        });
                      },
                      backgroundDisplay: Container(
                        child: null,
                      )),
                  const SizedBox(height: 15),
                  GridView.builder(
                      primary: false,
                      itemCount: imageList!.length,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: 120,
                              // childAspectRatio: 20 / 30,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              crossAxisCount: 3),
                      itemBuilder: ((BuildContext context, int index) {
                        return Image.file(
                          File(imageList![index].path),
                          fit: BoxFit.cover,
                        );
                      })),
                  // images
                  const SizedBox(height: 20),
                  CustomButtonWidget(
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        if (_formKey.currentState!.validate()) {
                          context
                              .read<CustomerInfoProvider>()
                              .additionalInfo(noteController.text.trim(), []);
                          widget.isProfile
                              ? null
                              : Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const OwnerMainHome()),
                                  ((route) => route.isFirst));
                        } else {
                          showSnack(
                              context, "02", "Please fill the required fields");
                        }
                      },
                      text: Text(
                        "SAVE",
                        style: buttonStyle,
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
