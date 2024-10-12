import 'package:get/get.dart';
import 'package:getx_joke_api_http_dio/app/data/joke/joke_service_dio.dart';
import 'package:getx_joke_api_http_dio/app/data/joke/joke_service_getconnect.dart';
import 'package:getx_joke_api_http_dio/app/data/joke/joke_service_http.dart';
import 'package:getx_joke_api_http_dio/app/data/joke/joke_service_interface.dart';

import 'joke_controller.dart';

class JokeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JokeController>(
    //   () => JokeController(jokeService: JokeServiceHttp()),
      //() => JokeController(jokeService: JokeServiceDio()),
     () => JokeController(jokeService: JokeServiceGetConnect()),
     //() => JokeController(),
    );

   // Get.lazyPut<JokeServiceInterface>(() => JokeServiceGetConnect());
  }
}
