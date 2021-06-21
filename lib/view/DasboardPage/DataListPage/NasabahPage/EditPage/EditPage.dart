import 'package:flutter/material.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/theme/TypographyStyle.dart';
import 'package:simbasa/view/DasboardPage/DataListPage/component/ConfirmationDeleteDialog.dart';
import 'package:simbasa/view/component/appbar/appbar.dart';

class EditPage extends StatelessWidget {
  final BuildContext ctx;

  const EditPage({@required this.ctx});

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Scaffold(
          backgroundColor: PaletteColor.primarybg2,
          appBar: appbar(
            title: "Edit Nasabah",
            action: [
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (ctx) =>
                          ConfirmationDeleteDialog(homePageCtx: ctx),
                    );
                  },
                  child: Icon(
                    Icons.delete_outline,
                    color: PaletteColor.grey80,
                  ),
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      children: [
                        _listTile(
                          title: "Name",
                          hitText: "Your name",
                        ),
                        _listTile(
                          title: "Address",
                          hitText: "Enter address",
                        ),
                        _listTile(
                          title: "Jenis Kelamin",
                          hitText: "Enter jenis kelamin",
                        ),
                        _listTile(
                          title: "Tempat Lahir",
                          hitText: "Enter tempat lahir",
                        ),
                        _listTile(
                          title: "Tanggal Lahir",
                          hitText: "Enter tanggal lahir",
                        ),
                        _listTile(
                          title: "Status",
                          hitText: "Enter status hubungan",
                        ),
                        _listTile(
                          title: "Pekerjaan",
                          hitText: "Enter pekerjaan",
                        ),
                        _listTile(
                          title: "Tlp",
                          hitText: "Enter number",
                        ),
                        _listTile(
                          title: "No Rekening",
                          hitText: "Enter no rekening",
                        ),
                        _listTile(
                          title: "Saldo",
                          hitText: "Enter saldo awal",
                        ),
                        _listTile(
                          title: "Pekerjaan",
                          hitText: "Enter pekerjaan",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(12),
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: FlatButton(
                        height: 48,
                        color: PaletteColor.primary,
                        splashColor: PaletteColor.primary80,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.0),
                          side: BorderSide(
                            color: PaletteColor.red,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Save",
                          style: TypographyStyle.button1.merge(
                            TextStyle(
                              color: PaletteColor.primarybg,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget _listTile({String title, String hitText}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListTile(
      title: Text(
        title,
        style: TypographyStyle.caption1.merge(
          TextStyle(
            fontSize: 14,
            color: PaletteColor.grey80,
          ),
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: TextFormField(
          keyboardType: TextInputType.url,
          style: TypographyStyle.button1,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hitText,
            contentPadding: EdgeInsets.only(
              left: 16,
              top: 12,
              bottom: 8,
            ),
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
      ),
    ),
  );
}
