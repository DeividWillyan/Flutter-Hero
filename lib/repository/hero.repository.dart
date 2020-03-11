import 'package:hero/model/hero.model.dart';
import 'package:hero/utils/api.dart';

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class HeroRepository {
  Future<Hero> getHero(int id) async {
    var response = await http.get(ApiUtils.URL + id.toString());
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      return Hero.fromJson(jsonResponse);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
} 
