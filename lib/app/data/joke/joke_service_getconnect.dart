

import 'package:get/get.dart';
import 'package:getx_joke_api_http_dio/app/data/joke/joke.dart';
import 'package:getx_joke_api_http_dio/app/data/joke/joke_service_interface.dart';

class JokeServiceGetConnect extends GetConnect implements JokeServiceInterface {

    final String url = 'https://v2.jokeapi.dev/joke/Programming?format=json&type=single';

  @override
  Future<JokeModel> fetchJoke() async {
    try {
      final response = await get(url);
      
      if (response.status.hasError) {
        return JokeModel(error: 'Error: ${response.statusText}');
      } else {
        return JokeModel(joke: response.body['joke']);
      }
    } catch (e) {
      return JokeModel(error: 'Error: $e');
    }
  }
}