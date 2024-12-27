class Movie {
  bool adult;
  List<int> genre_ids;
  int id;
  String original_title;
  String overview;
  double popularity;
  String poster_path;
  String release_date;
  String vote_average;
  String vote_count;

  Movie({
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
}
