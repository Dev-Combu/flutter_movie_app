import 'dart:convert';
import 'package:flutter_movie_app/data/dto/movie_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'MovieDto : fromJson test',
    () {
      const sampleJsonString = """
   {
    "adult": false,
      "backdrop_path": "/zfbjgQE1uSd9wiPTX4VzsLi0rGG.jpg",
      "genre_ids": [
        18,
        80
      ],
      "id": 278,
      "original_language": "en",
      "original_title": "The Shawshank Redemption",
      "overview": "Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.",
      "popularity": 169.085,
      "poster_path": "/9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg",
      "release_date": "1994-09-23",
      "title": "The Shawshank Redemption",
      "video": false,
      "vote_average": 8.7,
      "vote_count": 27380
   }
""";

      final movie = MovieDto.fromJson(jsonDecode(sampleJsonString));
      expect(movie.vote_count, '27380');
      expect(movie.poster_path, '/9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg');
    },
  );
}
