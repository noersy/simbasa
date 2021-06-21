import 'package:flutter/material.dart';
import 'package:simbasa/theme/PaletteColor.dart';
import 'package:simbasa/theme/TypographyStyle.dart';
import 'package:simbasa/view/component/appbar/appbar.dart';
import 'package:flutter/cupertino.dart';
class PenjualanPage extends StatefulWidget {
  @override
  _PenjualanPageState createState() => _PenjualanPageState();
}
enum SingingCharacter { organik, anorganik }
enum SingingCharacter2 { confirm }

class _PenjualanPageState extends State<PenjualanPage> {
  SingingCharacter _character = SingingCharacter.organik;
  SingingCharacter2 _character2 = SingingCharacter2.confirm;
  final TextEditingController _jumlahInput = new TextEditingController();
  final TextEditingController _totalInput = new TextEditingController();
  // final TextEditingController _kelaminInput = new TextEditingController();
  // final TextEditingController _tempatlahirInput = new TextEditingController();
  // final TextEditingController _statusInput = new TextEditingController();
  // final TextEditingController _pekerjaanInput = new TextEditingController();
  // final TextEditingController _tlpInput = new TextEditingController();
  // final TextEditingController _rekInput = new TextEditingController();
  // final TextEditingController _saldoInput = new TextEditingController();
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
                    ListTile(
                      title: Text(('Jumlah jual')),
                    ),
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
                        labelText: 'jumlah jual',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      controller: _jumlahInput,
                    ),
                    SizedBox(height: 20,),
                    ListTile(
                      title: Text(('total jual')),
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
                          padding:  EdgeInsets.all(0.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                        labelText: 'total jual',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                      controller: _totalInput,
                    ),
                    SizedBox(height: 20,),
                    ListTile(title: Text('Jenis Sampah'),),
                    ListTile(
                      title: const Text('organik'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.organik,
                        groupValue: _character,
                        onChanged: (SingingCharacter value){
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('an organik'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.anorganik,
                        groupValue: _character,
                        onChanged: (SingingCharacter value){
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(title: Text('jual Sampah'),),
                    ListTile(
                      title: const Text('confirm'),
                      leading: Radio<SingingCharacter2>(
                        value: SingingCharacter2.confirm,
                        groupValue: _character2,
                        onChanged: (SingingCharacter2 value2){
                          setState(() {
                            _character2 = value2;
                          });
                        },
                      ),
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
                      "jual sekarang",
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
