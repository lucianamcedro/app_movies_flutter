import 'package:app_movies_flutter/models/models.dart';
import 'package:app_movies_flutter/repositorys/repositorys.dart';
import 'package:app_movies_flutter/services/services.dart';

class GenresServiceImpl implements GenresService {
  final GenresRepository _genreRepository;

  GenresServiceImpl({
    required GenresRepository genreRepository,
  }) : _genreRepository = genreRepository;

  @override
  Future<List<GenreModel>> getGenres() => _genreRepository.getGenres();
}
