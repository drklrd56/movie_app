import 'package:movie_app/models/movie.dart';
import 'package:movie_app/repositories/api_repository.dart';
import 'package:rxdart/rxdart.dart';

class MovieBloc {
  static final BehaviorSubject<Movie> _subject = BehaviorSubject<Movie>();
  final ApiRespository respository = ApiRespository();
  Stream<Movie> get movie => _subject.stream;

  Future<void> getMovieByName({required String name}) async {
    final Movie movie = await respository.getMovieByName(movieName: name);
    try {
      _subject.sink.add(movie);
    } catch (error) {
      return Future.error(error);
    }
  }

  Future<void> getMovieById({required String id}) async {
    final Movie movie = await respository.getMovieById(movieId: id);
    try {
      _subject.sink.add(movie);
    } catch (error) {
      return Future.error(error);
    }
  }
}
