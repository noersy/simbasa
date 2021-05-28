

import 'package:flutter/material.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/theme/TypographyStyle.dart';

class ButtonLogin extends StatelessWidget {
  final  onPressedFunction;

  const ButtonLogin(this.onPressedFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: FlatButton(
          color: PaletteColor.primary,
          splashColor: PaletteColor.primary80,
          height: 48,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.0),
            side: BorderSide(
              color: PaletteColor.red,
            ),
          ),
          onPressed: this.onPressedFunction,
          child: Text(
            "Login",
            style: TypographyStyle.button1.merge(
              TextStyle(
                color: PaletteColor.primarybg,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
