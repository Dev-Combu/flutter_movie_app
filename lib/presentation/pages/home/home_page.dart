import 'package:flutter/material.dart';
import 'package:flutter_movie_app/presentation/pages/detail/detail_page.dart';
import 'package:flutter_movie_app/presentation/pages/home/home_page_view_model.dart';
import 'package:flutter_movie_app/presentation/pages/home/widget/home_page_label.dart';
import 'package:flutter_movie_app/presentation/pages/home/widget/horizontal_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        children: [
          HomePageLabel(label: '가장 인기있는'),
          Padding(
            padding: const EdgeInsets.all(20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DetailPage();
                    },
                  ),
                );
              },
              child: AspectRatio(
                aspectRatio: 2 / 3,
                child: Image.network(
                  'https://image.tmdb.org/t/p/w400${ref.watch(homepageListViewModel)[MovieCategory.popular]?.first.poster_path}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          HomePageLabel(label: '현재 상영중'),
          HorizontalList(category: MovieCategory.nowPlaying),
          HomePageLabel(label: '인기순'),
          HorizontalList(category: MovieCategory.popular),
          HomePageLabel(label: '평점 높은순'),
          HorizontalList(category: MovieCategory.topRated),
          HomePageLabel(label: '개봉예정'),
          HorizontalList(category: MovieCategory.upcoming),
        ],
      ),
    );
  }
}
