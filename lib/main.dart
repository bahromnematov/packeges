import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:packages/pages/language_page.dart';
import 'package:packages/pages/shared_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('ru', 'RU'),
          Locale('uz', 'UZ')
        ],
        path: 'assets/translations',
        fallbackLocale: Locale('uz', 'UZ'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: SharedPage());
  }
}
