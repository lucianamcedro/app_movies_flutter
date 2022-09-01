import 'package:app_movies_flutter/modules/modules.dart';
import 'package:get/get.dart';

class FavoritesBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      FavoritesController(
        authService: Get.find(),
        moviesService: Get.find(),
      ),
    );
  }
}
