

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:simbasa/model/HomaPageDataModel.dart';

class HomePageProvider extends ChangeNotifier{


  Future<HomePageModel> getHomePageData() async{
    SharedPreferences pref = await SharedPreferences.getInstance();

    String token = pref.getString('auth_token');

    try {
      //final response = await http.get(Uri.http('127.0.0.1:8000', '/api/v1/consoles/all'), headers: {});
      final response = await http.get(Uri.http('192.168.1.9:8001', '/api/v1/homepage'), headers : {
        'Authorization': 'Bearer $token'
      });

      return homePageModelFromJson(response.body);
    } catch (e) {
      print(e);
      return null;
    }

  }
}