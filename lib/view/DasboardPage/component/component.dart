import 'package:flutter/material.dart';
import 'package:simbasa/theme/TypographyStyle.dart';

InkWell card({String title, Icon icon, Function onPressed}) {
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

Widget listTile2({String subtitle, Function onPressed}) {
  return Padding(
    padding: const EdgeInsets.only(left: 4, right: 4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.check_box_outline_blank_outlined),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 4),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media-exp1.licdn.com/dms/image/C5603AQH-xdswau0QEA/profile-displayphoto-shrink_800_800/0/1618682673767?e=1627516800&v=beta&t=VM3Zeyy9KVvWz5CX-v7Knn-S0bOznGulVdbENAhDbH8'),
          ),
        ),
      ],
    ),
  );
}
