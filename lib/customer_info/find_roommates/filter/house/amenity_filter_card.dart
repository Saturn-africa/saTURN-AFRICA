import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/providers/owner_home_provider.dart';

class CustomAmenitiesField extends StatefulWidget {
  const CustomAmenitiesField({required this.amenities, super.key});
  final String amenities;

  @override
  State<CustomAmenitiesField> createState() => _CustomAmenitiesFieldState();
}

class _CustomAmenitiesFieldState extends State<CustomAmenitiesField> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    OwnerHomeProvider owner = context.read<OwnerHomeProvider>();
    return InkWell(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
        isTapped
            ? owner.addFilterAmenities(widget.amenities)
            : owner.removeFilterAmenities(widget.amenities);
      },
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: isTapped ? amenityBg : white,
            border: Border.all(width: isTapped ? 0 : 0.5, color: lightBlack),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            widget.amenities,
            style: GoogleFonts.ubuntu(
                textStyle: const TextStyle(
                    fontSize: 16,
                    color: deepBlack,
                    fontWeight: FontWeight.w300)),
          ),
        ),
      ),
    );
  }
}

class AmenitiesGrid extends StatelessWidget {
  const AmenitiesGrid({required this.amenities, super.key});
  final List<String> amenities;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> amenityList = [];
    for (var i = 0; i < amenities.length; i++) {
      amenityList.add(CustomAmenitiesField(amenities: amenities[i]));
    }
    return GridView.count(
      crossAxisCount: 3,
      primary: false,
      shrinkWrap: true,
      childAspectRatio: size.width / (size.height * 0.2),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: amenityList,
    );
  }
}
