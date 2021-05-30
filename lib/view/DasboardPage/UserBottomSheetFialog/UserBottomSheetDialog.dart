import 'package:flutter/material.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/theme/SpacingDimens.dart';
import 'package:simbasa/theme/TypographyStyle.dart';
import 'package:simbasa/view/DasboardPage/UserBottomSheetFialog/component/ConfirmationLogoutDialog.dart';
import 'package:simbasa/view/ProfilePage/ProfilePage.dart';

class UserBottomSheetDialog extends StatelessWidget {
  final BuildContext ctx;

  UserBottomSheetDialog({@required this.ctx});

  @override
  Widget build(BuildContext context) {

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Container(
          height: 280.0,
          padding: EdgeInsets.symmetric(
            horizontal: SpacingDimens.spacing24,
            vertical: SpacingDimens.spacing16,
          ),
          color: PaletteColor.primarybg,
          child: Column(
            children: [
              Container(
                height: 5,
                width: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: PaletteColor.grey60,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: SpacingDimens.spacing16,
                  bottom: SpacingDimens.spacing8,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 65.0,
                      width: 65.0,
                      child: CircleAvatar(
                        backgroundColor: PaletteColor.grey40,
                        backgroundImage: NetworkImage(
                            'https://media-exp1.licdn.com/dms/image/C5603AQH-xdswau0QEA/profile-displayphoto-shrink_800_800/0/1618682673767?e=1627516800&v=beta&t=VM3Zeyy9KVvWz5CX-v7Knn-S0bOznGulVdbENAhDbH8'),
                        ),
                      ),
                    Container(
                      margin: EdgeInsets.only(
                        left: SpacingDimens.spacing24,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Nur Syahfei",
                              style: TypographyStyle.subtitle2,
                            ),
                          ),
                          SizedBox(
                            height: SpacingDimens.spacing8,
                          ),
                          Text(
                            "test",
                            style: TypographyStyle.subtitle2.merge(
                              TextStyle(
                                color: PaletteColor.grey80,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: false,
                child: Container(
                  padding: EdgeInsets.only(
                    top: SpacingDimens.spacing16,
                    bottom: SpacingDimens.spacing16,
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: RaisedButton(
                      elevation: 0,
                      color: PaletteColor.primary,
                      onPressed: () {

                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: PaletteColor.primarybg2,
                margin: EdgeInsets.only(
                  top: SpacingDimens.spacing8,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(ctx).push(
                    MaterialPageRoute(
                        builder: (ctx) => ProfilePage(),
                    ),
                  );
                },
                child: actionBottomSheet(
                  icon: Icons.person,
                  title: "My Profile",
                ),
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: PaletteColor.primarybg2,
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return ConfirmationLogoutDialog(
                        homePageCtx: ctx,
                        sheetDialogCtx: context,
                      );
                    },
                  );
                },
                child: actionBottomSheet(
                  icon: Icons.logout,
                  title: "Logout",
                ),
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: PaletteColor.primarybg2,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget actionBottomSheet({@required IconData icon, @required String title}) {
    return Container(
      color: PaletteColor.primarybg,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: SpacingDimens.spacing16,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 25,
              color: PaletteColor.primary,
            ),
            SizedBox(
              width: SpacingDimens.spacing24,
            ),
            Text(
              title,
              style: TypographyStyle.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}
