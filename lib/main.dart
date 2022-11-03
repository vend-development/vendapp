
import 'package:application3/presentation/sign_in_blank_form_screen/sign_in_blank_form_screen.dart';
import 'package:application3/presentation/sign_up_blank_form_screen/sign_up_blank_form_screen.dart';
import 'package:application3/presentation/walkthrough_one_screen/walkthrough_one_screen.dart';
import 'package:application3/presentation/wallet_registration/wallet_registration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/app_export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: AppLocalization(),
      locale: Get.deviceLocale, //for setting localization strings
      fallbackLocale: Locale('en', 'US'),
      title: 'Vend',
      // initialBinding: InitialBindings(),
      // initialRoute: AppRoutes.individualProductPageScreen,
      // getPages: AppRoutes.pages,
      home:SignInBlankFormScreen(),
    );
  }
}
