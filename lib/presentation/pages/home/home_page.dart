import 'package:flutter/material.dart';
import 'package:flutter_movie_app/presentation/pages/detail_page.dart';
import 'package:flutter_movie_app/presentation/pages/home/widget/horizonta_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("영화앱"),
      ),
      body: Hero(
        tag: 'main-image',
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const Text("가장 인기있는"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
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
                      'https://picsum.photos/200/300',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              HorizontaList(),
              HorizontaList(),
              HorizontaList(),
              HorizontaList(),
            ],
          ),
        ),
      ),
    );
  }
}