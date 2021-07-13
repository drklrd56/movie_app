import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/shared/constants.dart';

class ApiRespository {
  static const String _baseUrl = 'http://www.omdbapi.com/';

  Future<List<Movie>> searchMovieByName({
    required String movieName,
    required int pageNumber,
  }) async {
    final http.Client client = http.Client();
    try {
      final http.Response response = await client.get(
          Uri.parse('$_baseUrl?s=$movieName&page=$pageNumber&apiKey=$apiKey'));
      final List<Movie> movies = [];
      final List data = jsonDecode(response.body)['Search'] as List;
      for (int index = 0; index < data.length; index++) {
        movies.add(Movie.fromMap(data[index] as Map<String, dynamic>));
      }
      return movies;
    } finally {
      client.close();
    }
  }

  Future<List<Movie>> searchMovieByType({
    required String type,
    required int pageNumber,
  }) async {
    final http.Client client = http.Client();
    try {
      final http.Response response = await client.get(
          Uri.parse('$_baseUrl?type=$type&page=$pageNumber&apiKey=$apiKey'));

      final List<Movie> movies = [];
      final dynamic body =
          (jsonDecode(response.body) as Map<String, dynamic>)['Search'];
      // for (int index = 0; index < body.length; index++) {
      //   movies.add(Movie.fromMap(body[index] as Map<String, dynamic>));
      // }
      return movies;
    } finally {
      client.close();
    }
  }

  Future<Movie> getMovieByName({
    required String movieName,
  }) async {
    final http.Client client = http.Client();
    try {
      final http.Response response =
          await client.get(Uri.parse('$_baseUrl?t=$movieName&apiKey=$apiKey'));
      return Movie.fromJson(response.body);
    } finally {
      client.close();
    }
  }

  Future<Movie> getMovieById({
    required String movieId,
  }) async {
    final http.Client client = http.Client();
    try {
      final http.Response response = await client
          .get(Uri.parse('$_baseUrl?i=$movieId&plot=full&apiKey=$apiKey'));

      return Movie.fromJson(response.body);
    } finally {
      client.close();
    }
  }
}
