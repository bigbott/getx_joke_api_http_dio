
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:getx_joke_api_http_dio/app/data/joke/joke.dart';
import 'package:getx_joke_api_http_dio/app/data/joke/joke_service_interface.dart';

class JokeServiceHttp implements JokeServiceInterface{

  String url = 'https://v2.jokeapi.dev/joke/Programming?format=json&type=single';

  @override
  Future<JokeModel> fetchJoke() async {
     var jokeModel = JokeModel();
    try {
     
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var jsonResponse = json.decode(response.body);
        jokeModel.joke = jsonResponse['joke'];
      } else {
        jokeModel.error = 'Error: Failed to load joke';
      }
    } catch (e) {
      jokeModel.error = 'Error: $e';
    } 
    return jokeModel;
  }

}