import 'package:get/get.dart';


import '../modules/joke/joke_binding.dart';
import '../modules/joke/joke_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.JOKE;

  static final routes = [

    GetPage(
      name: _Paths.JOKE,
      page: () => const JokeView(),
      binding: JokeBinding(),
    ),
  ];
}
