import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/custom_widgets/custom_profile_tile.dart';
import 'package:saturn/customer_info/find_roommates/life_style.dart';
import 'package:saturn/customer_info/find_roommates/personal_info.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/additional_info.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/house_info_owner.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/room_mate_pref.dart';
import 'package:saturn/customer_info/find_roommates/room_seeker/additional_info_seeker.dart';
import 'package:saturn/customer_info/find_roommates/room_seeker/house_info_seeker.dart';
import 'package:saturn/helper_widgets/app_bar.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/providers/customer_info_provider.dart';

class Profile extends StatelessWidget {
  const Profile({this.isDrawer = false, super.key});
  final bool isDrawer;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    dynamic status =
        context.watch<CustomerInfoProvider>().customerInfo["status"] ?? "";
    return Scaffold(
      appBar: isDrawer
          ? AppBar(
              title: Text("Profile", style: appBarTextStyle),
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
            )
          : appBar(context, size),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.04, vertical: size.height * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Row(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                scale: 0.7,
                                image:
                                    AssetImage('assets/images/download.png')),
                            border: Border.all(color: purple, width: 2)),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(243, 245, 251, 1),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(60)),
                                    border: Border.all(
                                        color: const Color.fromRGBO(
                                            51, 51, 51, 0.4))),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('iRunstreet',
                                    style: profileHeaderStyle),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 6,
                            ),
                            child: Text('Upload your identity document',
                                style: profileTextStyle),
                          ),
                          const SizedBox(height: 6),
                          Text('Learn Why',
                              style: profileTextStyle.copyWith(color: purple)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Column(
                  children: [
                    CustomProfileTap(
                      text: "Personal Information",
                      onTap: () {
                        Navigator.of(context, rootNavigator: true)
                            .push(MaterialPageRoute(
                                builder: (context) => const PersonalInfoPage(
                                      isProfile: true,
                                    )));
                      },
                    ),
                    const SizedBox(height: 10),
                    CustomProfileTap(
                      text: "Roommate Preference",
                      onTap: () {
                        Navigator.of(context, rootNavigator: true).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    const RoommatePreferencePage(
                                      isProfile: true,
                                    )));
                      },
                    ),
                    const SizedBox(height: 10),
                    CustomProfileTap(
                      text: "House Information",
                      onTap: () {
                        status == "Room Owner"
                            ? Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const OwnerHouseInfoPage()))
                            : Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const HouseSeekerInfoPage()));
                      },
                    ),
                    const SizedBox(height: 10),
                    CustomProfileTap(
                      text: "Lifestyle Choices",
                      onTap: () {
                        Navigator.of(context, rootNavigator: true).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    const LifestyleInfoPage()));
                      },
                      icon: Icons.sports_kabaddi,
                    ),
                    const SizedBox(height: 10),
                    CustomProfileTap(
                      text: "Additional Information",
                      onTap: () {
                        status == "Room Owner"
                            ? Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const OwnerAdditionalInformationPage()))
                            : Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AdditionalInfoSeekerPage()));
                      },
                      icon: Icons.signal_cellular_alt_outlined,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
