import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simbasa/provider/CreateProvider.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/theme/TypographyStyle.dart';
import 'package:simbasa/view/component/appbar/appbar.dart';

class AddNasabahPage extends StatefulWidget {
  @override
  _AddNasabahPageState createState() => _AddNasabahPageState();
}

class _AddNasabahPageState extends State<AddNasabahPage> {
  final TextEditingController _usernameInput = new TextEditingController();
  final TextEditingController _namaInput = new TextEditingController();
  final TextEditingController _alamatInput = new TextEditingController();
  final TextEditingController _pekerjaanInput = new TextEditingController();
  final TextEditingController _tlpInput = new TextEditingController();
  final TextEditingController _rekInput = new TextEditingController();
  final TextEditingController _saldoInput = new TextEditingController();
  final TextEditingController _passInput = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletteColor.primarybg2,
      appBar: appbar(
        title: "Add Nasabah",
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    ListTile(
                      title: Text(('Masukan Username')),
                    ),
                    TextFormField(
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
                      controller: _usernameInput,
                    ),
                    ListTile(
                      title: Text(('Masukan Nama Nasabah')),
                    ),
                    TextFormField(
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
                        labelText: 'Nama',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      controller: _namaInput,
                    ),
                    SizedBox(height: 20,),
                    ListTile(
                      title: Text(('Masukan Nama Alamat')),
                    ),
                    TextFormField(
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
                        labelText: 'Alamat',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      controller: _alamatInput,
                    ),
                    SizedBox(height: 20,),
                    ListTile(
                      title: Text(('Masukan Pekerjaan Nasabah')),
                    ),
                    TextFormField(
                      // style: new TextStyle(color: Colors.white),
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
                        labelText: 'Pekerjaan',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      controller: _pekerjaanInput,
                    ),
                    SizedBox(height: 20,),
                    ListTile(
                      title: Text(('Masukan Nomor Telpon Nasabah')),
                    ),
                    TextFormField(
                      // style: new TextStyle(color: Colors.white),
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
                        labelText: 'Telpon',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      keyboardType: TextInputType.number,
                      controller: _tlpInput,
                    ),
                    SizedBox(height: 20,),
                    ListTile(
                      title: Text(('Masukan Nomor Rekening Nasabah')),
                    ),
                    TextFormField(
                      // style: new TextStyle(color: Colors.white),
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
                        labelText: 'Nomor Rekening',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      controller: _rekInput,
                    ),
                    SizedBox(height: 20,),
                    ListTile(
                      title: Text(('Jumlah Saldo Nasabah')),
                    ),
                    TextFormField(
                      // style: new TextStyle(color: Colors.white),
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
                        labelText: 'saldo',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      controller: _saldoInput,
                    ),
                    SizedBox(height: 20,),
                    ListTile(
                      title: Text(('Jumlah Saldo Password')),
                    ),
                    TextFormField(
                      // style: new TextStyle(color: Colors.white),
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
                        labelText: 'Password',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      controller: _passInput,
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(12),
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
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
                    onPressed: add,
                    child: Text(
                      "Add",
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
  }


  add() async {
    bool isSucssed = await CreatePrivider.postNasabah(
      username : _usernameInput.text,
      nama : _namaInput.text,
      alamat : _alamatInput.text,
      phone : _tlpInput.text,
      job : _pekerjaanInput.text,
      numberBank : _rekInput.text,
      saldo : int.parse(_saldoInput.text.toString()),
      password : _passInput.text,
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
