import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/config/routing/routing.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/progress_bar.dart';
import 'package:saturn/providers/auth/login_provider.dart';

void successDialogs(context, String titleText, String contentText,
    {bool doublePage = false}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
          title: Center(
            child: Text(
              titleText,
              style: const TextStyle(
                  color: black, fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          content: Text(
            contentText,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, color: purple),
          ),
          actions: [
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () {
                    RoutingService.popRouting(context);
                    RoutingService.popRouting(context);
                    doublePage ? RoutingService.popRouting(context) : null;
                  },
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: purple),
                  child: Provider.of<LoginProvider>(context).logoutClicked
                      ? loadingIndicator()
                      : const Text(
                          "OK",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
            ),
          ]);
    },
  );
}
