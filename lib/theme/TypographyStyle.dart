import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simbasa/theme/PaletteColor.dart';

class TypographyStyle {
  /* HEADING */
  static const TextStyle heading1 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: PaletteColor.text,
    fontFamily: 'Mulish',
  );

  static const TextStyle title = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: PaletteColor.text,
    fontFamily: 'Mulish',
  );

  static const TextStyle subtitle1 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: PaletteColor.text,
    fontFamily: 'Mulish',
  );

  static const TextStyle subtitle2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: PaletteColor.text,
    fontFamily: 'Mulish',
  );

  /* BODY */
  static const TextStyle paragraph = TextStyle(
    fontSize: 14,
    color: PaletteColor.text,
    fontFamily: 'Mulish',
  );

  static const TextStyle caption1 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: PaletteColor.grey,
    fontFamily: 'Mulish',
  );

  static const TextStyle caption2 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: PaletteColor.text,
    fontFamily: 'Mulish',
  );

  static const TextStyle mini = TextStyle(
    fontSize: 10,
    color: PaletteColor.text,
    fontFamily: 'Mulish',
  );

  /* BUTTON */
  static const TextStyle button1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: PaletteColor.text,
    fontFamily: 'Mulish',
  );

  static const TextStyle button2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: PaletteColor.text,
    fontFamily: 'Mulish',
  );
}
