import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomNavigationBar(
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
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          bottom: 12,
        ),
        child: Container(
          alignment: Alignment.bottomCenter,
          margin: const EdgeInsets.only(left: 30, bottom: 20),
          child: RawMaterialButton(
            fillColor: Colors.amber,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 2,
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Text(
                "+",
                style: TypographyStyle.title,
              ),
            ),
          ),
        ),
      ),
      body: _children[_bottomNavBarSelectedIndex],
    );
  }
}
