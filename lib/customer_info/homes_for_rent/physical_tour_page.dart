import 'package:flutter/material.dart';
import 'package:saturn/custom_widgets/custom_card_button.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class PhysicalTourPage extends StatelessWidget {
  const PhysicalTourPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List selectedDates = [];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Request a Physical Tour",
          style: appBarTextStyle.copyWith(
              fontSize: 20, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: lightBlack,
            ),
            onPressed: () {
              Navigator.pop(context, true);
            }),
        backgroundColor: Colors.white,
        elevation: 0.1,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.04, vertical: size.height * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let us know when you are available, so we can arrange for you to checkout the property",
              style: regTextStyle,
            ),
            const SizedBox(height: 20),
            Text(
              "Select three dates you are available.",
              style: regTextStyle.copyWith(color: purple),
            ),
            const SizedBox(height: 30),
            SfDateRangePicker(
              selectionMode: DateRangePickerSelectionMode.multiple,
              showTodayButton: true,
              monthViewSettings: const DateRangePickerMonthViewSettings(
                  firstDayOfWeek: 1,
                  showWeekNumber: true,
                  weekNumberStyle: DateRangePickerWeekNumberStyle(
                      backgroundColor: cardBorderColor),
                  weekendDays: <int>[DateTime.saturday, DateTime.sunday]),
              onSelectionChanged: (args) {
                selectedDates.add(args);
              },
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomCardButtonWidget(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    // builder: (_) => const "()));
                  },
                  child: Text(
                    "Pay #10000 for the tour",
                    style: buttonStyle,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
