import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movie_rating/home/model/Homemodel.dart';

class Api_http {
  Future<dynamic> movirateing(String name) async {
    String? apilink = "https://imdb8.p.rapidapi.com/auto-complete?q=$name";
    var response = await http.get(Uri.parse(apilink), headers: {
      "X-RapidAPI-Key": "c166082712mshb7213b2ae9b62ddp1eb544jsn26839b0f4ec8",
      "X-RapidAPI-Host": "imdb8.p.rapidapi.com"
    });

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      return Homemodel.fromJson(json);
    }
    return null;
  }
}
