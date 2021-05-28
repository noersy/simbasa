import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simbasa/config/GlobalKeySharedPref.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/view/DasboardPage/DashboardPage.dart';
import 'package:simbasa/view/LoginPage/LoginPage.dart';
import 'package:simbasa/view/component/Indicator/IndicatorLoad.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  navigationPage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isHasLogined =
        prefs.getBool(GlobalKeySharedPref.keyPrefIsLogin) ?? false;
    String username = prefs.getString(GlobalKeySharedPref.keyPrefUsername);
    print(username);

    if (isHasLogined) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => DashboardPage(username: username),
        ),
      );
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    }

    print(isHasLogined);
    return isHasLogined;
  }


  @override
  void initState() {
    //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    startTime();
    super.initState();
  }

  // @override
  // void dispose() {
  //   SystemChrome.setEnabledSystemUIOverlays(
  //       [SystemUiOverlay.top, SystemUiOverlay.bottom]);
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletteColor.primarybg,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/simbasaLogo.png",
              height: 130,
            ),
          ),
          indicatorLoad(),
        ],
      ),
    );
  }
}
