import 'package:final_template/app_imports.dart';
import 'package:flutter/material.dart';

class CustomNavigator {
  // Pushes to the route specified
  static pushTo(BuildContext context, String strPageName,
      {var arguments}) async {
    Utils.printLogs("arguments $arguments");
    
    var result = await Navigator.of(context, rootNavigator: true)
        .pushNamed(strPageName, arguments: arguments);
    return result;
  }

  // Pop the top view
  static pop(BuildContext context, {var result}) {
    Navigator.pop(context, result);
  }

  // Pops to a particular view
  static popTo(BuildContext context, String strPageName) {
    Navigator.popAndPushNamed(context, strPageName);
  }

  static pushReplace(BuildContext context, String strPageName,
      {var arguments}) {
    Navigator.pushReplacementNamed(context, strPageName, arguments: arguments);
  }
}
