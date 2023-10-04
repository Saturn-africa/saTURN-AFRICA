import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/providers/custom_provider/menu_provider.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    MenuProvider menuHelper = context.read<MenuProvider>();
    MenuProvider menuWatch = context.watch<MenuProvider>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Help", style: appBarTextStyle),
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.04, vertical: size.height * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HelpListTile(
                text: "Frequently Asked Questions",
                icon: "frequent",
                tileTapped: menuWatch.frequent,
                onTap: () {
                  menuHelper.changeBool("frequent");
                },
              ),
              const SizedBox(height: 10),
              HelpListTile(
                tileTapped: menuWatch.chat,
                onTap: () {
                  menuHelper.changeBool("chat");
                },
                icon: "chat",
                text: "Chat with Us",
              ),
              const SizedBox(height: 10),
              HelpListTile(
                  tileTapped: menuWatch.whatsapp,
                  onTap: () {
                    menuHelper.changeBool("whatsapp");
                    Uri link = Uri.parse(
                        "https:wa.me/+2349020213148?text=Hello Saturn, I need a roommate!");
                    menuHelper.launchLink(context, link, "Whatsapp");
                  },
                  isFiltered: true,
                  icon: "whatsapp",
                  text: "https://wa.me/2349020213148"),
              const SizedBox(height: 10),
              HelpListTile(
                tileTapped: menuWatch.call,
                onTap: () {
                  menuHelper.changeBool("call");
                  Uri phoneLink = Uri.parse("tel:+2349020213148");
                  menuHelper.launchLink(context, phoneLink, "Phone");
                },
                icon: "phone",
                text: "09020213148",
              ),
              const SizedBox(height: 10),
              HelpListTile(
                tileTapped: menuWatch.mail,
                onTap: () {
                  menuHelper.changeBool("mail");
                  String mail = Uri.encodeComponent("support@saturn.africa");
                  String subject = Uri.encodeComponent("Hello Saturn");
                  Uri mailLink =
                      Uri.parse("mailto:$mail?subject=$subject&body=");
                  menuHelper.launchLink(context, mailLink, "E-mail");
                },
                icon: "mail",
                text: "support@saturn.africa",
              ),
              const SizedBox(height: 15),
              HelpListTile(
                tileTapped: menuWatch.instagram,
                isFiltered: true,
                onTap: () {
                  menuHelper.changeBool("instagram");
                  Uri instaLink =
                      Uri.parse("https://instagram.com/saturnafrica");
                  menuHelper.launchLink(context, instaLink, "instagram");
                },
                icon: "instagram",
                text: "saturnafrica",
              ),
              const SizedBox(height: 10),
              HelpListTile(
                tileTapped: menuWatch.twitter,
                onTap: () {
                  menuHelper.changeBool("twitter");
                  Uri twitterLink =
                      Uri.parse("https://twitter.com/saturnafrica");
                  menuHelper.launchLink(context, twitterLink, "twitter");
                },
                icon: "twitter",
                isFiltered: true,
                text: "@saturnafrica",
              ),
              const SizedBox(height: 10),
              HelpListTile(
                tileTapped: menuWatch.facebook,
                onTap: () {
                  menuHelper.changeBool("facebook");
                },
                icon: "facebook",
                isFiltered: true,
                text: "Saturn Africa",
              ),
              const SizedBox(height: 10),
              HelpListTile(
                tileTapped: menuWatch.linkedin,
                onTap: () {
                  menuHelper.changeBool("linkedin");
                },
                icon: "linkedin",
                isFiltered: true,
                text: "Saturn Africa",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HelpListTile extends StatelessWidget {
  const HelpListTile({
    required this.onTap,
    required this.icon,
    required this.text,
    this.tileTapped = false,
    this.isFiltered = false,
    Key? key,
  }) : super(key: key);
  final VoidCallback onTap;
  final String text;
  final String icon;
  final bool isFiltered;
  final bool tileTapped;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: tileTapped
                ? const Border.symmetric(
                    vertical: BorderSide.none,
                    horizontal: BorderSide(width: 1, color: lightBlack))
                : null),
        child: Row(
          children: [
            !isFiltered
                ? SvgPicture.asset("assets/icons/$icon.svg")
                : Image(
                    image: AssetImage("assets/images/$icon.png"),
                  ),
            const SizedBox(width: 10),
            Expanded(
              child: SelectableText(
                text,
                style: kHeaderTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
