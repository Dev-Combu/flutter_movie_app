import 'dart:convert';

import 'package:flutter_movie_app/data/dto/movie_dto.dart';
import 'package:http/http.dart';

class MovieRepository {
  Future<List<MovieDto>> movieList() async {
    final client = Client();
    final response = await client.get(
        Uri.parse(
            'https://api.themoviedb.org/3/discover/movie?api_key='),
        headers: {
          'Authorization': 'aeef2b4c8153f329c7733b4fe08dbe38',
          'accept': 'application/json',
          'host': 'api.themoviedb.org'
        });

    if (response.statusCode == 200) {
      Map<String, dynamic> map = jsonDecode(response.body);
      final items = List.from(map['results']);
      final iterable = items.map((e) {
        return MovieDto.fromJson(e);
      });

      final list = iterable.toList();
      return list;
    }

    return [];
  }
}
