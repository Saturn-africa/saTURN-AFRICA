import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:saturn/config/routing/routing.dart';
import 'package:saturn/custom_widgets/bottom_sheet/image_sheet.dart';
import 'package:saturn/custom_widgets/custom_profile_tile.dart';
import 'package:saturn/customer_info/find_roommates/account/personal_info.dart';
import 'package:saturn/customer_info/find_roommates/account/life_style.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/additional_info.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/house_info_owner.dart';
import 'package:saturn/customer_info/find_roommates/account/room_mate_pref.dart';
import 'package:saturn/customer_info/find_roommates/room_seeker/additional_info_seeker.dart';
import 'package:saturn/customer_info/find_roommates/room_seeker/house_info_seeker.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/leading_arrow.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/providers/account/account_provider.dart';

class Profile extends StatefulWidget {
  const Profile({this.isDrawer = false, super.key});
  final bool isDrawer;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final ImagePicker _picker = ImagePicker();
  String? image;

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Provider.of<AccountProvider>(context, listen: false).getDetails();
      if (!mounted) return;
      await Provider.of<AccountProvider>(context, listen: false)
          .getUserInfo(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: widget.isDrawer
          ? AppBar(
              title: Text("Profile", style: appBarTextStyle),
              leading: leadingIcon(context),
              backgroundColor: white,
              elevation: 0,
            )
          : null,
      body: Consumer<AccountProvider>(
        builder: (_, account, __) => SafeArea(
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
                        GestureDetector(
                          onTap: () => showModal(context, _pickImg),
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                    scale: 0.7,
                                    image: AssetImage(
                                        'assets/images/download.png')),
                                border: Border.all(color: purple, width: 2)),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    RoutingService.pushRouting(
                                        context,
                                        ShowImagePage(
                                            isAsset: account.imageUrl == null ||
                                                    account.imageUrl == ""
                                                ? true
                                                : false,
                                            image: account.imageUrl == null ||
                                                    account.imageUrl == ""
                                                ? "assets/images/male.png"
                                                : account.imageUrl!));
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: purple),
                                        color: const Color.fromRGBO(
                                            243, 245, 251, 1),
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: (account.imageUrl != null &&
                                                    account.imageUrl != "")
                                                ? Image.network(
                                                        account.imageUrl!)
                                                    .image
                                                : Image.asset(
                                                        "assets/images/male.png")
                                                    .image)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(account.username,
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
                                style:
                                    profileTextStyle.copyWith(color: purple)),
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
                          RoutingService.pushFullScreenRouting(
                              context, const UserPersonalInfo());
                        },
                      ),
                      const SizedBox(height: 10),
                      CustomProfileTap(
                        text: "Roommate Preference",
                        onTap: () {
                          RoutingService.pushFullScreenRouting(
                              context, const RoommatePreferencePage());
                        },
                      ),
                      const SizedBox(height: 10),
                      CustomProfileTap(
                        text: "House Information",
                        onTap: () {
                          account.userStatus.toLowerCase() == "room owner"
                              ? RoutingService.pushFullScreenRouting(
                                  context, const OwnerHouseInfoPage())
                              : RoutingService.pushFullScreenRouting(
                                  context, const HouseSeekerInfoPage());
                        },
                      ),
                      const SizedBox(height: 10),
                      CustomProfileTap(
                        text: "Lifestyle Choices",
                        onTap: () {
                          RoutingService.pushFullScreenRouting(
                              context, const LifestyleInfoPage());
                        },
                        icon: Icons.sports_kabaddi,
                      ),
                      const SizedBox(height: 10),
                      CustomProfileTap(
                        text: "Additional Information",
                        onTap: () {
                          account.userStatus.toLowerCase() == "room owner"
                              ? RoutingService.pushFullScreenRouting(context,
                                  const OwnerAdditionalInformationPage())
                              : RoutingService.pushFullScreenRouting(
                                  context, const AdditionalInfoSeekerPage());
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
      ),
    );
  }

  Future _pickImg(ImageSource src) async {
    final pickedImgFile =
        await _picker.pickImage(source: src, imageQuality: 50);
    if (pickedImgFile != null && mounted) {
      await context
          .read<AccountProvider>()
          .getImageString(context, pickedImgFile);
    }
  }
}

class ShowImagePage extends StatelessWidget {
  const ShowImagePage({super.key, required this.image, this.isAsset = false});
  final String image;
  final bool isAsset;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: isAsset
            ? Image.asset(image,
                fit: BoxFit.cover, height: size.height, width: size.width)
            : Image.network(image,
                fit: BoxFit.cover, height: size.height, width: size.width),
      ),
    );
  }
}
