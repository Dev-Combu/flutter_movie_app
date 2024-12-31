import 'package:flutter_movie_app/domain/entity/movie.dart';
import 'package:flutter_movie_app/presentation/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePageViewModel extends Notifier<List<Movie>?>{
  @override
  List<Movie>? build() {
    return null;
  }
  
  Future<void> fetchMovies(String category) async {
    state = await ref.read(fetchMoviesUsecaseProvider(category)).execute(category);
  }
}

final homepageListViewModel = NotifierProvider<HomePageViewModel, List<Movie>?>(
  () => HomePageViewModel());
