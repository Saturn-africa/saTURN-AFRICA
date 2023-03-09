import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';
import 'package:saturn/service/apis/app_exception.dart';
import 'package:saturn/service/models/device_details.dart';
import 'package:saturn/service/storage/shared_preferences/device_info.dart';

Future getDeviceDetails(context) async {
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  try {
    if (Platform.isAndroid) {
      AndroidDeviceInfo build = await deviceInfoPlugin.androidInfo;
      // print(build.device);
      DeviceDetailsModel android = DeviceDetailsModel(
        model: build.model.toString(),
        version: build.version.release.toString(),
        id: build.id.toString(),
        deviceName: "ANDROID",
        name: build.device,
      );
      // Map<String, String> android = {
      //   "model": build.model.toString(),
      //   "version": build.version.release.toString(),
      //   "id": build.id.toString(),
      //   "deviceName": "ANDROID".toString(),
      //   "name": build.manufacturer.toString()
      // };
      await DevicePreference.saveDeviceDetails(android);
    } else if (Platform.isIOS) {
      var data = await deviceInfoPlugin.iosInfo;
      DeviceDetailsModel ios = DeviceDetailsModel(
        name: data.name.toString(),
        deviceName: "iOS",
        model: data.model.toString(),
        version: data.utsname.version.toString(),
        id: data.identifierForVendor.toString(),
      );
      // Map<String, dynamic> ios = {
      //   "name": data.name.toString(),
      //   "deviceName": "IOS",
      //   "model": data.model.toString(),
      //   "version": data.utsname.version.toString(),
      //   "id": data.identifierForVendor.toString(),
      // };
      await DevicePreference.saveDeviceDetails(ios);
    } else {
      WebBrowserInfo webBrowserInfo = await deviceInfoPlugin.webBrowserInfo;
      DeviceDetailsModel webInfo = DeviceDetailsModel(
        deviceName: webBrowserInfo.platform ?? "",
        model: webBrowserInfo.userAgent ?? "",
        version: webBrowserInfo.appVersion ?? "",
        name: webBrowserInfo.browserName.name,
        id: webBrowserInfo.product ?? "",
      );
      // Map<String, String> webInfo = {
      //   "deviceName": webBrowserInfo.platform!,
      //   "model": webBrowserInfo.userAgent!,
      //   "version": webBrowserInfo.appVersion!,
      //   "name": webBrowserInfo.browserName.name,
      //   "id": webBrowserInfo.product!,
      // };
      await DevicePreference.saveDeviceDetails(webInfo);
    }
  } on PlatformException {
    // showSnack(context, "02", "Failed to get Device ID");
    throw FetchDataException("Failed to get Device ID");
  }
}
