import 'dart:convert';
import 'package:saturn/service/models/device_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DevicePreference {
  static Future getDeviceDetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var deviceDetails = prefs.getString("device");
    // print(deviceDetails);
    return jsonDecode(deviceDetails ?? "");
  }

  static Future<bool> saveDeviceDetails(DeviceDetailsModel device) async {
    await setDeviceId(device.id ?? "");
    final device_ = json.encode(device.toJson());
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString("device", device_);
  }

  static Future<bool> setDeviceId(String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString("id", id);
  }

  static getDeviceId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var deviceId = prefs.getString("id");
    // print(deviceId);
    return deviceId;
  }

  // Future getIOSDetails() async {
  //   var data = await DeviceInfoPlugin().iosInfo;
  //   return {
  //     "name": data.name,
  //     "deviceName": "IOS",
  //     "device": data.model,
  //     "version": data.utsname.version,
  //     "release": data.utsname.release,
  //     "id": data.identifierForVendor,
  //     "systemVersion": data.systemVersion,
  //   };
  // }

  //   final setWeb = pref_.setString("web", webData);
  //   return setWeb;
  // }

  // Future getDeviceLocation() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final deviceLocation = prefs.getString("location");
  //   // print("GETTING LOCATION.....$deviceLocation");
  //   return jsonDecode(deviceLocation!);
  // }

  // static Future<bool> setUserLocation(location) async {
  //   SharedPreferences pref_ = await SharedPreferences.getInstance();
  //   final location_ = jsonEncode(location);
  //   final locationSet = pref_.setString("location", location_);
  //   return locationSet;
  // }
}
