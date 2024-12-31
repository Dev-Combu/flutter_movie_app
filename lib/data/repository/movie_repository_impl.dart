import 'package:flutter_movie_app/data/data_source/movie_data_source.dart';
import 'package:flutter_movie_app/domain/entity/movie.dart';
import 'package:flutter_movie_app/domain/repository/movie_repository.dart';
import 'package:http/http.dart';

class MovieRepositoryImpl implements MovieRepository{
  MovieRepositoryImpl(this._movieDataSource, this.category);
  final MovieDataSource _movieDataSource;

  final String category;


  @override
  Future<List<Movie>> fetchMovies(String category) async{
    final result = await _movieDataSource.fetchMovies(category);
    return result
    .map(
      (e) => Movie(
              adult: e.adult,
              genre_ids: e.genre_ids,
              id: e.id,
              original_title: e.original_title,
              overview: e.overview,
              popularity: e.popularity,
              poster_path: e.poster_path,
              release_date: e.release_date,
              vote_average: e.vote_average,
              vote_count: e.vote_count, 
              backdroppath: e.backdroppath, 
              original_language: e.original_language, 
              title: e.title, 
              video: e.video,
            ))
        .toList();
    
  }

  
}