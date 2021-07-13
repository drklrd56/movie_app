import 'dart:convert';

import 'package:flutter/foundation.dart';

class Movie {
  String imdbID;
  String title;
  String year;
  String rated;
  String released;
  String runTime;
  String genre;
  String director;
  String writer;
  String plot;
  String actors;
  String language;
  String country;
  String awards;
  String poster;
  String imdbRating;
  String imdbVotes;
  String type;
  String totalSeasons;
  List<Map<String, String>> ratings;
  Movie({
    required this.imdbID,
    required this.title,
    required this.year,
    required this.rated,
    required this.released,
    required this.runTime,
    required this.genre,
    required this.director,
    required this.writer,
    required this.plot,
    required this.actors,
    required this.language,
    required this.country,
    required this.awards,
    required this.poster,
    required this.imdbRating,
    required this.imdbVotes,
    required this.type,
    required this.totalSeasons,
    required this.ratings,
  });

  Movie copyWith({
    String? imdbID,
    String? title,
    String? year,
    String? rated,
    String? released,
    String? runTime,
    String? genre,
    String? director,
    String? writer,
    String? plot,
    String? actors,
    String? language,
    String? country,
    String? awards,
    String? poster,
    String? imdbRating,
    String? imdbVotes,
    String? type,
    String? totalSeasons,
    List<Map<String, String>>? ratings,
  }) {
    return Movie(
      imdbID: imdbID ?? this.imdbID,
      title: title ?? this.title,
      year: year ?? this.year,
      rated: rated ?? this.rated,
      released: released ?? this.released,
      runTime: runTime ?? this.runTime,
      genre: genre ?? this.genre,
      director: director ?? this.director,
      writer: writer ?? this.writer,
      plot: plot ?? this.plot,
      actors: actors ?? this.actors,
      language: language ?? this.language,
      country: country ?? this.country,
      awards: awards ?? this.awards,
      poster: poster ?? this.poster,
      imdbRating: imdbRating ?? this.imdbRating,
      imdbVotes: imdbVotes ?? this.imdbVotes,
      type: type ?? this.type,
      totalSeasons: totalSeasons ?? this.totalSeasons,
      ratings: ratings ?? this.ratings,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imdbID': imdbID,
      'title': title,
      'year': year,
      'rated': rated,
      'released': released,
      'runTime': runTime,
      'genre': genre,
      'director': director,
      'writer': writer,
      'plot': plot,
      'actors': actors,
      'language': language,
      'country': country,
      'awards': awards,
      'poster': poster,
      'imdbRating': imdbRating,
      'imdbVotes': imdbVotes,
      'type': type,
      'totalSeasons': totalSeasons,
      'ratings': ratings,
    };
  }

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      imdbID: map['imdbID'] as String,
      title: map['Title'] as String,
      year: map.containsKey('Year') == false ? '' : map['Year'] as String,
      rated: map.containsKey('Rated') == false ? '' : map['Rated'] as String,
      released:
          map.containsKey('Released') == false ? '' : map['Released'] as String,
      runTime:
          map.containsKey('RunTime') == false ? '' : map['RunTime'] as String,
      genre: map.containsKey('Genre') == false ? '' : map['Genre'] as String,
      director:
          map.containsKey('Director') == false ? '' : map['Director'] as String,
      writer: map.containsKey('Writer') == false ? '' : map['Writer'] as String,
      plot: map.containsKey('Plot') == false ? '' : map['Plot'] as String,
      actors: map.containsKey('Actors') == false ? '' : map['Actors'] as String,
      language:
          map.containsKey('Language') == false ? '' : map['Language'] as String,
      country:
          map.containsKey('Country') == false ? '' : map['Country'] as String,
      awards: map.containsKey('Awards') == false ? '' : map['Awards'] as String,
      poster: map['Poster'] as String,
      imdbRating: map.containsKey('imdbRating') == false
          ? ''
          : map['imdbRating'] as String,
      imdbVotes: map.containsKey('imdbVotes') == false
          ? ''
          : map['imdbVotes'] as String,
      type: map.containsKey('Type') == false ? '' : map['Type'] as String,
      totalSeasons: map.containsKey('totalSeason') == false
          ? ''
          : map['totalSeasons'] as String,
      ratings: [],
      //ratings: List<Map<String, String>>.from(map['ratings'] as List<Map<String,String>>).map((x) => x)),
    );
  }

  String toJson() => json.encode(toMap());

  factory Movie.fromJson(String source) =>
      Movie.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Movie(imdbID: $imdbID, title: $title, year: $year, rated: $rated, released: $released, runTime: $runTime, genre: $genre, director: $director, writer: $writer, plot: $plot, actors: $actors, language: $language, country: $country, awards: $awards, poster: $poster, imdbRating: $imdbRating, imdbVotes: $imdbVotes, type: $type, totalSeasons: $totalSeasons, ratings: $ratings)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Movie &&
        other.imdbID == imdbID &&
        other.title == title &&
        other.year == year &&
        other.rated == rated &&
        other.released == released &&
        other.runTime == runTime &&
        other.genre == genre &&
        other.director == director &&
        other.writer == writer &&
        other.plot == plot &&
        other.actors == actors &&
        other.language == language &&
        other.country == country &&
        other.awards == awards &&
        other.poster == poster &&
        other.imdbRating == imdbRating &&
        other.imdbVotes == imdbVotes &&
        other.type == type &&
        other.totalSeasons == totalSeasons &&
        listEquals(other.ratings, ratings);
  }

  @override
  int get hashCode {
    return imdbID.hashCode ^
        title.hashCode ^
        year.hashCode ^
        rated.hashCode ^
        released.hashCode ^
        runTime.hashCode ^
        genre.hashCode ^
        director.hashCode ^
        writer.hashCode ^
        plot.hashCode ^
        actors.hashCode ^
        language.hashCode ^
        country.hashCode ^
        awards.hashCode ^
        poster.hashCode ^
        imdbRating.hashCode ^
        imdbVotes.hashCode ^
        type.hashCode ^
        totalSeasons.hashCode ^
        ratings.hashCode;
  }
}
