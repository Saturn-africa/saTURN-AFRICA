import 'package:flutter/material.dart';
import 'package:saturn/auth/login/login_page.dart';
import 'package:saturn/auth/registration/create_details.dart';
import 'package:saturn/config/routing/routing.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/home_main.dart';
import 'package:saturn/customer_info/find_roommates/room_seeker/home_main_seeker.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/models/account/response_model/user_details.dart';
import 'package:saturn/service/storage/secure_storage/user_details.dart';
import 'package:saturn/service/storage/shared_preferences/user_details.dart';

class PreviewScreen extends StatelessWidget {
  const PreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreviewTexts texts = PreviewTexts();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05, vertical: size.height * 0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/saturn.png",
                    width: size.width * 0.8,
                    height: size.height * 0.15,
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.0),
                  child: Text(
                    texts.headerText,
                    // textAlign: TextAlign.left,
                    style: kHeaderTextStyle,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
              child: CustomButtonWidget(
                text: Text(texts.startedText,
                    style: buttonStyle.copyWith(fontSize: 20)),
                onPressed: () async {
                  bool? status = await UserPreferences.getLoginStatus();
                  String? refreshToken =
                      await UserSecureStorage().getRefreshToken();
                  bool firstTime = await UserPreferences.getFirstTimeStatus();
                  if (refreshToken == null && context.mounted) {
                    RoutingService.pushAndRemoveAllRoute(
                        context, const LoginPage());
                  } else if (firstTime && context.mounted) {
                    RoutingService.pushReplacementRouting(
                        context, const CreateAccount());
                  } else if (status && context.mounted) {
                    UserDetailsModel? user =
                        await UserSecureStorage().getUpdatedUserData();
                    if (context.mounted) {
                      RoutingService.pushReplacementRouting(
                          context,
                          user == null
                              ? const LoginPage()
                              : user.data!.role!.toLowerCase() == "room owner"
                                  ? const OwnerMainHome()
                                  : const SeekerMainHome());
                    }
                  } else if (!status && context.mounted) {
                    RoutingService.pushReplacementRouting(
                        context, const LoginPage());
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
