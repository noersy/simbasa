import 'package:flutter/material.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/theme/TypographyStyle.dart';

AppBar appbar({@required String title, List<Widget> action}) {
  return AppBar(
    backgroundColor: PaletteColor.primarybg2,
    iconTheme: IconThemeData(
      color: Colors.black, //change your color here
    ),
    title: Text(
      title,
      style: TypographyStyle.title.merge(
        TextStyle(
          fontSize: 18,
        ),
      ),
    ),
    actions: action,
    elevation: 0,
  );
}
