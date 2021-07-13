import 'package:movie_app/models/movie.dart';
import 'package:movie_app/repositories/api_repository.dart';
import 'package:rxdart/rxdart.dart';

class SearchBloc {
  static final BehaviorSubject<List<Movie>> _subject =
      BehaviorSubject<List<Movie>>();
  final ApiRespository respository = ApiRespository();
  Stream<List<Movie>> get movies => _subject.stream;

  Future<void> getMovieByName({required String name, required int page}) async {
    final List<Movie> movie = await respository.searchMovieByName(
      movieName: name,
      pageNumber: page,
    );
    try {
      _subject.sink.add(movie);
    } catch (error) {
      return Future.error(error);
    }
  }
}
