import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:saturn/helper_widgets/progress_bar.dart';
import 'package:saturn/helper_widgets/response_snack.dart';
import 'package:saturn/models/account/request_model/house_info.dart';
import 'package:saturn/providers/custom_provider/house_data_provider.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class HouseAmenitiesPage extends StatefulWidget {
  const HouseAmenitiesPage({super.key, required this.data});
  final HouseInfoRequest data;

  @override
  State<HouseAmenitiesPage> createState() => _HouseAmenitiesPageState();
}

class _HouseAmenitiesPageState extends State<HouseAmenitiesPage> {
  @override
  void initState() {
    Provider.of<HouseDataProvider>(context, listen: false).clearData();
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
        elevation: 0,
      ),
      body: Consumer<HouseDataProvider>(
        builder: (_, data, __) => LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.02,
                      horizontal: size.width * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children:
                            List.generate(data.amenityList.length, (index) {
                          if (data.selectedBool.length <
                              data.amenityList.length) {
                            data.selectedBool.add(false);
                          }
                          return Padding(
                            padding:
                                const EdgeInsets.only(right: 10, bottom: 10),
                            child: CustomCardButton(
                              text: data.amenityList[index],
                              onPressed: () {
                                data.addSelectedBool(index);
                                if (data.selectedBool[index]) {
                                  data.addAmenities(data.amenityList[index]);
                                } else {
                                  data.removeAmenities(data.amenityList[index]);
                                }
                              },
                              isPressed: data.selectedBool[index],
                            ),
                          );
                        }),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Spacer(),
                      CustomButtonWidget(
                          onPressed: () async {
                            if (data.isSaved) {
                              data.onSaveClick();
                              return;
                            }
                            if (data.amenities.isEmpty) {
                              showSnack(context, "02",
                                  "Please select house amenities");
                            } else {
                              data.onSaveClick();
                              widget.data.homeAmenities = data.amenities;
                              await data.saveOwnerHouseInfo(
                                  context, widget.data);
                            }
                          },
                          text: data.isSaved
                              ? loadingIndicator()
                              : Text(
                                  "SAVE",
                                  style: buttonStyle,
                                ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCardButton extends StatelessWidget {
  const CustomCardButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.isPressed = false});
  final String text;
  final VoidCallback onPressed;
  final bool isPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
          constraints: const BoxConstraints(maxHeight: double.infinity),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
              color: isPressed ? amenityBg : white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: titleColor)),
          child: Text(text,
              softWrap: true,
              style: GoogleFonts.ubuntu(
                textStyle: const TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    color: black,
                    fontWeight: FontWeight.w300),
              )),
        ));
  }
}
