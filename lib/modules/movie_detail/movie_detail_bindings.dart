import 'package:app_movies_flutter/modules/modules.dart';
import 'package:get/get.dart';

class MovieDetailBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      MovieDetailController(
        moviesService: Get.find(),
      ),
    );
  }
}
