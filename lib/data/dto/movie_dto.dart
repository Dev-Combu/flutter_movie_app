import 'dart:core';

class MovieDto {
  bool adult;
  String backdroppath;
  List<int> genre_ids;
  int id;
  String original_language;
  String original_title;
  String overview;
  double popularity;
  String poster_path;
  String release_date;
  String title;
  bool video;
  String vote_average;
  String vote_count;

  MovieDto({
    required this.adult,
    required this.backdroppath,
    required this.genre_ids,
    required this.id,
    required this.original_language,
    required this.original_title,
    required this.overview,
    required this.popularity,
    required this.poster_path,
    required this.release_date,
    required this.title,
    required this.video,
    required this.vote_average,
    required this.vote_count,
  });

  MovieDto.fromJson(Map<String, dynamic> json)
      : this(
          adult: json['adult'],
          backdroppath: json['backgroppath'] ?? '',
          genre_ids: List<int>.from(json['genre_ids']),
          id: json['id'],
          original_language: json['original_language'],
          original_title: json['original_title'],
          overview: json['overview'],
          popularity: json['popularity'],
          poster_path: json['poster_path'],
          release_date: json['release_date'],
          title: json['title'],
          video: json['video'],
          vote_average: json['vote_average'].toString(),
          vote_count: json['vote_count'].toString(),
        );

  MovieDto copyWith({
    bool? adult,
    String? backdroppath,
    List<int>? genre_ids,
    int? id,
    String? original_language,
    String? original_title,
    String? overview,
    double? popularity,
    String? poster_path,
    String? release_date,
    String? title,
    bool? video,
    String? vote_average,
    String? vote_count,
  }) =>
      MovieDto(
        adult: adult ?? this.adult,
        backdroppath: backdroppath ?? this.backdroppath,
        genre_ids: genre_ids ?? this.genre_ids,
        id: id ?? this.id,
        original_language: original_language ?? this.original_language,
        original_title: original_title ?? this.original_title,
        overview: overview ?? this.overview,
        popularity: popularity ?? this.popularity,
        poster_path: poster_path ?? this.poster_path,
        title: title ?? this.title,
        video: video ?? this.video,
        release_date: release_date ?? this.release_date,
        vote_average: vote_average ?? this.vote_average,
        vote_count: vote_count ?? this.vote_count,
      );

  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'backdroppath': backdroppath,
      'genre_ids': genre_ids,
      'id': id,
      'original_language': original_language,
      'original_title': original_title,
      'overview': overview,
      'popularity': popularity,
      'poster_path': poster_path,
      'title': title,
      'video': video,
      'release_date': release_date,
      'vote_average': vote_average,
      'vote_count': vote_count,
    };
  }
}
