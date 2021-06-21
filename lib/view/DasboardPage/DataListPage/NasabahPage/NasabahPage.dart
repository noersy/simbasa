import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simbasa/model/HomePageModel.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/theme/TypographyStyle.dart';
import 'package:simbasa/view/DasboardPage/DataListPage/NasabahPage/EditPage/EditPage.dart';
import 'package:simbasa/view/DasboardPage/component/chart/linecart.dart';
import 'package:simbasa/view/DasboardPage/component/component.dart';
import 'package:simbasa/view/component/appbar/appbar.dart';

class NasabahPage extends StatefulWidget {
  final HomePageModel data;

  const NasabahPage({@required this.data});

  @override
  _NasabahPageState createState() => _NasabahPageState();
}

class _NasabahPageState extends State<NasabahPage> {
  bool isChe = false;
  bool isChe2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletteColor.primarybg2,
      appBar: appbar(title: "Nasabah"),
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
                    Text('Nasabah'),
                    Text('Baru'),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('234'),
                    Text(
                      '+1,6%',
                      style: TextStyle(color: PaletteColor.green),
                    ),
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
                            Shadow(color: Colors.black87, offset: Offset(0, -5))
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
                            Shadow(color: Colors.black87, offset: Offset(0, -5))
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
                            Shadow(color: Colors.black87, offset: Offset(0, -5))
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
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 8),
                    child: Text("#"),
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: SizedBox(width: 80, child: Text('Name'))),
                  SizedBox(width: 100, child: Text('Tabungan')),
                  SizedBox(width: 100, child: Text('Status')),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: widget.data.total,
                  itemBuilder: (BuildContext context, int index) {
                    return listTile2(
                      subtitle: widget.data.data[index].namaNasabah,
                      amount: widget.data.data[index].saldo.toString(),
                      date: DateFormat('dd-MM-yyyy').format(widget.data.data[index].updatedAt),
                      index: index+1,
                      onLongPressed: showEdit,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showEdit() async {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => EditPage(ctx: context)),
    );
  }
}
