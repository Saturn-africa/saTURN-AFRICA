import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:saturn/config/routing/routing.dart';
import 'package:saturn/custom_widgets/custom_profile_tile.dart';
import 'package:saturn/custom_widgets/image_picker.dart';
import 'package:saturn/customer_info/find_roommates/account/personal_info.dart';
import 'package:saturn/customer_info/find_roommates/life_style.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/additional_info.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/house_info_owner.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/room_mate_pref.dart';
import 'package:saturn/customer_info/find_roommates/room_seeker/additional_info_seeker.dart';
import 'package:saturn/customer_info/find_roommates/room_seeker/house_info_seeker.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/leading_arrow.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/providers/customer_info_provider.dart';

class Profile extends StatefulWidget {
  const Profile({this.isDrawer = false, super.key});
  final bool isDrawer;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  XFile? _pickedImg;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    dynamic status =
        context.watch<CustomerInfoProvider>().customerInfo["status"] ?? "";
    return Scaffold(
      appBar: widget.isDrawer
          ? AppBar(
              title: Text("Profile", style: appBarTextStyle),
              leading: leadingIcon(context),
              backgroundColor: white,
              elevation: 0,
            )
          : null,
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
                      GestureDetector(
                        onTap: () => showModal(),
                        child: Container(
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
                                  if (_pickedImg != null) {
                                    Navigator.of(context, rootNavigator: true)
                                        .push(MaterialPageRoute(
                                            builder: (_) => ShowImagePage(
                                                pickedImage: _pickedImg!)));
                                  }
                                },
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor:
                                      const Color.fromRGBO(243, 245, 251, 1),
                                  backgroundImage: _pickedImg == null
                                      ? null
                                      : FileImage(File(_pickedImg!.path)),
                                ),
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
                        status == "Room Owner"
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
                        status == "Room Owner"
                            ? RoutingService.pushFullScreenRouting(
                                context, const OwnerAdditionalInformationPage())
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
    );
  }

  void _pickImg(ImageSource src) async {
    final pickedImgFile =
        await _picker.pickImage(source: src, imageQuality: 50);
    if (pickedImgFile != null) {
      setState(() {
        _pickedImg = XFile(pickedImgFile.path);
      });
    }
  }

  Future showModal() {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: SelectOptions(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                        _pickImg(ImageSource.camera);
                      },
                      icon: Icon(Icons.photo_camera_outlined,
                          color: Theme.of(context).primaryColor),
                      label: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Add image from Camera',
                          style: TextStyle(
                            color: lightBlack,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                        _pickImg(ImageSource.gallery);
                      },
                      icon: Icon(Icons.image_rounded,
                          color: Theme.of(context).primaryColor),
                      label: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Add image from Gallery',
                          style: TextStyle(
                            color: lightBlack,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}

class ShowImagePage extends StatelessWidget {
  const ShowImagePage({super.key, required this.pickedImage});
  final XFile pickedImage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Image(
      image: FileImage(File(pickedImage.path)),
      fit: BoxFit.cover,
    ));
  }
}
