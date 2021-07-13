import 'package:flutter/material.dart';
import 'package:movie_app/blocs/provider.dart';
import 'package:movie_app/blocs/search_bloc.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/widgets/movie_grid_view.dart';

class MoviesList extends StatelessWidget {
  const MoviesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Movie>>(
      stream: SearchBloc().movies,
      builder: (BuildContext context, AsyncSnapshot<List<Movie>> snapShot) {
        if (snapShot.hasData) {
          if (snapShot.data!.isEmpty) {
            return const Center(
              child: Text('No Movies by the search title'),
            );
          }
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemCount: snapShot.data!.length,
            itemBuilder: (context, index) {
              return MovieGridView(movie: snapShot.data!.elementAt(index));
            },
          );
        }

        return const Center(
          child: Text('Search Movies'),
        );
      },
    );
  }
}
