import 'package:flutter_movie_app/domain/entity/movie.dart';
import 'package:flutter_movie_app/presentation/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePageViewModel extends Notifier<List<Movie>?>{
  @override
  List<Movie>? build() {
    fetchPopularMovies();
    return null;
  }
  
  Future<void> fetchNowPlayingMovies() async {
    state = await ref.read(fetchMoviesUsecaseProvider).fetchNowPlayingMoviesExecute();
  }

  Future<void> fetchPopularMovies() async {
    state = await ref.read(fetchMoviesUsecaseProvider).fetchPopularMoviesExecute();
  }

  Future<void> fetchTopRatedMovies() async {
    state = await ref.read(fetchMoviesUsecaseProvider).fetchTopRatedMoviesExecute();
  }

  Future<void> fetchUpcomingMovies() async {
    state = await ref.read(fetchMoviesUsecaseProvider).fetchUpcomingMoviesExecute();
  }
}

final homepageListViewModel = NotifierProvider<HomePageViewModel, List<Movie>?>(
  () => HomePageViewModel());
