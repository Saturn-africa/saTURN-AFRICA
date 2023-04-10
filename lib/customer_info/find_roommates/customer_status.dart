import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/leading_arrow.dart';
import 'package:saturn/helper_widgets/progress_bar.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/service/storage/shared_preferences/user_details.dart';

import '../../providers/customer_info_provider.dart';

class CustomerStatus extends StatelessWidget {
  const CustomerStatus({super.key});
  @override
  Widget build(BuildContext context) {
    CustomerStatusTexts texts = CustomerStatusTexts();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: leadingIcon(context),
          elevation: 0,
          backgroundColor: white,
        ),
        body: LayoutBuilder(
          builder: (context, constraint) => SafeArea(
              child: Consumer<CustomerInfoProvider>(
            builder: (_, status, __) => SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraint.maxHeight),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.01,
                        horizontal: size.width * 0.05),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(texts.statusText, style: serviceHeaderStyle),
                          const SizedBox(height: 15),
                          Text(texts.statusLabelText,
                              style: verifyOTPLabelStyle),
                          SizedBox(height: size.height * 0.05),
                          InkWell(
                            onTap: () {
                              status.roomOwnerSelected();
                            },
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: size.width * 0.05),
                              decoration: BoxDecoration(
                                  color: white,
                                  border: Border.all(
                                      color: status.roomOwner
                                          ? purple
                                          : lightBlack,
                                      width: status.roomOwner ? 2 : 0.5),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    texts.statusCard1HeaderText,
                                    style: serviceHeaderStyle,
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    texts.statusCard1LabelText,
                                    style: verifyOTPLabelStyle,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              status.roomSeekerSelected();
                            },
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: size.width * 0.05),
                              decoration: BoxDecoration(
                                  color: white,
                                  border: Border.all(
                                      color: status.roomSeeker
                                          ? purple
                                          : lightBlack,
                                      width: status.roomSeeker ? 2 : 0.5),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    texts.statusCard2HeaderText,
                                    style: serviceHeaderStyle,
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    texts.statusCard2LabelText,
                                    style: verifyOTPLabelStyle,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          CustomButtonWidget(
                            text: status.isNextClicked
                                ? loadingIndicator()
                                : Text(
                                    texts.nextText,
                                    style: buttonStyle,
                                  ),
                            onPressed: () async {
                              if (status.isNextClicked) {
                                status.onNextClick();
                                return;
                              }
                              String id = await UserPreferences.getUserId();
                              if (status.roomOwner) {
                                await UserPreferences.setUserStatus(
                                    id, "Room Owner");
                                if (context.mounted) {
                                  await status.setOwnerStatus(context);
                                }
                              } else if (status.roomSeeker) {
                                await UserPreferences.setUserStatus(
                                    id, "Room Seeker");
                                if (context.mounted) {
                                  await status.setSeekerStatus(context);
                                }
                              } else {
                                if (context.mounted) {
                                  showSnack(
                                      context, "02", "please select a field");
                                }
                              }
                            },
                          )
                        ]),
                  ),
                ),
              ),
            ),
          )),
        ));
  }
}
