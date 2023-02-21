import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class PhysicalTourPage extends StatelessWidget {
  const PhysicalTourPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Request a Physical Tour",
          style: appBarTextStyle,
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
      body: SingleChildScrollView(
        child: Padding(
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
            ],
          ),
        ),
      ),
    );
  }
}
