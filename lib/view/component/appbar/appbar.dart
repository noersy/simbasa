
import 'package:flutter/material.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/theme/TypographyStyle.dart';

AppBar appbar({@required String title}){
  return AppBar(
    backgroundColor: PaletteColor.primarybg2,
    title: Text(title, style: TypographyStyle.title.merge(TextStyle(
      fontSize: 18,
    )),),
    elevation: 1,
  );
}