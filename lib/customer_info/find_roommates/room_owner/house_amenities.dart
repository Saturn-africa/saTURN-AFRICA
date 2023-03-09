import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/providers/customer_info_provider.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_white_button.dart';
import 'package:saturn/customer_info/find_roommates/room_owner/additional_info.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/snack_bar.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class HouseAmenitiesPage extends StatefulWidget {
  const HouseAmenitiesPage({
    super.key,
  });

  @override
  State<HouseAmenitiesPage> createState() => _HouseAmenitiesPageState();
}

class _HouseAmenitiesPageState extends State<HouseAmenitiesPage> {
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      context.read<CustomerInfoProvider>().amenities = [];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("House Amenities", style: appBarTextStyle),
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context, true);
            }),
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.02, horizontal: size.width * 0.04),
          child: Column(
            children: [
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Row(
                  children: const [
                    CustomCardButton(text: 'Fenced'),
                    CustomCardButton(text: 'Gateman'),
                    CustomCardButton(text: 'light'),
                    CustomCardButton(text: 'Space'),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Row(
                  children: const [
                    CustomCardButton(text: 'Fenced'),
                    CustomCardButton(text: 'Gateman'),
                    CustomCardButton(text: 'light'),
                    CustomCardButton(text: 'Space'),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Row(
                  children: const [
                    CustomCardButton(text: 'Fenced'),
                    CustomCardButton(text: 'Gateman'),
                    CustomCardButton(text: 'light'),
                    CustomCardButton(text: 'Space'),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Row(
                  children: const [
                    CustomCardButton(text: 'Fenced'),
                    CustomCardButton(text: 'Gateman'),
                    CustomCardButton(text: 'light'),
                    CustomCardButton(text: 'Space'),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Row(
                  children: const [
                    CustomCardButton(text: 'Fenced'),
                    CustomCardButton(text: 'Gateman'),
                    CustomCardButton(text: 'light'),
                    CustomCardButton(text: 'Space'),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Row(
                  children: const [
                    CustomCardButton(text: 'Fenjhjhkced'),
                    CustomCardButton(text: 'Gateman'),
                    CustomCardButton(text: 'light'),
                    CustomCardButton(text: 'Space'),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.2,
              ),
              CustomWhiteButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const OwnerAdditionalInformationPage()));
                  },
                  child: Text(
                    "SKIP",
                    style: buttonStyle.copyWith(color: deepBlack),
                  )),
              const SizedBox(height: 10),
              CustomButtonWidget(
                  onPressed: () {
                    if (context
                        .read<CustomerInfoProvider>()
                        .amenities
                        .isEmpty) {
                      showSnack(context, "02", "Please select house amenities");
                    } else {
                      context.read<CustomerInfoProvider>().houseAmenities();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const OwnerAdditionalInformationPage()));
                    }
                  },
                  text: Text(
                    "NEXT",
                    style: buttonStyle,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCardButton extends StatefulWidget {
  const CustomCardButton({super.key, required this.text});
  final String text;

  @override
  State<CustomCardButton> createState() => _CustomCardButtonState();
}

class _CustomCardButtonState extends State<CustomCardButton> {
  var ispresscol = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: TextButton(
          onPressed: () {
            setState(() {
              ispresscol = !ispresscol;
            });
            if (!ispresscol) {
              context.read<CustomerInfoProvider>().addAmenities(widget.text);
            } else {
              context.read<CustomerInfoProvider>().removeAmenities(widget.text);
            }
          },
          child: Container(
            constraints: const BoxConstraints(maxHeight: double.infinity),
            decoration: BoxDecoration(
                color: ispresscol
                    ? const Color.fromRGBO(255, 255, 255, 0.4)
                    : amenityBg,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border:
                    Border.all(color: const Color.fromRGBO(51, 51, 51, 51))),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.text,
                    softWrap: true,
                    style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          color: ispresscol
                              ? const Color.fromRGBO(51, 51, 51, 1)
                              : white,
                          fontWeight: FontWeight.w400),
                    )),
              ),
            ),
          )),
    );
  }
}
