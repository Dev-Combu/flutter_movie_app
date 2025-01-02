import 'package:flutter_movie_app/data/data_source/movie_data_source.dart';
import 'package:flutter_movie_app/domain/entity/movie.dart';
import 'package:flutter_movie_app/domain/entity/movie_detail.dart';
import 'package:flutter_movie_app/domain/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  MovieRepositoryImpl(
    this._movieDataSource,
  );
  final MovieDataSource _movieDataSource;

  @override
  Future<List<Movie>?> fetchNowPlayingMovies() async {
    final result = await _movieDataSource.fetchNowPlayingMovies();
    return result
        .map((e) => Movie(
              id: e.id,
              poster_path: e.poster_path,
            ))
        .toList();
  }

  @override
  Future<List<Movie>?> fetchPopularMovies() async {
    final result = await _movieDataSource.fetchPopularMovies();
    return result
        .map((e) => Movie(
              id: e.id,
              poster_path: e.poster_path,
            ))
        .toList();
  }

  @override
  Future<List<Movie>?> fetchTopRatedMovies() async {
    final result = await _movieDataSource.fetchTopRatedMovies();
    return result
        .map((e) => Movie(
              id: e.id,
              poster_path: e.poster_path,
            ))
        .toList();
  }

  @override
  Future<List<Movie>?> fetchUpcomingMovies() async {
    final result = await _movieDataSource.fetchUpcomingMovies();
    return result
        .map((e) => Movie(
              id: e.id,
              poster_path: e.poster_path,
            ))
        .toList();
  }

  @override
  Future<MovieDetail?> fetchMovieDetail(int id) async {
    final e = await _movieDataSource.fetchMovieDetail(id);
    return MovieDetail(
        adult: e.adult,
        id: e.id,
        genres: e.genres,
        productionCompanies: e.productionCompanies,
        productionCountries: e.productionCountries,
        revenue: e.revenue,
        runtime: e.runtime,
        status: e.status,
        tagline: e.tagline,
        overview: e.overview,
        popularity: e.popularity,
        posterPath: e.posterPath,
        releaseDate: e.releaseDate,
        title: e.title,
        voteAverage: e.voteAverage,
        voteCount: e.voteCount,
        );
  }
}
