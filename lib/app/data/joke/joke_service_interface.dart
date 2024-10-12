import 'package:getx_joke_api_http_dio/app/data/joke/joke.dart';

abstract class JokeServiceInterface {
  Future<JokeModel> fetchJoke();
}