import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:saturn/custom_widgets/image_picker.dart';
import 'package:saturn/helper_widgets/colors.dart';

Future showModal(context, Function(ImageSource src) pickImg) {
  return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
            margin: const EdgeInsets.only(bottom: 50),
            child: SelectOptions(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                      pickImg(ImageSource.camera);
                    },
                    icon: Icon(Icons.photo_camera_outlined,
                        color: Theme.of(context).primaryColor),
                    label: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Add image from Camera',
                        style: TextStyle(
                          color: lightBlack,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                      pickImg(ImageSource.gallery);
                    },
                    icon: Icon(Icons.image_rounded,
                        color: Theme.of(context).primaryColor),
                    label: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Add image from Gallery',
                        style: TextStyle(
                          color: lightBlack,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ));
}
