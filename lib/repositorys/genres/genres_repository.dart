import 'package:app_movies_flutter/models/models.dart';

abstract class GenresRepository {
  Future<List<GenreModel>> getGenres();
}
