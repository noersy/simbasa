import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/theme/SpacingDimens.dart';
import 'package:simbasa/theme/TypographyStyle.dart';
import 'package:simbasa/view/SplashScreenPage/SplashscreenPage.dart';

class ConfirmationDeleteDialog extends StatelessWidget {
  final BuildContext homePageCtx;

  ConfirmationDeleteDialog(
      {@required this.homePageCtx});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          8.0,
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          padding: EdgeInsets.all(SpacingDimens.spacing24),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: PaletteColor.primarybg,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Confirmation Delete',
                style: TypographyStyle.subtitle1.merge(
                  TextStyle(
                    color: PaletteColor.black,
                  ),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Text(
                'Are you sure you want to delete?',
                style: TypographyStyle.paragraph.merge(
                  TextStyle(
                    color: PaletteColor.grey60,
                  ),
                ),
              ),
              SizedBox(
                height: 38,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 3.2,
                    child: RaisedButton(
                      color: PaletteColor.primarybg,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        side: BorderSide(color: PaletteColor.primary),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'No',
                        style: TypographyStyle.button2.merge(
                          TextStyle(
                            color: PaletteColor.primary,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 3.2,
                    child: RaisedButton(
                      color: PaletteColor.primary,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Yes',
                        style: TypographyStyle.button2.merge(
                          TextStyle(
                            color: PaletteColor.primarybg,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}