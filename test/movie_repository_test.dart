import 'package:flutter_movie_app/data/repository/movie_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('movierepository test', () async {
    MovieRepository movieRepository = MovieRepository();
    final movies = await movieRepository.movieList();
    expect(movies.isEmpty, false);
    for(var movie in movies){
      print(movie.toJson());
    }
  });
}
