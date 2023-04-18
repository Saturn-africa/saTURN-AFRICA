import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CustomDetailHeader extends StatelessWidget {
  const CustomDetailHeader({
    required this.title,
    Key? key,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: purple,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(title, style: detailTitleStyle.copyWith(color: white)));
  }
}

class ColumnCustomWidget extends StatelessWidget {
  const ColumnCustomWidget({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: size.width * 0.46,
          child: AutoSizeText(title,
              maxLines: 1,
              style: ownerCardSubtitleStyle.copyWith(color: titleColor)),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: size.width * 0.46,
          child: AutoSizeText(
            text,
            overflow: TextOverflow.clip,
            maxLines: 1,
            style: ownerCardSubtitleStyle.copyWith(color: deepBlack),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class AmenitiesCustom extends StatelessWidget {
  const AmenitiesCustom({
    required this.amenities,
    super.key,
  });
  final List<String> amenities;

  @override
  Widget build(BuildContext context) {
    List<Widget> custom = [];
    for (var i = 0; i < amenities.length; i++) {
      custom.add(Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: white,
                border: Border.all(color: titleColor)),
          ),
          const SizedBox(width: 15),
          Text(
            amenities[i],
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
      mainAxisSpacing: 10,
      children: custom,
    );
  }
}

class ColumnCustomOwner extends StatelessWidget {
  const ColumnCustomOwner({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String title;
  final dynamic text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: size.width * 0.43,
          child: AutoSizeText(title,
              maxLines: 1,
              style: ownerCardSubtitleStyle.copyWith(color: titleColor)),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: size.width * 0.43,
          child: AutoSizeText(
            text.toString(),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: ownerCardSubtitleStyle.copyWith(color: deepBlack),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
