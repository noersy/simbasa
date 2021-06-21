


import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;


class AuthLogin{
  static auth({@required String username, @required String password}) async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    try {
      final response = await http.post(Uri.http('192.168.1.9:8001', '/api/v1/auth/login'), body: {
        "email" : username,
        "password" : password
      });

      print("reponse : " + response.body);

      Map<String, dynamic> data = jsonDecode(response.body);

      if(data["access_token"] != null){
        pref.setString("auth_token", data["access_token"]);
        pref.setBool("is_login", true);
        return true;
      }

      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }
}