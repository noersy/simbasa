import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/theme/TypographyStyle.dart';
import 'package:simbasa/view/DasboardPage/HomePage/HomePage.dart';
import 'package:simbasa/view/DasboardPage/HomePage/component/chart/linecart.dart';

class DashboardPage extends StatefulWidget {
  final String username;

  const DashboardPage({@required this.username});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _bottomNavBarSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [
      HomePage(),
      Container(),
    ];

    return Scaffold(
        bottomNavigationBar: Stack(
          children: [
            Container(
              height: 80,
              alignment: Alignment.bottomCenter,
              child: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    title: Text("Profile"),
                  ),
                ],
                currentIndex: _bottomNavBarSelectedIndex,
                selectedItemColor: Colors.green,
                onTap: _onItemTapped,
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(
                bottom: 30,
              ),
              child: Card(
                color: Colors.amber,
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 70,
                  child: Text(
                    "+",
                    style: TypographyStyle.button1,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: _children[_bottomNavBarSelectedIndex]);
  }

  _onItemTapped(index) {
    if (index != _bottomNavBarSelectedIndex) {
      if (index != 2) {
        setState(() {
          _bottomNavBarSelectedIndex = index;
        });
      }
    }
  }
}
