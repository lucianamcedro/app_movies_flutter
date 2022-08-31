import 'package:app_movies_flutter/modules/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBindings extends Bindings {
  @override
  dependencies() {
    Get.lazyPut(() => LoginController(loginService: Get.find()));
  }
}
