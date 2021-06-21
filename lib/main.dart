import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simbasa/provider/HomaPageProvider.dart';
import 'package:simbasa/provider/SetoranProvider.dart';
import 'package:simbasa/view/SplashScreenPage/SplashscreenPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HomePageProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SetoranProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'simbasa',
        home: SplashScreenPage(),
      ),
    );
  }
}
