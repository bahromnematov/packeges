import 'package:flutter/material.dart';
import 'package:packages/pages/home_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return HomePage(
                      url: "https://uzbekistan.travel/uz/o/Zomin-sanatoriysi/",
                      location:
                          "https://yandex.uz/maps/org/sanatoriy_zaamin/1878347999/?ll=68.468361%2C39.656282&z=11");
                }));
              },
              child: Text("Zomin")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return HomePage(
                      url: "https://uz.wikipedia.org/wiki/Orol_dengizi",
                      location: "https://uz.wikipedia.org/wiki/Orol_dengizi");
                }));
              },
              child: Text("Orol Dengiz")),
        ],
      ),
    );
  }
}
