import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/theme/SpacingDimens.dart';
import 'package:simbasa/theme/TypographyStyle.dart';
import 'package:simbasa/view/SplashScreenPage/SplashscreenPage.dart';

class ConfirmationLogoutDialog extends StatelessWidget {
  final BuildContext homePageCtx, sheetDialogCtx;

  ConfirmationLogoutDialog(
      {@required this.homePageCtx, @required this.sheetDialogCtx});

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
          width: MediaQuery.of(context).size.width,
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
                'Confirmation Logout',
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
                'Are you sure you want to logout now?',
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
                    width: MediaQuery.of(context).size.width / 3.2,
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
                    width: MediaQuery.of(context).size.width / 3.2,
                    child: RaisedButton(
                      color: PaletteColor.primary,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(sheetDialogCtx);
                        logOut(homePageCtx);
                      },
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

  void logOut(context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();

    //Provider.of<UserStatusProvider>(context, listen: false).isAsistant = false;

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => SplashScreenPage(),
      ),
    );
  }
}
