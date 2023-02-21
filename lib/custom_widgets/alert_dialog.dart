import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/colors.dart';

void myAlertDialog2(
    context,
    String titleText,
    String contentText,
    String actionText1,
    String actionText2,
    Function()? onpressed1,
    Function()? onpressed2) async {
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
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: TextButton(
                  onPressed: onpressed1,
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: purple),
                  child: Text(
                    actionText1,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 17),
              child: TextButton(
                  onPressed: onpressed2,
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Colors.white),
                  child: Text(
                    actionText2,
                    style: const TextStyle(color: purple, fontSize: 17),
                  )),
            ),
          ]);
    },
  );
}
