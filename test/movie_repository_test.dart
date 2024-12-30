
import 'package:flutter_movie_app/data/data_source/movie_asset_data_source_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('movierepository test', () async {
    MovieAssetDataSourceImpl movieRepository = MovieAssetDataSourceImpl();
    final movies = await movieRepository.fetchMovies();
    expect(movies.isEmpty, false);
    for(var movie in movies){
      print(movie.toJson());
    }
  });
}
