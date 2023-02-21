import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class HomeGridCustom extends StatelessWidget {
  const HomeGridCustom({
    required this.amenities,
    super.key,
  });
  final List<List<String>> amenities;

  @override
  Widget build(BuildContext context) {
    List<Widget> custom = [];
    for (var i = 0; i < amenities.length; i++) {
      custom.add(Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                color: white,
                border: Border.all(color: titleColor)),
            child: Text(
              amenities[i][1],
              style: ownerCardTextStyle,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            amenities[i][0],
            style: ownerCardSubtitleStyle,
          )
        ],
      ));
    }
    return GridView.count(
      crossAxisCount: 2,
      primary: false,
      shrinkWrap: true,
      childAspectRatio: 3.5,
      crossAxisSpacing: 10,
      mainAxisSpacing: 5,
      children: custom,
    );
  }
}
