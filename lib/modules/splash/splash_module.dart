import 'package:app_movies_flutter/application/modules/module.dart';
import 'package:app_movies_flutter/modules/splash/splash_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class SplashModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      page: () => SplashPage(),
    )
  ];
}
