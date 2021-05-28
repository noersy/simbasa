import 'package:flutter/material.dart';
import 'package:simbasa/view/SplashScreenPage/SplashscreenPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'simbasa',
      home: SplashScreenPage(),
    );
  }
}
