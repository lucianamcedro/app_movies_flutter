import 'package:app_movies_flutter/models/models.dart';
import 'package:flutter/material.dart';

class MovieDetailContentCredits extends StatelessWidget {
  const MovieDetailContentCredits({
    Key? key,
    required this.movie,
  }) : super(key: key);
  final MovieDetailModel? movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 50),
        child: Text(
          movie?.overview ?? '',
          style: const TextStyle(
            fontSize: 14,
            height: 1.3,
          ),
        ),
      ),
    );
  }
}
