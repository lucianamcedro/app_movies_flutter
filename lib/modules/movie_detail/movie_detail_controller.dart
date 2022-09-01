import 'package:app_movies_flutter/application/application.dart';
import 'package:app_movies_flutter/models/models.dart';
import 'package:app_movies_flutter/services/services.dart';
import 'package:get/get.dart';

class MovieDetailController extends GetxController
    with LoaderMixin, MessagesMixin {
  MovieDetailController({
    required MoviesService moviesService,
  }) : _moviesService = moviesService;

  final MoviesService _moviesService;
  var loading = false.obs;
  var message = Rxn<MessageModel>();
  var movie = Rxn<MovieDetailModel>();

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messagesListener(message);
  }

  @override
  void onReady() async {
    super.onReady();
    try {
      final movieId = Get.arguments;
      loading(true);
      final movieDetailData = await _moviesService.getDetail(movieId);
      movie.value = movieDetailData;
      loading(false);
    } catch (e, s) {
      print(e);
      print(s);
      loading(false);
      MessageModel.error(
        title: 'Erro',
        message: 'Erro ao buscar detalhe do filme',
      );
    }
  }
}
