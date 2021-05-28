import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:simbasa/theme/PaletteColor.dart';

Widget indicatorLoad() {
  return SpinKitFadingCircle(
    size: 45,
    itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: PaletteColor.primary,
          shape: BoxShape.circle,
        ),
      );
    },
  );
}
