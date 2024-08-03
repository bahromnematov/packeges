import 'package:flutter/material.dart';
import 'package:packages/pages/adwensd_drawer.dart';
import 'package:packages/pages/home_page.dart';
import 'package:packages/pages/second_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fancy Dialog Example',
        theme: ThemeData.light(),
        initialRoute: '/',
        home: SecondPage());
  }
}
