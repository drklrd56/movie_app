import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

class MovieGridView extends StatelessWidget {
  final Movie movie;
  const MovieGridView({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Image.network(
            movie.poster,
            fit: BoxFit.contain,
            height: 100,
            width: 70,
          ),
          Text(movie.title),
          Text(movie.imdbRating),
        ],
      ),
    );
  }
}
