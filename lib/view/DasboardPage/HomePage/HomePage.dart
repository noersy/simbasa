import 'package:flutter/material.dart';
import 'package:simbasa/view/DasboardPage/HomePage/component/chart/linecart.dart';
import 'package:simbasa/view/component/appbar/appbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Scaffold(
        appBar: appbar(title: "HomePage"),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top : 8, bottom: 8, left: 12, right: 12 ),
                padding: const EdgeInsets.all(22),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text('test'),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                height: MediaQuery.of(context).size.height / 3 - 20,
                width: MediaQuery.of(context).size.width,
                child: LineChartSample2(),
              ),
              Container(
                child: Text('test'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
