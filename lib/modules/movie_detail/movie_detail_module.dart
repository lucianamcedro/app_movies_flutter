import 'package:app_movies_flutter/application/application.dart';
import 'package:app_movies_flutter/modules/modules.dart';
import 'package:get/get.dart';

class MovieDetailModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/movie/detail',
      page: () => const MovieDetailPage(),
      binding: MovieDetailBindings(),
    ),
  ];
}
