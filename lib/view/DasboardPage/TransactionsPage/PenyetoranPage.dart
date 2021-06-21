import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simbasa/model/JenisSampah.dart';
import 'package:simbasa/provider/SetoranProvider.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/theme/TypographyStyle.dart';
import 'package:simbasa/view/component/appbar/appbar.dart';
import 'package:flutter/cupertino.dart';

class PenyetoranPage extends StatefulWidget {
  int index = 0;

  @override
  _PenyetoranPageState createState() => _PenyetoranPageState();
}

class _PenyetoranPageState extends State<PenyetoranPage> {
  final TextEditingController _nimInput = new TextEditingController();
  List<Widget> _list = [];
  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletteColor.primarybg2,
      appBar: appbar(
        title: "Penyetoran",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: Icon(Icons.check),
              onPressed: add,
            ),
            SizedBox(width: 10,),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  _list.add(_card());
                });
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          child: Column(
            children: [
              ListTile(
                title: Text(('Masukan Username Nasabah')),
              ),
              TextFormField(
                controller: _nimInput,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 1.0,
                    ),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  ),
                  labelText: 'Username',
                  labelStyle: TextStyle(fontSize: 20),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: ListView(
                    children: [
                      _card(),
                    ],
                  )/*.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: _list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _list[index];
                    },
                  ),*/
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List _dropList = <String>[
    'Android',
    'IOS',
    'Flutter',
    'Node',
    'Java',
    'Python',
    'PHP',
  ].map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList();

  Widget _card() {
    return FutureBuilder<JenisSampah>(
      future:
          Provider.of<SetoranProvider>(context, listen: false).getJenisSampah(),
      builder: (BuildContext context, snapshot) {
        return Card(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 12),
                    alignment: Alignment.centerLeft,
                    child: DropdownButton<String>(
                      value: _chosenValue,
                      //elevation: 5,
                      style: TextStyle(color: Colors.black),
                      items: // _dropList,
                      snapshot.data.data.map((e) => DropdownMenuItem<String>(
                        value: e.nmSampah,
                        child: Text(e.nmSampah),
                      )).toList(),
                      hint: Text(
                        "Jenis Sampah",
                      ),
                      onChanged: (String value) {
                        setState(() {
                          _chosenValue = value;
                        });
                      },
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 12),
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            _list.removeLast();
                          });
                        },
                        child: Text("Delete"),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1.0,
                      ),
                    ),
                    labelText: 'Kg',
                    labelStyle: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  add() async {
    bool isSucssed = await SetoranProvider.postSetoran(
        username: _nimInput.text
    );

    if (!isSucssed)
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text("Gagal"),
          );
        },
      );
    else{
      showDialog(
        context: context,
        builder: (context) {
          return GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: AlertDialog(
              content: Text("Sukses"),
            ),
          );
        },
      );
    }
  }

}
