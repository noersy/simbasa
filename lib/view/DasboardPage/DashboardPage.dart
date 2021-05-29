import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/theme/TypographyStyle.dart';
import 'package:simbasa/view/DasboardPage/HomePage/HomePage.dart';
import 'package:simbasa/view/DasboardPage/HomePage/component/chart/linecart.dart';
import 'package:simbasa/view/ProfilePage/ProfilePage.dart';

class DashboardPage extends StatefulWidget {
  final String username;

  const DashboardPage({@required this.username});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _bottomNavBarSelectedIndex = 0;
  bool _addButton = false;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [
      HomePage(),
      Container(),
    ];
    return Scaffold(
      backgroundColor: PaletteColor.primarybg2,
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
        onTap: _onPressed,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          bottom: 12,
        ),
        child: Container(
          alignment: Alignment.bottomCenter,
          margin: const EdgeInsets.only(left: 31, bottom: 20),
          child: RawMaterialButton(
            onPressed: _onPressedAdd,
            fillColor: Colors.amber,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: Text(
                "+",
                style: TypographyStyle.title,
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          _children[_bottomNavBarSelectedIndex],
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 150),
            child: (_addButton)
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        _addButton = false;
                      });
                    },
                    child: Container(
                      color: PaletteColor.grey.withOpacity(0.3),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _card(
                                    title: "test",
                                    icon: Icon(Icons.description),
                                    onPressed: () {
                                      print("a");
                                      setState(() {
                                        _addButton = false;
                                      });
                                    }),
                                _card(
                                  title: "test",
                                  icon: Icon(Icons.movie),
                                  onPressed: () {
                                    print("a");
                                    setState(() {
                                      _addButton = false;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _card(
                                  title: "test",
                                  icon: Icon(Icons.link),
                                  onPressed: () {
                                    print("a");
                                    setState(() {
                                      _addButton = false;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 90,
                                ),
                                _card(
                                  title: "test",
                                  icon: Icon(Icons.source),
                                  onPressed: () {
                                    print("a");
                                    setState(() {
                                      _addButton = false;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : SizedBox.shrink(),
          ),
        ],
      ),
    );
  }

  InkWell _card({String title, Icon icon, Function onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: 120,
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Container(
                child: Container(
                  width: 40,
                  height: 40,
                  child: icon,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(title),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onPressed(index) {
    if (index == 0) print("Home");
    if (index == 1)
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProfilePage(),
      ));
  }

  void _onPressedAdd() {
    setState(() {
      if (!_addButton)
        _addButton = true;
      else
        _addButton = false;
    });
    print(_addButton);

    // showDialog(
    //   context: context,
    //   builder: (context) => AlertDialog(
    //
    //   ),
    // );
  }
}
