import 'package:final_template/app_entry.dart';
import 'package:final_template/route/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'app_imports.dart';
import 'package:final_template/route/app_routes.dart' as route;

import 'core/managers/general/app_manager.dart';

void main() async {
  FlavorTypes.appFlavor = Flavor.DEV;
  WidgetsFlutterBinding.ensureInitialized();

  await AppManager.initialise();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Utils.getAppName(),
      themeMode:
          ThemeMode.system, // To pick the dark/ligt from the phone settings
      theme: AppThemes.ligtTheme,
      darkTheme: AppThemes.darkTheme,
      // List all the app supported locales here
      supportedLocales: const [
        Locale('en', ''),
      ],
      // These delegates make sure that the localization for the proper language is loaded
      localizationsDelegates: const [
        // Class that loads the transalations from JSON file
        AppLocalizations.delegate,
        // Built in localizations of basic text for Material widgets
        GlobalMaterialLocalizations.delegate,
        // Built in localizations for text direction - LTR/RTL
        GlobalWidgetsLocalizations.delegate
      ],
      // Returns a locale which will be used by the app
      localeListResolutionCallback: (locale, supportedLocales) {
        return supportedLocales.first;
      },
      home: const AppEntryWidget(),
      initialRoute: AppPages.PAGE_APP_ENTRY,
      onGenerateRoute: route.controller,
    );
  }
}
