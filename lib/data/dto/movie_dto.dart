import 'dart:core';

class MovieDto {
  String adult;
  List<int> genre_ids;
  int id;
  String original_title;
  String overview;
  double popularity;
  String poster_path;
  String release_date;
  String vote_average;
  String vote_count;

  MovieDto({
    required this.adult,
    required this.genre_ids,
    required this.id,
    required this.original_title,
    required this.overview,
    required this.popularity,
    required this.poster_path,
    required this.release_date,
    required this.vote_average,
    required this.vote_count,
  });

  MovieDto.fromJson(Map<String, dynamic> json)
      : this(
          adult: json['adult'],
          genre_ids: json['genre_ids'],
          id: json['id'],
          original_title: json['original_title'],
          overview: json['overview'],
          popularity: json['popularity'],
          poster_path: json['poster_path'],
          release_date: json['release_date'],
          vote_average: json['vote_average'],
          vote_count: json['vote_count'],
        );

  Map<String, dynamic> toJson() => {
        'adult': adult,
        'genre_ids': genre_ids,
        'id': id,
        'original_title': original_title,
        'overview': overview,
        'popularity': popularity,
        'poster_path': poster_path,
        'release_date': release_date,
        'vote_average': vote_average,
        'vote_count': vote_count,
      };
}
