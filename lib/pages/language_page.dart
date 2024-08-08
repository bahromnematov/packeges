import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:packages/service/pref_service.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  String email="";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      SharedPrefService.getName().then((value) => {
        email=value ??""
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(email),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              'text'.tr(),
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              'text2'.tr(),
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  context.setLocale(Locale('uz', 'UZ'));
                },
                child: Container(
                  margin: EdgeInsets.all(8),
                  height: 66,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      "Uzbek",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  context.setLocale(Locale('ru', 'RU'));
                },
                child: Container(
                  margin: EdgeInsets.all(8),
                  height: 66,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      "Russia",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  context.setLocale(Locale('en', 'US'));
                },
                child: Container(
                  margin: EdgeInsets.all(8),
                  height: 66,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      "English",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )),
            ],
          )
        ],
      ),
    );
  }
}
