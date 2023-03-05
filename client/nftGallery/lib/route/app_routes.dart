import 'package:final_template/app_entry.dart';
import 'package:final_template/features/login/presentation/pages/login_page.dart';
import 'package:final_template/route/app_pages.dart';
import 'package:flutter/material.dart';


Route<dynamic> controller(RouteSettings settings) {
  //use settings.arguments to pass arguments in pages
  switch (settings.name) {
    case AppPages.PAGE_APP_ENTRY:
      return MaterialPageRoute(builder: (context) => const AppEntryWidget());
    case AppPages.PAGE_LOGIN:
      return MaterialPageRoute(
        builder: (context) => const LoginPage(),
      );
    default:
      throw ('This route name does not exit');
  }
}
