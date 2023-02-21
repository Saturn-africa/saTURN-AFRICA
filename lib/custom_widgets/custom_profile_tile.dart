import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class CustomProfileTap extends StatelessWidget {
  const CustomProfileTap({
    required this.text,
    required this.onTap,
    this.icon = Icons.person,
    Key? key,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
          contentPadding: EdgeInsets.zero,
          trailing: const Icon(
            Icons.chevron_right_rounded,
            size: 30,
            color: deepBlack,
          ),
          title: Text(text, style: profileTileStyle),
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: deepBlack, width: 0.5)),
            child: Icon(
              icon,
              color: purple,
              size: 20,
            ),
          )),
    );
  }
}
