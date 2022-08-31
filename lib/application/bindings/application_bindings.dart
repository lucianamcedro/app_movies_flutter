import 'package:app_movies_flutter/application/auth/auth_service.dart';
import 'package:app_movies_flutter/repositorys/login/login_repository.dart';
import 'package:app_movies_flutter/repositorys/login/login_repository_impl.dart';
import 'package:app_movies_flutter/repositorys/services/login/login_service.dart';
import 'package:app_movies_flutter/repositorys/services/login/login_service_impl.dart';
import 'package:get/get.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginRepository>(
      () => LoginRepositoryImpl(),
      fenix: true,
    );
    Get.lazyPut<LoginService>(
      () => LoginServiceImpl(
        loginRepository: Get.find(),
      ),
      fenix: true,
    );
    Get.put(
      AuthService(),
    ).init();
  }
}
