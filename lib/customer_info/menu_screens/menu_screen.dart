import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/auth/login/login_page.dart';
import 'package:saturn/custom_widgets/alert_dialog.dart';
import 'package:saturn/custom_widgets/custom_menu_widget.dart';
import 'package:saturn/customer_info/find_roommates/account/account_screen.dart';
import 'package:saturn/customer_info/menu_screens/payment/activate_account.dart';
import 'package:saturn/customer_info/menu_screens/billing_history.dart';
import 'package:saturn/customer_info/menu_screens/help_screen.dart';
import 'package:saturn/customer_info/menu_screens/invite_friends.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/providers/list_tile_provider.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    ListTileProvider color = context.watch<ListTileProvider>();
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: size.height * 0.12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                color.switchColor("activate");
                Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                        builder: (context) => const ActivatePaymentPage()));
              },
              child: CustomMenuWidget(
                textColor: color.activateText,
                bgColor: color.activateBg,
                assetName: "assets/icons/activate.svg",
                text: "Activate Account",
                size: size,
              ),
            ),
            InkWell(
              onTap: () {
                color.switchColor("profile");
                Navigator.of(context, rootNavigator: true)
                    .push(MaterialPageRoute(
                        builder: (context) => const Profile(
                              isDrawer: true,
                            )));
              },
              child: CustomMenuWidget(
                textColor: color.profileText,
                bgColor: color.profileBg,
                assetName: "assets/icons/profile.svg",
                text: "Profile",
                size: size,
              ),
            ),
            InkWell(
              onTap: () {
                color.switchColor("history");
                Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                        builder: (context) => const BillingHistoryPage()));
              },
              child: CustomMenuWidget(
                textColor: color.historyText,
                bgColor: color.historyBg,
                assetName: "assets/icons/history.svg",
                text: "Billing History",
                size: size,
              ),
            ),
            SizedBox(
              height: 20,
              child: Padding(
                padding: EdgeInsets.only(right: size.width * 0.5),
                child: const Divider(
                  thickness: 2,
                  color: lightPurple,
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                color.switchColor("favorite");
              },
              child: CustomMenuWidget(
                textColor: color.favoriteText,
                bgColor: color.favoriteBg,
                assetName: "assets/icons/favorite.svg",
                text: "Favourites",
                size: size,
              ),
            ),
            InkWell(
              onTap: () {
                color.switchColor("notif");
              },
              child: CustomMenuWidget(
                textColor: color.notifText,
                bgColor: color.notifBg,
                assetName: "assets/icons/notif.svg",
                text: "Notification",
                size: size,
              ),
            ),
            InkWell(
              onTap: () {
                color.switchColor("setting");
              },
              child: CustomMenuWidget(
                textColor: color.settingText,
                bgColor: color.settingBg,
                assetName: "assets/icons/settings.svg",
                text: "Settings",
                size: size,
              ),
            ),
            SizedBox(
              height: 20,
              child: Padding(
                padding: EdgeInsets.only(right: size.width * 0.5),
                child: const Divider(
                  thickness: 2,
                  color: lightPurple,
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                color.switchColor("invite");
                Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                        builder: (context) => const InvitePage()));
              },
              child: CustomMenuWidget(
                textColor: color.inviteText,
                bgColor: color.inviteBg,
                assetName: "assets/icons/invite.svg",
                text: "Invite friends",
                size: size,
              ),
            ),
            InkWell(
              onTap: () {
                color.switchColor("help");
                Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                        builder: (context) => const HelpScreen()));
              },
              child: CustomMenuWidget(
                textColor: color.helpText,
                bgColor: color.helpBg,
                assetName: "assets/icons/help.svg",
                text: "Help",
                size: size,
              ),
            ),
            InkWell(
              onTap: () {
                color.switchColor("logout");
                myAlertDialog2(
                    context,
                    "LOG OUT",
                    "Are you Sure you want to Log out",
                    "LOG OUT",
                    "CANCEL", () {
                  Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                      (route) => false);
                }, () {
                  Navigator.of(context).pop();
                });
              },
              child: CustomMenuWidget(
                textColor: color.logoutText,
                bgColor: color.logoutBg,
                assetName: "assets/icons/logout.svg",
                text: "Logout",
                size: size,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
