import 'package:flutter/material.dart';
import 'package:flutter_movie_app/presentation/pages/detail_page.dart';

class HorizontaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("현재 상영중"),
        SizedBox(
          height: 180,
          child: ListView.builder(
            itemCount: 20,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    width: 100,
                    child: Image.network(
                        'https://picsum.photos/200/300',
                        fit: BoxFit.cover,
                      ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
