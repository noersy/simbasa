import 'package:flutter/material.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/theme/TypographyStyle.dart';

InkWell card({String title, Icon icon, Function onPressed}) {
  return InkWell(
    onTap: onPressed,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
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

ListTile listTile(
    {String title, String subtitle, String mini, Function onPressed}) {
  return ListTile(
    onTap: onPressed,
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
    subtitle: Text(mini, style: TypographyStyle.mini.merge(TextStyle(color: PaletteColor.green))),
    leading: Padding(
      padding: const EdgeInsets.only(left: 8, top: 4),
      child: Icon(
        Icons.people,
        size: 42,
      ),
    ),
  );
}

Widget listTile2({String subtitle, String amount, String kg, String date, Function onPressed, Function onLongPressed, int index}) {
  return Card(
    child: InkWell(
      onTap: () {},
      onLongPress: onLongPressed,
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(index.toString() + "."),
            SizedBox(
              width: 80,
              child: Text(subtitle),
            ),
            SizedBox(
              width: 80,
              child: Align(alignment: Alignment.bottomLeft, child: Text("Rp " + amount)),
            ),
            SizedBox(
              width: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Last Activity", style: TypographyStyle.mini,),
                  Text(date),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
