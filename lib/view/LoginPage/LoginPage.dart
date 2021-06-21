import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simbasa/config/GlobalKeySharedPref.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/theme/TypographyStyle.dart';
import 'package:simbasa/view/DasboardPage/DashboardPage.dart';
import 'package:simbasa/view/LoginPage/component/AuthLogin.dart';
import 'package:simbasa/view/LoginPage/component/ButtonLogin.dart';
import 'package:simbasa/view/LoginPage/component/MainForms.dart';
import 'package:simbasa/view/component/Indicator/IndicatorLoad.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _nimController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    Widget loadingIndicator = isLoading
        ? Container(
            color: Colors.black26,
            width: double.infinity,
            height: double.infinity,
            child: indicatorLoad(),
          )
        : Container();

    return Scaffold(
      backgroundColor: PaletteColor.primarybg,
      body: Stack(
        children: [
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/simbasaLogo2.png',
                          width: 230,
                        ),
                      ),
                      MainForms(
                        nimFilter: _nimController,
                        passwordFilter: _passwordController,
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        padding: EdgeInsets.only(top: 16),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Forgot password?",
                            style: TypographyStyle.caption2.merge(
                              TextStyle(
                                color: PaletteColor.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                      ButtonLogin(
                        onPressedFunction,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            child: loadingIndicator,
            alignment: FractionalOffset.center,
          ),
        ],
      ),
    );
  }

  savePrefFungsion(String nama) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(GlobalKeySharedPref.keyPrefIsLogin, true);
    prefs.setString(GlobalKeySharedPref.keyPrefUsername, _nimController.text);
  }

  void onPressedFunction() async {
    setState(() {
      isLoading = true;
    });

    bool isLogin = await AuthLogin.auth(username: _nimController.text, password: _passwordController.text);

    setState(() {
      isLoading = false;
    });

    if (isLogin) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => DashboardPage(
            username: " ", //element["UserName"],
          ),
        ),
      );
      //savePrefFungsion(element["FullName"]);
    }
    //});

    if (!isLogin)
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text("Username or Password is Wrong"),
          );
        },
      );
  }
}
