import 'package:flutter/material.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/theme/TypographyStyle.dart';
import 'package:simbasa/view/component/appbar/appbar.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletteColor.primarybg2,
      appBar: appbar(
        title: "Profile",
      ),
      body: Column(
        children: [
          Container(
            height: 230,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: PaletteColor.primarybg2,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    spreadRadius: 0, color: PaletteColor.grey60, blurRadius: 1),
              ],
            ),
            child: Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.height / 13,
                    backgroundImage: NetworkImage(
                        'https://media-exp1.licdn.com/dms/image/C5603AQH-xdswau0QEA/profile-displayphoto-shrink_800_800/0/1618682673767?e=1627516800&v=beta&t=VM3Zeyy9KVvWz5CX-v7Knn-S0bOznGulVdbENAhDbH8'),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 2, top: 8),
                    child: Text(
                      "Nur Syahfei",
                      style: TypographyStyle.subtitle1,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Card(
                      color: Colors.deepOrangeAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Text(
                          "Pemilik",
                          style: TypographyStyle.caption1.merge(TextStyle(
                            fontSize: 12,
                            color: PaletteColor.grey,
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox(height: 8,),
                _listTile(title: 'Name', subtitle: "Nur Syahfei"),
                Divider(),
                _listTile(title: 'Address', subtitle: "Nur Syahfei"),
                Divider(),
                _listTile(title: 'Headphone', subtitle: "Nur Syahfei"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _listTile({@required String title, @required subtitle}){
    return Padding(
      padding: const EdgeInsets.all(2),
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(title, style: TypographyStyle.caption1.merge(TextStyle(color: PaletteColor.grey60)),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(subtitle),
            ),
          ],
        ),
      ),
    );
  }
}
