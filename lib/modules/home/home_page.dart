import 'package:app_movies_flutter/application/ui/filmes_app_icons_icons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(FilmesAppIcons.movie_filter),
          label: 'Filmes',
        ),
        BottomNavigationBarItem(
          icon: Icon(FilmesAppIcons.heart_empty),
          label: 'Favoritos',
        ),
        BottomNavigationBarItem(
          icon: Icon(FilmesAppIcons.logout),
          label: 'Sair',
        ),
      ]),
      body: Container(),
    );
  }
}
