import 'package:app_movies_flutter/models/models.dart';

abstract class GenresService {
  Future<List<GenreModel>> getGenres();
}
