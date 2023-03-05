import 'package:final_template/app_imports.dart';
import 'package:final_template/route/app_pages.dart';
import 'package:flutter/material.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashWidget> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Utils.printLogs('Splash for few seconds !!!');
      CustomNavigator.pushReplace(context, AppPages.PAGE_LOGIN);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String strTitle = "Splash Screen " + FlavorTypes.appTitle;

    return Scaffold(
        backgroundColor: AppColors.SPLASH_BG,
        body: Center(
          child: Text(
            strTitle,
            style: const TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ));
  }
}
