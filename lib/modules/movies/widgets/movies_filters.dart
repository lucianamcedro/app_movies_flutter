import 'package:app_movies_flutter/modules/movies/movies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoviesFilters extends GetView<MoviesController> {
  const MoviesFilters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Obx(() {
          return Row(
            children: controller.genres
                .map(
                  (genre) => FilterTag(
                    model: genre,
                    onPressed: () => controller.filterMoviesByGenre(genre),
                    selected: controller.genreSelected.value?.id == genre.id,
                  ),
                )
                .toList(),
          );
        }),
      ),
    );
  }
}
