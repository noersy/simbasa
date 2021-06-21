import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simbasa/model/JenisSampah.dart';
import 'package:http/http.dart' as http;

class SetoranProvider extends ChangeNotifier {
  Future<JenisSampah> getJenisSampah() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    String token = pref.getString('auth_token');

    try {
      //final response = await http.get(Uri.http('127.0.0.1:8000', '/api/v1/consoles/all'), headers: {});
      final response = await http.get(
          Uri.http('192.168.1.9:8001', '/api/v1/jenis'),
          headers: {'Authorization': 'Bearer $token'});

      return jenisSampahFromJson(response.body);
    } catch (e) {
      print(e);
      return null;
    }
  }

  static Future<bool> postSetoran({
    username,
    jumlah,
    sampah_id,
    jenis_id,
    sub_total,
    total,
    kg,
  }) async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    String token = pref.getString('auth_token');

    try {
      //final response = await http.get(Uri.http('127.0.0.1:8000', '/api/v1/consoles/all'), headers: {});
      final response = await http.post(
        Uri.http('192.168.1.9:8001', '/api/v1/setoran/create'),
        headers: {'Authorization': 'Bearer $token'},
        body: {
          "username": "$username",
          "jumlah": "$jumlah",
          "sampah_id": "$sampah_id",
          "jenis_id": "$jenis_id",
          "sub_total": "$sub_total",
          "total": "$total",
          "kg": "$kg",
        },
      );

      print(response.body);

      if (response.statusCode != 200) return false;
      return true;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
