import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:packages/utils/toast.dart';

import 'animet_text.dart';

class HomePage extends StatefulWidget {
  String url;
  String location;
   HomePage({super.key,required this.url,required this.location});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Toast_util.launchBorother(
                Uri.parse(widget.location));
          },
          child: Text('Open BottomSheet'),
        ),
      ),
    );
  }
}
