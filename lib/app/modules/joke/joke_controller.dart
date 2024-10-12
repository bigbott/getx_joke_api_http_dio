import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_joke_api_http_dio/app/data/joke/joke.dart';
import 'package:getx_joke_api_http_dio/app/data/joke/joke_service_interface.dart';


class JokeController extends GetxController {
  JokeServiceInterface jokeService; //= Get.find<JokeServiceInterface>();
  JokeController({required this.jokeService});
  var joke = ''.obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchJoke();
  }

  Future<void> fetchJoke() async {
    isLoading.value = true;
    JokeModel jokeModel = await jokeService.fetchJoke();
    if (jokeModel.joke != null) {
      joke.value = jokeModel.joke!;
    } else {
      Get.snackbar(
        'Oops',
        jokeModel.error!,
        colorText: Colors.white,
        backgroundColor: Colors.blue.shade800,
        icon: const Icon(Icons.add_alert),
      );
    }
    isLoading.value = false;
  }
}
