import 'dart:convert';
import 'package:flutter_movie_app/data/data_source/movie_data_source.dart';
import 'package:flutter_movie_app/data/dto/movie_dto.dart';
import 'package:http/http.dart';

class MovieAssetDataSourceImpl implements MovieDataSource{

  @override
  Future<List<MovieDto>> fetchMovies() async {
     final client = Client();
    final response = await client.get(
        Uri.parse(
            'https://api.themoviedb.org/3/discover/movie?api_key=aeef2b4c8153f329c7733b4fe08dbe38'),
        headers: {
          'Authorization': 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhZWVmMmI0YzgxNTNmMzI5Yzc3MzNiNGZlMDhkYmUzOCIsIm5iZiI6MTczNTAzMzI4OC44MjgsInN1YiI6IjY3NmE4MWM4NDE2YTM0NDNiNWE5ZjI0MiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.HSzwXHJUZJr6kChfsngXPoMJTbCdTjNVLr-pg9YWV5E',
          'Accept': 'application/json',
        });

    if (response.statusCode == 200) {
      Map<String, dynamic> map = jsonDecode(response.body);
      final results = List.from(map['results']);
      final iterable = results.map((e) {
        return MovieDto.fromJson(e);
      });

      final list = iterable.toList();
      return list;
    }
    print('Error: ${response.statusCode}');
    return [];
  }
}