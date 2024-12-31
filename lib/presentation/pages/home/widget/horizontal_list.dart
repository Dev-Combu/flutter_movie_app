import 'package:flutter/material.dart';
import 'package:flutter_movie_app/domain/entity/movie.dart';
import 'package:flutter_movie_app/presentation/pages/detail/detail_page.dart';
import 'package:flutter_movie_app/presentation/pages/home/home_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HorizontalList extends ConsumerStatefulWidget {

  final String category;

  const HorizontalList({super.key, required this.category});

  @override
  ConsumerState<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends ConsumerState<HorizontalList> {

    @override
      void initState() {
    super.initState();
    // 위젯이 생성될 때 fetchMovies 호출
    fetchMovies(widget.category);
  }
  
  void fetchMovies(String text){
    ref.read(homepageListViewModel.notifier).fetchMovies(text);
    print('fetchmovie 호출');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 180,
          child: Consumer(builder: (context, ref, child) {
        final movies = ref.watch(homepageListViewModel);
        if (movies == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
            return ListView.builder(
              itemCount: movies.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final movie = movies[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        width: 120,
                        child: Image.network(
                          'https://image.tmdb.org/t/p/w400${movie.poster_path}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
              );
          }
          ),
        ),
      ],
    );
  }
}
