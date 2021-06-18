import 'package:flutter/material.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/theme/TypographyStyle.dart';
import 'package:simbasa/view/component/appbar/appbar.dart';
import 'package:flutter/cupertino.dart';
class PenjualanPage extends StatefulWidget {
  @override
  _PenjualanPageState createState() => _PenjualanPageState();
}

class _PenjualanPageState extends State<PenjualanPage> {
  final TextEditingController _namaInput = new TextEditingController();
  final TextEditingController _alamatInput = new TextEditingController();
  final TextEditingController _kelaminInput = new TextEditingController();
  final TextEditingController _tempatlahirInput = new TextEditingController();
  final TextEditingController _statusInput = new TextEditingController();
  final TextEditingController _pekerjaanInput = new TextEditingController();
  final TextEditingController _tlpInput = new TextEditingController();
  final TextEditingController _rekInput = new TextEditingController();
  final TextEditingController _saldoInput = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletteColor.primarybg2,
      appBar: appbar(
        title: "Penjualan",
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
                  children: <Widget>[
                    TextFormField(
                      // validator: (val){
                      //   if (val.length==0){
                      //     return "empty";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      // style: new TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 1.0,
                          ),
                        ),
                        prefixIcon: Padding(
                          padding:  EdgeInsets.all(0.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                        labelText: 'nama',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      controller: _namaInput,
                    ),
                    SizedBox(height: 20,),
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
                          padding:  EdgeInsets.all(0.0),
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
                          padding:  EdgeInsets.all(0.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                        labelText: 'Jenis Kelamin',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      controller: _kelaminInput,
                    ),
                    SizedBox(height: 20,),
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
                          padding:  EdgeInsets.all(0.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                        labelText: 'Tempat lahir',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      controller: _tempatlahirInput,
                    ),
                    SizedBox(height: 20,),
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
                          padding:  EdgeInsets.all(0.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                        labelText: 'Status',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      controller: _statusInput,
                    ),
                    SizedBox(height: 20,),
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
                          padding:  EdgeInsets.all(0.0),
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
                          padding:  EdgeInsets.all(0.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                        labelText: 'Telpon',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      controller: _tlpInput,
                    ),
                    SizedBox(height: 20,),
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
                          padding:  EdgeInsets.all(0.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                        labelText: 'Nomor Rekening',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      controller: _rekInput,
                    ),
                    SizedBox(height: 20,),
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
                          padding:  EdgeInsets.all(0.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                        labelText: 'saldo',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      controller: _saldoInput,
                    ),
                    SizedBox(height: 20,),
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
}
