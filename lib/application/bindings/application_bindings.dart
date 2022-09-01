import 'package:app_movies_flutter/application/application.dart';
import 'package:app_movies_flutter/repositorys/repositorys.dart';
import 'package:app_movies_flutter/services/services.dart';
import 'package:get/get.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => RestClient(),
      fenix: true,
    );
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
    Get.lazyPut<MoviesRepository>(
      () => MoviesRepositoryImpl(
        restClient: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<MoviesService>(
      () => MoviesServiceImpl(
        moviesRepository: Get.find(),
      ),
      fenix: true,
    );
  }
}
