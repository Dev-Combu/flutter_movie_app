import 'package:flutter_movie_app/domain/entity/movie.dart';
import 'package:flutter_movie_app/presentation/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePageViewModel extends Notifier<List<Movie>?>{
  @override
  List<Movie>? build() {
    fetchMovies();
    return null;
  }
  
  Future<void> fetchMovies() async {
    state = await ref.read(fetchMoviesUsecaseProvider).execute();
  }
}

final homepageListViewModel = NotifierProvider<HomePageViewModel, List<Movie>?>(
  () => HomePageViewModel());
