import 'package:flutter/material.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/view/DasboardPage/component/chart/linecart.dart';
import 'package:simbasa/view/DasboardPage/component/component.dart';
import 'package:simbasa/view/component/appbar/appbar.dart';

class NasabahPage extends StatefulWidget {
  @override
  _NasabahPageState createState() => _NasabahPageState();
}

class _NasabahPageState extends State<NasabahPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletteColor.primarybg2,
      appBar: appbar(title: "title"),
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
                    Text('Text'),
                    Text('Text'),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('test'),
                    Text('Text'),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              height: MediaQuery.of(context).size.height / 3 - 20,
              width: MediaQuery.of(context).size.width,
              child: LineChartSample2(),
            ),
            Container(
              padding:
                  const EdgeInsets.only(left: 18, right: 18, top: 8, bottom: 8),
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Chart'),
                  Text('See All'),
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.only(left: 18, right: 18, top: 8, bottom: 8),
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.check_box_outline_blank_outlined),
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
                    listTile2(
                      subtitle: "test",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
