import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class CreatePrivider {
  static Future<bool> postNasabah({
    String username,
    String nama,
    String alamat,
    String phone,
    String job,
    String numberBank,
    int saldo,
    String password,
  }) async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    String token = pref.getString('auth_token');

    try {
      //final response = await http.get(Uri.http('127.0.0.1:8000', '/api/v1/consoles/all'), headers: {});
      final response = await http.post(
          Uri.http('192.168.1.9:8001', '/api/v1/nasabah/create'),
          headers: {
            'Authorization': 'Bearer $token'
          },
          body: {
            "username": "$username",
            "nama_nasabah": "$nama",
            "almt_nasabah": "$alamat",
            "no_hp": "$phone",
            "pekerjaan": "$job",
            "no_rekening": "$numberBank",
            "saldo": "$saldo",
            "password": "$password"
          });

      print("reponse : " + response.body);

      if(response.statusCode != 200) return false;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
