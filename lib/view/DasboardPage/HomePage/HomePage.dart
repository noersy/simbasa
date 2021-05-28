import 'package:flutter/material.dart';
import 'package:simbasa/theme/TypographyStyle.dart';
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
                margin: const EdgeInsets.only(
                    top: 8, bottom: 8, left: 12, right: 12),
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
                padding: const EdgeInsets.only(
                    left: 18, right: 18, top: 8, bottom: 8),
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
                height: (MediaQuery.of(context).size.height / 2.88) + 0.98,
                padding: const EdgeInsets.all(8),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    _listTile(subtitle: "test", title: "text", mini: "mini"),
                    _listTile(subtitle: "test", title: "text", mini: "mini"),
                    _listTile(subtitle: "test", title: "text", mini: "mini"),
                    _listTile(subtitle: "test", title: "text", mini: "mini"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

ListTile _listTile({String title, String subtitle, String mini}) {
  return ListTile(
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          subtitle,
          style: TypographyStyle.paragraph,
        ),
        Text(
          title,
          style: TypographyStyle.subtitle1,
        ),
      ],
    ),
    subtitle: Text(mini, style: TypographyStyle.mini),
    leading: Padding(
      padding: const EdgeInsets.only(left: 8, top: 4),
      child: Icon(
        Icons.people,
        size: 42,
      ),
    ),
  );
}
