import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:saturn/custom_widgets/image_picker.dart';
import 'package:saturn/helper_widgets/progress_bar.dart';
import 'package:saturn/models/account/request_model/additional_info.dart';
import 'package:saturn/providers/account/account_provider.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_input.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class OwnerAdditionalInformationPage extends StatefulWidget {
  const OwnerAdditionalInformationPage({super.key});

  @override
  State<OwnerAdditionalInformationPage> createState() =>
      _OwnerAdditionalInformationPageState();
}

class _OwnerAdditionalInformationPageState
    extends State<OwnerAdditionalInformationPage> {
  TextEditingController noteController = TextEditingController();
  OwnerAdditionalInfoTexts texts = OwnerAdditionalInfoTexts();
  final _formKey = GlobalKey<FormState>();
  List<XFile> imageList = [];

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
        body: Consumer<AccountProvider>(
          builder: (_, account, __) => SingleChildScrollView(
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
                        itemCount: imageList.length,
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
                            File(imageList[index].path),
                            fit: BoxFit.cover,
                          );
                        })),
                    // images
                    const SizedBox(height: 50),
                    CustomButtonWidget(
                        onPressed: () async {
                          FocusScope.of(context).unfocus();
                          if (account.addInfoClicked) {
                            account.onAddInfoClick();
                            return;
                          }
                          if (_formKey.currentState!.validate() &&
                              imageList.isNotEmpty) {
                            account.onAddInfoClick();
                            await account.getImageStrings(context, imageList);
                            if (account.imageList.isNotEmpty) {
                              AdditionalInfoOwnerTRequest data =
                                  AdditionalInfoOwnerTRequest(
                                      additionalInformation:
                                          noteController.text.trim(),
                                      photos: account.imageList);
                              if (!mounted) return;
                              await account.additionalInfoUpdate(
                                  data.toJson(), context);
                            }
                          } else {
                            showSnack(
                                context,
                                "02",
                                imageList.isEmpty
                                    ? "Upload room images"
                                    : "Please fill the required fields");
                          }
                        },
                        text: account.addInfoClicked
                            ? loadingIndicator()
                            : Text(
                                "SAVE",
                                style: buttonStyle,
                              ))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
