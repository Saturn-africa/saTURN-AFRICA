import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:saturn/helper_widgets/text_style.dart';

class AddImage extends StatefulWidget {
  const AddImage({
    required this.backgroundDisplay,
    required this.imgPickFn,
    super.key,
  });
  final Widget backgroundDisplay;
  final void Function(List<XFile> pickedImg) imgPickFn;

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  XFile? _pickedImg;
  final ImagePicker _picker = ImagePicker();
  List<XFile>? imageFileList = [];

  void _pickImg(ImageSource src) async {
    final pickedImgFile =
        await _picker.pickImage(source: src, imageQuality: 50);
    if (pickedImgFile != null) {
      setState(() {
        _pickedImg = XFile(pickedImgFile.path);
      });
      imageFileList!.add(_pickedImg!);
      widget.imgPickFn(imageFileList!);
    }
  }

  void _pickMultiImage() async {
    final List<XFile> pickMultiImage =
        await _picker.pickMultiImage(imageQuality: 50);
    if (pickMultiImage.isNotEmpty) {
      imageFileList!.addAll(pickMultiImage);
      widget.imgPickFn(imageFileList!);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // double width = MediaQuery.of(context).size.width * 0.3;
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Container(
        width: size.width < 200 ? 120 : 150,
        height: 150,
        decoration: BoxDecoration(
            color: white,
            border: Border.all(color: purple, width: 0.5),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(width: double.infinity, child: widget.backgroundDisplay),
            Positioned(
              left: size.width < 200 ? 15 : 20,
              top: 35,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => SelectOptions(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextButton.icon(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    _pickImg(ImageSource.camera);
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
                                    _pickMultiImage();
                                  },
                                  icon: Icon(Icons.image_rounded,
                                      color: Theme.of(context).primaryColor),
                                  label: const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Add images from Gallery',
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
                          ));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.add,
                      size: 40,
                      color: purple,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Add pictures...",
                      style: verifyOTPLabelStyle,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectOptions extends StatelessWidget {
  const SelectOptions({Key? key, @required this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        height: 130,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: const BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )),
        child: child,
      ),
    );
  }
}
