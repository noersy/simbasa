import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simbasa/model/HomePageModel.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/view/DasboardPage/DataListPage/NasabahPage/NasabahPage.dart';
import 'package:simbasa/view/DasboardPage/DataListPage/SetoranPage/SetoranPage.dart';
import 'package:simbasa/view/DasboardPage/component/chart/linecart.dart';
import 'package:simbasa/view/DasboardPage/component/component.dart';
import 'package:simbasa/view/component/appbar/appbar.dart';

class HomePage extends StatefulWidget {
  final HomePageModel homepage;

  const HomePage({@required this.homepage});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Scaffold(
        backgroundColor: PaletteColor.primarybg2,
        appBar: appbar(
          title: "Hallo, User!",
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                  left: 12,
                  right: 12,
                ),
                width: MediaQuery.of(context).size.width,
                child: ListTile(
                  leading: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Dana'),
                      Text('RP ' + widget.homepage.bank.jmlSimpanan.toString() + ',00'),
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bank ' + widget.homepage.bank.nmBanksampah),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 26, top: 24),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Text(
                          "Hari",
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                  color: Colors.deepOrangeAccent,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.deepOrangeAccent,
                            decorationThickness: 2,
                            decorationStyle: TextDecorationStyle.solid,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Text(
                          "Minggu",
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                  color: Colors.black87,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.transparent,
                            decorationThickness: 2,
                            decorationStyle: TextDecorationStyle.solid,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Text(
                          "Bulan",
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                  color: Colors.black87,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.transparent,
                            decorationThickness: 2,
                            decorationStyle: TextDecorationStyle.solid,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Text(
                          "Tahun",
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                  color: Colors.black87,
                                  offset: Offset(0, -5))
                            ],
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.transparent,
                            decorationThickness: 2,
                            decorationStyle: TextDecorationStyle.solid,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              LineChartSample2(),
              Container(
                padding: const EdgeInsets.only(
                    left: 18, right: 18, top: 8, bottom: 8),
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Report'),
                    Text('See All'),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      listTile(
                        subtitle: "Nasabah",
                        title: widget.homepage.total.toString(),
                        mini: "5+",
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => NasabahPage(data: widget.homepage,),
                            ),
                          );
                        },
                      ),
                      listTile(
                        subtitle: "Setoran",
                        title: widget.homepage.setoran.length.toString(),
                        mini: "mini",
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SetoranPage(data: widget.homepage,),
                            ),
                          );
                        },
                      ),
                      listTile(
                        subtitle: "Penarikan",
                        title: "12",
                        mini: "mini",
                      ),
                      listTile(
                        subtitle: "Penjualan",
                        title: "12",
                        mini: "mini",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
