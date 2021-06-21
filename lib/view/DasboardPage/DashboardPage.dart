import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:simbasa/model/HomePageModel.dart';
import 'package:simbasa/provider/HomaPageProvider.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/theme/TypographyStyle.dart';
import 'package:simbasa/view/DasboardPage/HomePage/HomePage.dart';
import 'package:simbasa/view/DasboardPage/TransactionsPage/AddNasabahPage.dart';
import 'package:simbasa/view/DasboardPage/TransactionsPage/PenarikanPage.dart';
import 'package:simbasa/view/DasboardPage/TransactionsPage/PenjualanPage.dart';
import 'package:simbasa/view/DasboardPage/TransactionsPage/PenyetoranPage.dart';
import 'package:simbasa/view/DasboardPage/UserBottomSheetFialog/UserBottomSheetDialog.dart';
import 'package:simbasa/view/DasboardPage/component/component.dart';

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
      FutureBuilder<HomePageModel>(
        future: Provider.of<HomePageProvider>(context, listen: false).getHomePageData(),
        builder: (BuildContext context, snapshot) {
          return HomePage(
            homepage: snapshot.data,
          );
        },
      ),
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
                padding: const EdgeInsets.all(8.0),
                color: PaletteColor.grey.withOpacity(0.3),
                child: Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      card(
                          title: "Penjualan",
                          icon: Icon(Icons.description),
                          onPressed: () {
                            print("a");
                            setState(() {
                              _addButton = false;
                            });
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => PenjualanPage(),
                              ),
                            );
                          }),
                      card(
                        title: "Penyetoran",
                        icon: Icon(Icons.movie),
                        onPressed: () {
                          print("a");
                          setState(() {
                            _addButton = false;
                          });
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PenyetoranPage(),
                            ),
                          );
                        },
                      ),
                      card(
                        title: "Penarikan",
                        icon: Icon(Icons.source),
                        onPressed: () {
                          print("a");
                          setState(() {
                            _addButton = false;
                          });
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PenarikanPage(),
                            ),
                          );
                        },
                      ),
                      card(
                        title: "Add Nasabah",
                        icon: Icon(Icons.link),
                        onPressed: () {
                          setState(() {
                            _addButton = false;
                          });
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => AddNasabahPage(),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 30,
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

  void _onPressed(index) {
    if (index == 0) print("Home");
    if (index == 1)
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) => UserBottomSheetDialog(ctx: context),
      );
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
