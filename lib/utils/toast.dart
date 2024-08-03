import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

class Toast_util {
  static showToast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static final Logger logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
      dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
    ),
  );

  // static Future<Map<String, String>> deviceParams() async {
  //   Map<String, String> params = {};
  //   String fmcToken = "";
  //
  //   if (Platform.isAndroid) {
  //     var getDeviceId = await PlatformDeviceId.getDeviceId;
  //     params.addAll({
  //       'deviceId': getDeviceId!,
  //       'deviceType': "Android",
  //       'device_token': fmcToken,
  //     });
  //   } else if (Platform.isIOS) {
  //     var getDeviceId = await PlatformDeviceId.getDeviceId;
  //     params.addAll({
  //       'deviceId': getDeviceId!,
  //       'deviceType': "IOS",
  //       'device_token': fmcToken,
  //     });
  //   }
  //
  //   return params;
  // }

  static Future<void> makePhoneNumber(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    await launchUrl(launchUri);
  }

  static Future<void> launchBorother(Uri url)async{
    if(await launchUrl(url,mode: LaunchMode.externalApplication));
  }
}
