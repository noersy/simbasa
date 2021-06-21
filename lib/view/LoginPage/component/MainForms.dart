import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



import 'package:simbasa/theme/PaletteColor.dart';import 'package:simbasa/theme/TypographyStyle.dart';class MainForms extends StatefulWidget {
  final TextEditingController nimFilter;
  final TextEditingController passwordFilter;

  MainForms({@required this.nimFilter, @required this.passwordFilter});

  @override
  _MainFormsState createState() => _MainFormsState();
}

class _MainFormsState extends State<MainForms> {
  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            child: Text(
              "Username",
              style: TypographyStyle.mini.merge(
                TextStyle(
                  color: PaletteColor.grey60,
                ),
              ),
            ),
          ),
          TextFormField(
            controller: widget.nimFilter,
            cursorColor: PaletteColor.primary,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                left: 16,
                top: 8,
                bottom: 8,
              ),
              hintText: "Enter email",
              hintStyle: TypographyStyle.paragraph.merge(
                TextStyle(
                  color: PaletteColor.grey60,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: PaletteColor.primary,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 36),
            alignment: Alignment.bottomLeft,
            child: Text(
              "Password",
              style: TypographyStyle.mini.merge(
                TextStyle(
                  color: PaletteColor.grey60,
                ),
              ),
            ),
          ),
          TextFormField(
            obscureText: _isHidePassword,
            controller: widget.passwordFilter,
            cursorColor: PaletteColor.primary,
            keyboardType: TextInputType.visiblePassword,
            style: TypographyStyle.button1,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                left: 16,
                top: 12,
                bottom: 8,
              ),
              hintText: "Enter Password",
              hintStyle: TypographyStyle.paragraph.merge(
                TextStyle(
                  color: PaletteColor.grey60,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: PaletteColor.primary,
                ),
              ),
              suffixIcon: GestureDetector(
                onTap: _togglePasswordVisibility,
                child: Icon(
                  _isHidePassword ? Icons.visibility_off : Icons.visibility,
                  color: _isHidePassword
                      ? PaletteColor.grey60
                      : PaletteColor.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
