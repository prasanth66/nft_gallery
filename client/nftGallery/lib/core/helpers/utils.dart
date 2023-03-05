import 'package:final_template/app_imports.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Utils {
  static EdgeInsets getStatusBarSize(BuildContext context) {
    return MediaQuery.of(context).padding;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static Brightness getCurrentAppTheme(context) {
    return SchedulerBinding.instance.window.platformBrightness;
  }

  static getAppTextTheme(context) {
    return Theme.of(context).textTheme;
  }

  static void dismissKeypad(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  static String getAppName() {
    return FlavorTypes.appTitle;
  }

  // Print only in debug builds
  static printLogs(dynamic strData) {
    if (kDebugMode) {
      print(strData);
    }
  }

  //number text field
  static bool phoneNumberValidate(String phoneNumber, int length) {
    return phoneNumber.length == length;
  }

  static String getLocalizedString(BuildContext context, String strKey) {
    return AppLocalizations.of(context)!.translate(strKey)!;
  }
}
